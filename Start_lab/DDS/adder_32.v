/********************************��Ȩ����**************************************
**                              �������Ŷ�
**                            
**----------------------------�ļ���Ϣ--------------------------
** �ļ����ƣ� adder_32.v
** ����������32λ�ۼ���
**---------------------------�޸��ļ��������Ϣ----------------
** �޸��ˣ�
** �޸����ڣ�		
** �޸����ݣ�
*******************************************************************************/
module adder_32(
              data1,
              data2,
              sum);
input [31:0] data1,data2;//������1��2
output [31:0] sum;//�����

wire [31:0] data1,data2;
wire [31:0] sum;

assign sum=data1+data2;

endmodule
