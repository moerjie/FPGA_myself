module adder_D(
  IN1   ,
  IN2   ,
  CLK   ,
  OUT   );
input  [7:0] IN1, IN2;
input CLK;
output  [8:0] OUT;
reg [7:0] in1_d1R, in2_d1R, in1_d2R, in2_d2R;
reg  [8:0] adder_out, OUT;
always@(posedge CLK) begin // 生成D触发器的always块
  in1_d1R <= IN1;
  in2_d1R <= IN2;
  in1_d2R <= in1_d1R;
  in2_d2R <= in2_d1R;
  OUT     <= adder_out;
end

always@(in1_d2R or in2_d2R) begin // 生成组合逻辑的always 块
  adder_out = in1_d2R + in2_d2R;
end
endmodule 