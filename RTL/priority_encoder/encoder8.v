// module top, 4 input priority encoder with zero input check
module encoder8(
  IN        ,   // input  
  OUT       );  // output 
input [7:0] IN;
output[3:0] OUT;

reg   [3:0] OUT;
// get the OUT
always @ (IN) begin
    if(IN[7])       // 第一优先
      OUT = 4'b0111;
    else if(IN[6])  // 第二优先
      OUT = 4'b0110;
    else if(IN[5])  // 第三优先
      OUT = 4'b0101;
    else if(IN[4])  // 第四优先
      OUT = 4'b0100;
	 else if(IN[3])  // 第五优先
      OUT = 4'b0011;
	 else if(IN[2])  // 第六优先
      OUT = 4'b0010;
    else if(IN[1])  // 第七优先
      OUT = 4'b0001;
    else if(IN[0])  // 第八优先
      OUT = 4'b0000;
    else            // 什么都没有检测到
      OUT = 4'b1111; // 输出值可自定义，不和上面的输出值混淆即可
end
endmodule