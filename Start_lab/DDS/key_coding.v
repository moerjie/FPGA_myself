/********************************版权声明**************************************
**                              大西瓜团队
**                            
**----------------------------文件信息--------------------------
** 文件名称： key_coding.v
** 创建日期：
** 功能描述：按键编码
** 硬件平台：大西瓜第一代开发板
** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
**---------------------------修改文件的相关信息----------------
** 修改人：
** 修改日期：		
** 修改内容：
*******************************************************************************/
module key_coding(
                 reset,
                 set_waveform_key,
                 set_f_key,
                 set_a_key,
                 set_p_key,
                 set_waveform,
                 f_control,
                 a_control,
                 p_control
                 );
input        reset;
input        set_waveform_key;
input        set_f_key,set_a_key,set_p_key;
output [1:0] set_waveform;
output [20:0] f_control;
output [3:0]  a_control;
output [8:0]  p_control;

wire reset;
wire set_waveform_key;
wire set_f_key,set_a_key,set_p_key;
reg [1:0] set_waveform;
reg [20:0] f_control;
reg [3:0]  a_control;
reg [8:0]  p_control;
/******************波形设置****************************************/
always @(negedge set_waveform_key or negedge reset)
begin 
  if(!reset)
   set_waveform<=2'b00;
  else
    begin
     if(!set_waveform_key)//判断按键是否按下
     begin 
        set_waveform<=set_waveform+1'b1;
     end
    end
 end
/****************频率设置*******************************************/
always @(negedge set_f_key or negedge reset)
   begin
    if(!reset)
      f_control<=21'd8590;//100Hz,初始频率设置为100Hz8590
    else
     begin
     if(!set_f_key)//判断按键是否按下
       begin 
         if(f_control==21'd1717987)//限制在20K以下
            f_control<=21'd0;
         else
            f_control<=f_control+21'd42950;//每按一次按键增加500HZ
       end
     end     
   end 
/***************幅值控制****************************************/
always @(negedge set_a_key or negedge reset)
begin 
  if(!reset)
   a_control<=4'd1;
  else
    begin
     if(!set_a_key)//判断按键是否按下
     begin
       if(a_control==4'd10)
        a_control<=4'd1;
       else
        a_control<=a_control+4'd1;
     end
    end
 end
/***************相位设置******************************************/
always @(negedge set_p_key or negedge reset)
   begin
    if(!reset)
      p_control<=9'b00_0000_0000;//0度
    else
     begin
     if(!set_p_key)//判断按键是否按下
       begin 
         if(p_control==9'b11_1111_1111)
            p_control<=9'b0;
         else
            p_control<=p_control+9'd100;
       end
     end     
   end 
endmodule



