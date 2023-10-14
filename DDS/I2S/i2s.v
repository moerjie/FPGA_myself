module i2s_output (
    input wire clock,               // 时钟信号
    input wire reset,               // 复位信号
    input wire [15:0] audio_data,   // 16 位音频数据输入
    output wire bit_clock,          // 位时钟输出
    output wire frame_clock,        // 帧时钟输出
    output wire serial_data         // 串行音频数据输出
  );

  reg [15:0] shift_register;       // 16 位移位寄存器
  reg [7:0] bit_counter;           // 位计数器
  reg frame_counter;              // 帧计数器

  always @(posedge clock or posedge reset)
  begin
    if (reset)
    begin
      shift_register <= 16'h0000;   // 复位移位寄存器
      bit_counter <= 8'b00000000;  // 复位位计数器
      frame_counter <= 1'b0;        // 复位帧计数器
    end
    else
    begin
      // 每个位时钟周期，向移位寄存器加载一个音频数据位
      if (bit_counter < 8)
      begin
        shift_register[15] <= audio_data[bit_counter];
        bit_counter <= bit_counter + 1;
      end
      // 在帧时钟周期上升沿，加载下一个音频数据位并增加帧计数器
      if (frame_counter)
      begin
        shift_register[15] <= audio_data[bit_counter];
        bit_counter <= 0;
        frame_counter <= 0;
      end
      else
      begin
        frame_counter <= 1;
      end
    end
  end

  // 位时钟信号，取反每个时钟周期
  assign bit_clock = clock;
  // 帧时钟信号，根据帧计数器生成
  assign frame_clock = frame_counter;

  // 串行音频数据输出
  assign serial_data = shift_register[15];

endmodule
