
module cnt_0to9(
  CLK   ,   // clock
  CNTVAL,   // counter value
  OV    );  // overflow
input CLK;
output [4-1:0] CNTVAL;
output OV;

reg [4-1:0] CNTVAL;
reg OV;

always @ (posedge CLK) begin
  if(CNTVAL >= 9)
    CNTVAL <= 0;
  else
    CNTVAL <= CNTVAL + 1'b1;
end

always @ (CNTVAL) begin
  if(CNTVAL == 9)
    OV = 1'b1;
  else
    OV = 1'b0;
end

endmodule   // module cnt_0to9
////////////////////////////////////////////////////////////////////////////////


module dec_2to4(
IN  ,
OUT);
input  [2-1:0] IN  ;
output [4-1:0] OUT ;

reg [4-1:0] OUT ;

always @ (IN) begin
  case(IN)
    2'b00: OUT = 4'b 0001;
    2'b01: OUT = 4'b 0010;
    2'b10: OUT = 4'b 0100;
    2'b11: OUT = 4'b 1000;
  endcase
end

endmodule // module dec_2to4;
