/*parameter num0 = 7'h 3F,
			 num1 = 7'h 06,
			 num2 = 7'h 5b,
			 num3 = 7'h 4f,
			 num4 = 7'h 66,
			 num5 = 7'h 6d,
			 num6 = 7'h 7d,
			 num7 = 7'h 07,
			 num8 = 7'h 7f,
			 num9 = 7'h 6f,
			 numa = 7'h 77,
			 numb = 7'h 7c,
			 numc = 7'h 39,
			 numd = 7'h 5e,
			 nume = 7'h 79,
			 numf = 7'h 71;*/
			 
module dec_4to7(
IN  ,
OUT);
input  [4-1:0] IN  ;
output [7-1:0] OUT ;

reg [7-1:0] OUT ;
parameter num0 = 7'h 0xfc,
			 num1 = 7'h 06,
			 num2 = 7'h 5b,
			 num3 = 7'h 4f,
			 num4 = 7'h 66,
			 num5 = 7'h 6d,
			 num6 = 7'h 7d,
			 num7 = 7'h 07,
			 num8 = 7'h 7f,
			 num9 = 7'h 6f,
			 numa = 7'h 77,
			 numb = 7'h 7c,
			 numc = 7'h 39,
			 numd = 7'h 5e,
			 nume = 7'h 79,
			 numf = 7'h 71;
			
always @ (IN) begin
  case(IN)
	 4'b0000: OUT <= 7'b 1000000;	//0
    4'b0001: OUT <= 7'b 1111001;	//1
    4'b0010: OUT <= 7'b 0100100;	//2
    4'b0011: OUT <= 7'b 0110000;	//3
    4'b0100: OUT <= 7'b 0011001;	//4
    4'b0101: OUT <= 7'b 0010010;	//5
    4'b0110: OUT <= 7'b 0000010;	//6
    4'b0111: OUT <= 7'b 1111000;	//7
    4'b1000: OUT <= 7'b 0000000;	//8
    4'b1001: OUT <= 7'b 0010000; 	//9
    4'b1010: OUT <= 7'b 0001000;	//A
    4'b1011: OUT <= 7'b 0000011;	//b
    4'b1100: OUT <= 7'b 1000110;	//c
    4'b1101: OUT <= 7'b 0100001;	//d
    4'b1110: OUT <= 7'b 0000110;	//E
    4'b1111: OUT <= 7'b 0001110;	//F
	 default: OUT <= 7'b 1111111;
  endcase
end

endmodule //