module adder8(
  IN1   ,
  IN2   ,
  OUT   );
input[7:0] IN1, IN2;
output[8:0] OUT;
reg[8:0] OUT;
always@(IN1 or IN2) begin // 生成组合逻辑的always 块
  OUT = IN1 + IN2;
end
endmodule 