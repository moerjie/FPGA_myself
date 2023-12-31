/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： DDS.v
** 创建日期：
** 功能描述：DDS信号发生与嵌入式逻辑分析仪的调用
** 硬件平台：大西瓜第一代开发板
** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 修改内容：
*******************************************************************************/
module DDS(
			clk,
			dds_data_out,
			set_waveform,
			set_f,
			set_a,
			set_p
          );
input         clk;//时钟输入
input  [1:0]  set_waveform;
input  [20:0] set_f;
input  [4:0]  set_a;
input  [8:0]  set_p;
output [9:0]  dds_data_out;

wire          clk;
wire   [1:0]  set_waveform;
wire   [20:0] set_f;
wire   [4:0]  set_a;
wire   [9:0]  set_p;
wire   [9:0]  dds_data_out;
/**************连接线***************/
wire   [31:0] f32_bus;//AC频率控制字输入
wire   [31:0] reg32_out;//32位寄存器输出
wire   [31:0] reg32_in;//32位寄存器输入
wire   [8:0]  reg10_in;
wire   [8:0]  reg10_out_address;
/**************缓存寄存器******************/
wire   [9:0]  sin_data;
wire   [9:0]  tri_data;
wire   [9:0]  squ_data;
//wire   [9:0]  saw_data;
reg    [9:0]  dds_data_reg; 
reg    [20:0] set_f_reg;     
/***********************************/
assign f32_bus[31:21]=11'b000_0000_0000;//初始化,高位置低
assign f32_bus[20:0]=set_f_reg;    //低位可以设置DDS的输出频率
/*********************元件例化************************************/
       adder_32 u1(.data1(f32_bus),.data2(reg32_out),.sum(reg32_in));
       reg32    u2(.clk(clk),.data_in(reg32_in),.data_out(reg32_out));
       adder_10 u7(.data1(set_p),.data2(reg32_out[31:23]),.sum(reg10_in));
       reg_10   u8(.clk(clk),.data_in(reg10_in),.data_out(reg10_out_address));
/*****************波形选择*******************************************/
       sin_rom  u3(.address(reg10_out_address),.clock(clk),.q(sin_data));//正弦
       tri_rom  u4(.address(reg10_out_address),.clock(clk),.q(tri_data));
       squ_rom  u5(.address(reg10_out_address),.clock(clk),.q(squ_data));
//       saw_rom  u6(.address(reg10_out_address),.clock(clk),.q(saw_data));
/***********************设置波形和设置频率***************************/
    always @(set_waveform,sin_data,tri_data,squ_data)
      begin 
        case (set_waveform)
          2'b00://正弦波
               begin 
                 dds_data_reg<=sin_data; 
                 set_f_reg<=set_f;//设置范围为100Hz到20KHz
               end
          2'b01://三角波
               begin
                 dds_data_reg<=tri_data;
                 set_f_reg<=21'd85899;//固定为1KHz
               end
          2'b10:
               begin
                 dds_data_reg<=squ_data;//方波
                 set_f_reg<=21'd85899;//固定为1KHz
               end
        default:
               begin
                  dds_data_reg<=sin_data;//正弦波
                  set_f_reg<=set_f;//设置范围为100Hz到20KHz
               end
        endcase;
      end 
/***********************设置电压幅值***************************/
assign dds_data_out=dds_data_reg*3/10;//设置电压幅值
endmodule





