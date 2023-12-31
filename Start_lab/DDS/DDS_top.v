/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： DDS_top.v
** 创建日期：
** 功能描述：顶层设计
** 硬件平台：大西瓜第一代开发板
** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 修改内容：
*******************************************************************************/
module DDS_top(clk,             //内部时钟
               reset,
               sclk,            //TLC5615 sclk时钟脚
               din,             //TLC5615 din数据脚
               cs,              //TLC5615 cs片选
               set_waveform_key_in,//波形设置按键
               set_f_key_in,     // 频率设置按键
               set_a_key_in,
               set_p_key_in,
               sin_data
              );
input      clk;
input      reset;
input      set_waveform_key_in;
input      set_f_key_in,set_a_key_in,set_p_key_in;
output     din;
output     cs;
output     sclk;
output     [9:0]sin_data;

wire clk;
wire reset;
wire set_waveform_key_in;
wire set_f_key_in,set_a_key_in,set_p_key_in;

//wire [9:0] data_line;
wire [1:0] set_waveform_line;
wire [20:0] f_control_line;
wire [3:0]  a_control_line;
wire [8:0]  p_control_line;

wire       set_waveform_key;
wire       set_f_key;
wire       set_a_key;
wire       set_p_key;

  DDS     u4(
             .clk(clk),
             .dds_data_out(sin_data),
             .set_waveform(set_waveform_line),
             .set_f(f_control_line),
             .set_a(a_control_line),
             .set_p(p_control_line)
             );
  TLC5615 U5(.clk(clk),.sclk(sclk),.din(din),.cs(cs),.din_in(sin_data));
  key     u6(.clk(clk),.key(set_waveform_key_in),.key_out(set_waveform_key));
  key     u7(.clk(clk),.key(set_f_key_in),.key_out(set_f_key));
  key     u8(.clk(clk),.key(set_a_key_in),.key_out(set_a_key));
  key     u9(.clk(clk),.key(set_p_key_in),.key_out(set_p_key));
  
  key_coding u10(
                .reset(reset),
                .set_waveform_key(set_waveform_key),
                .set_f_key(set_f_key),
                .set_a_key(set_a_key),
                .set_p_key(set_p_key),
                .set_waveform(set_waveform_line),
                .f_control(f_control_line),
                .a_control(a_control_line),
                .p_control(p_control_line));

endmodule


