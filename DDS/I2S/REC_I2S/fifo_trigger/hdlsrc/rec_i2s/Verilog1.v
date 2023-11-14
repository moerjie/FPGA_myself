module rec_port (
    lrclk,
    sclk,
    sdata,
    rst,
    sout_l_o,
    sout_r_o
);
  input rst, lrclk, sclk, sdata;

  output [31:0] sout_l_o;
  output [31:0] sout_r_o;

  reg [31:0] sout_l, sout_r;
  reg [31:0] sout_l_r, sout_r_r;
  reg sclk_r, lrclk_r;


  always @(posedge sclk or posedge rst) begin
    if (rst) begin
      sclk_r  <= 1'b0;
      lrclk_r <= 1'b0;
    end else begin
      sclk_r  <= sclk;
      lrclk_r <= lrclk;
    end
  end

  wire lrclk_h2l, lrclk_l2h, sclk_h2l, sclk_l2h;
  assign lrclk_h2l = (lrclk_r == 1'b1) && (lrclk == 1'b0);
  assign lrclk_l2h = (lrclk_r == 1'b0) && (lrclk == 1'b1);
  assign sclk_h2l  = (sclk_r == 1'b1) && (sclk == 1'b0);
  assign sclk_l2h  = (sclk_r == 1'b0) && (sclk == 1'b1);


  always @(posedge sclk or posedge rst) begin
    if (rst) begin
      sout_r_r <= 0;
      sout_l_r <= 0;
    end else begin
      if (lrclk) begin
        if (lrclk_l2h) begin

          if (sclk_l2h) begin
            sout_r_r[31:1] <= sout_r_r[30:0];
            sout_r_r[0]    <= sdata;
          end
          sout_l <= sout_l_r;
        end
      end else begin
        if (lrclk_h2l) begin
          if (sclk_l2h) begin
            sout_l_r[31:1] <= sout_l_r[30:0];
            sout_l_r[0]    <= sdata;
          end
          sout_r <= sout_r_r;
        end
      end
    end
  end
  /*
  always @(posedge sclk) begin
    if (lrclk_h2l) begin
      sout_r[31:0] <= sout_r_r[31:0];
    end
    if (lrclk_l2h) begin
      sout_l[31:0] <= sout_l_r[31:0];
    end
  end
*/
  assign sout_l_o = sout_l;
  assign sout_r_o = sout_r;

endmodule





module I2S_Receiver #(
    parameter SAMPLE_WIDTH = 32,
    parameter PRE_PAD = 1
) (
    input wire clk,  // 时钟信号，通常为BCLK
    input wire rst,  // 复位信号

    input  wire                      i2s_rx_dat,  // I2S数据信号
    input  wire                      i2s_rx_lrc,  // I2S帧同步信号
    output wire                      sel_lr,
    output reg  [SAMPLE_WIDTH - 1:0] data_out     // 输出的数据
);

  localparam lrc_left = 1'b1;
  localparam lrc_right = 1'b0;

  localparam CNT_MAX = SAMPLE_WIDTH + PRE_PAD;

  reg [$clog2(CNT_MAX) - 1 : 0] cnt = 0;  // 计数器，用于追踪数据位的位置
  reg [   SAMPLE_WIDTH - 1 : 0] data_store_reg = 0;  // 存储接收到的数据
  reg                           do_store = 0;  // 控制是否存储数据
  //reg                           sel_lr;
  reg                           i2s_rx_lrc_d1 = 0;  // 上一个时刻的I2S帧同步信号值
  reg                           lrc_pulse = 0;  // 帧同步信号边沿脉冲
  assign sel_lr = ~i2s_rx_lrc_d1;
  always @(posedge clk) begin : p_lrc_pulse_gen
    i2s_rx_lrc_d1 <= i2s_rx_lrc;  // 在时钟上升沿时，保存当前I2S帧同步信号值作为上一个时刻的值
    lrc_pulse     <= i2s_rx_lrc_d1 ^ i2s_rx_lrc;  // 异或操作，检测I2S帧同步信号的边沿变化
  end

  always @(posedge clk) begin : p_data_receiver
    if (rst) begin
      cnt      <= 0;  // 复位计数器
      do_store <= PRE_PAD == 0 ? 1 : 0;  // 确定是否存储数据
      data_out <= 0;  // 输出数据清零
    end else begin
      if (do_store) begin
        data_store_reg[cnt] <= i2s_rx_dat;  // 存储接收到的数据
      end

      if (cnt == 0) begin
        do_store <= 0;  // 数据存储控制
      end else begin
        if (cnt == SAMPLE_WIDTH) begin
          do_store <= 1;  // 数据存储控制
        end
        cnt <= cnt - 1;  // 计数器递减
      end

      if (i2s_rx_lrc != i2s_rx_lrc_d1) begin
        if (PRE_PAD == 0) begin
          cnt            <= CNT_MAX - 1;  // 重置计数器
          data_store_reg <= 0;  // 清空数据存储
          data_out       <= {data_store_reg[SAMPLE_WIDTH-1:1], i2s_rx_dat};  // 输出数据
        end else if (PRE_PAD == 1) begin
          cnt            <= CNT_MAX - 2;  // 重置计数器
          data_store_reg <= {i2s_rx_dat, {SAMPLE_WIDTH - 1{1'b0}}};  // 存储数据
          data_out       <= data_store_reg;  // 输出数据
        end else begin
          cnt            <= CNT_MAX - 2;  // 重置计数器
          data_store_reg <= 0;  // 清空数据存储
          data_out       <= data_store_reg;  // 输出数据
        end
        do_store <= PRE_PAD <= 1 ? 1 : 0;  // 数据存储控制
      end
    end
  end

endmodule



