/********************************��Ȩ����**************************************
**                              �������Ŷ�
**                            
**----------------------------�ļ���Ϣ--------------------------
** �ļ����ƣ� key_coding.v
** �������ڣ�
** ������������������
** Ӳ��ƽ̨�������ϵ�һ��������
** ��Ȩ������������������֪ʶ��Ȩ,�������������ѧϰ.
**---------------------------�޸��ļ��������Ϣ----------------
** �޸��ˣ�
** �޸����ڣ�		
** �޸����ݣ�
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
/******************��������****************************************/
always @(negedge set_waveform_key or negedge reset)
begin 
  if(!reset)
   set_waveform<=2'b00;
  else
    begin
     if(!set_waveform_key)//�жϰ����Ƿ���
     begin 
        set_waveform<=set_waveform+1'b1;
     end
    end
 end
/****************Ƶ������*******************************************/
always @(negedge set_f_key or negedge reset)
   begin
    if(!reset)
      f_control<=21'd8590;//100Hz,��ʼƵ������Ϊ100Hz8590
    else
     begin
     if(!set_f_key)//�жϰ����Ƿ���
       begin 
         if(f_control==21'd1717987)//������20K����
            f_control<=21'd0;
         else
            f_control<=f_control+21'd42950;//ÿ��һ�ΰ�������500HZ
       end
     end     
   end 
/***************��ֵ����****************************************/
always @(negedge set_a_key or negedge reset)
begin 
  if(!reset)
   a_control<=4'd1;
  else
    begin
     if(!set_a_key)//�жϰ����Ƿ���
     begin
       if(a_control==4'd10)
        a_control<=4'd1;
       else
        a_control<=a_control+4'd1;
     end
    end
 end
/***************��λ����******************************************/
always @(negedge set_p_key or negedge reset)
   begin
    if(!reset)
      p_control<=9'b00_0000_0000;//0��
    else
     begin
     if(!set_p_key)//�жϰ����Ƿ���
       begin 
         if(p_control==9'b11_1111_1111)
            p_control<=9'b0;
         else
            p_control<=p_control+9'd100;
       end
     end     
   end 
endmodule



