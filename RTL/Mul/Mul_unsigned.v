////////////////////  无符号的乘法器  /////////////////////////
module Mul_unsigned(
  IN1   ,
  IN2   ,
  OUT   );
 input [7:0] IN1, IN2;
 output [15:0] OUT;
 reg [15:0] OUT;
always@(IN1 or IN2) begin // 生成组合逻辑的always 块
  OUT = IN1 * IN2;
end
endmodule 