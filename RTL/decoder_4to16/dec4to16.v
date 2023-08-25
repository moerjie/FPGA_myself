// module top, 4 input priority encoder with zero input check
module dec4to16(
  IN        ,   // input  
  OUT       );  // output 

input [3:0] IN;
output[16-1:0] OUT;

reg   [16-1:0] OUT;
// get the OUT
always @ (IN) begin
  case(IN)
    4'b0000: OUT = 16'b0000_0000_0000_0001;
    4'b0001: OUT = 16'b0000_0000_0000_0010;
    4'b0010: OUT = 16'b0000_0000_0000_0100;
    4'b0011: OUT = 16'b0000_0000_0000_1000;
    4'b0100: OUT = 16'b0000_0000_0001_0000;
    4'b0101: OUT = 16'b0000_0000_0010_0000;
    4'b0110: OUT = 16'b0000_0000_0100_0000;
    4'b0111: OUT = 16'b0000_0000_1000_0000;
	4'b1000: OUT = 16'b0000_0001_0000_0000;
    4'b1001: OUT = 16'b0000_0010_0000_0000;
    4'b1010: OUT = 16'b0000_0100_0000_0000;
    4'b1011: OUT = 16'b0000_1000_0000_0000;
    4'b1100: OUT = 16'b0001_0000_0000_0000;
    4'b1101: OUT = 16'b0010_0000_0000_0000;
    4'b1110: OUT = 16'b0100_0000_0000_0000;
    4'b1111: OUT = 16'b1000_0000_0000_0000;
    //  full case 不需要写default，否则一定要有default
  endcase
end
endmodule