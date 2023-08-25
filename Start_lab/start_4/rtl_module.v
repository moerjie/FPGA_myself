
module cnt_sync(
  CLK   ,   // clock
  CNTVAL,   // counter value
  OV    );  // overflow
input CLK;
output [32-1:0] CNTVAL;
output OV;
parameter MAX_VAL = 5;
reg [32-1:0] CNTVAL;
reg OV;

always @ (posedge CLK) begin
  if(CNTVAL >= MAX_VAL)
    CNTVAL <= 0;
  else
    CNTVAL <= CNTVAL + 1'b1;
end

always @ (CNTVAL) begin
  if(CNTVAL == MAX_VAL)
    OV = 1'b1;
  else
    OV = 1'b0;
end

endmodule   // module cnt_en_0to9
////////////////////////////////////////////////////////////////////////////////

module cnt_en_0to9(
  CLK   ,   // clock
  CNTVAL,   // counter value
  EN    ,
  OV    ,
  display_segments,
  enable);  // overflow
input CLK;
input EN;
output [5-1:0] CNTVAL;
output [7-1:0] display_segments;
output OV;
output enable;

reg [5-1:0] CNTVAL;
reg [7-1:0] display_segments;
reg OV;
reg enable;

always @ (posedge CLK) begin
  if(EN) begin  // work enable
    if(CNTVAL >= 15)
      CNTVAL <= 0;
    else
      CNTVAL <= CNTVAL + 1'b1;
  end
  else
    CNTVAL <= CNTVAL ;  // hold same value
end

always @ (CNTVAL) begin
  if(CNTVAL == 15)
    OV = 1'b1;
  else
    OV = 1'b0;
end

always @ (CNTVAL) begin
	case(CNTVAL)
		5'b00000: begin // 0
            display_segments <= 7'b1000000;
            enable <= 1;
        end
        5'b00001: begin // 1
            display_segments <= 7'b1111001;
            enable <= 1;
        end
        5'b00010: begin // 2
            display_segments <= 7'b0100100;
            enable <= 1;
        end
        5'b00011: begin // 3
            display_segments <= 7'b0110000;
            enable <= 1;
        end
        5'b00100: begin // 4
            display_segments <= 7'b0011001;
            enable <= 1;
        end
        5'b00101: begin // 5
            display_segments <= 7'b0010010;
            enable <= 1;
        end
        5'b00110: begin // 6
            display_segments <= 7'b0000010;
            enable <= 1;
        end
        5'b00111: begin // 7
            display_segments <= 7'b1111000;
            enable <= 1;
        end
        5'b01000: begin // 8
            display_segments <= 7'b0000000;
            enable <= 1;
        end
        5'b01001: begin // 9
            display_segments <= 7'b0010000;
            enable <= 1;
        end
        5'b01010: begin // A
            display_segments <= 7'b0001000;
            enable <= 1;
        end
        5'b01011: begin // B
            display_segments <= 7'b0000011;
            enable <= 1;
        end
        5'b01100: begin // C
            display_segments <= 7'b1000110;
            enable <= 1;
        end
        5'b01101: begin // D
            display_segments <= 7'b0100001;
            enable <= 1;
        end
        5'b01110: begin // E
            display_segments <= 7'b0000110;
            enable <= 1;
        end
        5'b01111: begin // F
            display_segments <= 7'b0001110;
            enable <= 1;
        end
        default: begin
            display_segments <= 7'b1111111; // Default, all segments off
            enable <= 0;
        end
	endcase
end
	

endmodule   // module cnt_en_0to9
////////////////////////////////////////////////////////////////////////////////
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
