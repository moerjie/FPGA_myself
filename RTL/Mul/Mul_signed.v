////////////////////  有符号的2补码乘法器  /////////////////////////
module Mul_signed(
  IN1   ,
  IN2   ,
  OUT   );
 input signed[3:0] IN1, IN2;
 output signed [7:0] OUT;
 reg signed[7:0] OUT;
 always@(IN1 or IN2) begin // 生成组合逻辑的always 块
  OUT = IN1 * IN2;
end
endmodule 