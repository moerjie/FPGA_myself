module cnt_en_0to9_double(
  CLK   ,   // clock
  CNTVAL_low,   // counter value
  CNTVAL_high,	// counter value high
  EN    ,
  OV    ,
  display_segments,
  display_segment,
  enable,
  stop,// 暂停键
  clear);  //清零
input CLK;
input EN;
input stop;
input clear;
output [4-1:0] CNTVAL_low;
output [4-1:0] CNTVAL_high;
output [7-1:0] display_segments;
output [7-1:0] display_segment;
output OV;
output enable;

reg [4-1:0] CNTVAL_low;
reg [4-1:0] CNTVAL_high;
reg [7-1:0] display_segments;
reg [7-1:0] display_segment;
reg OV;
reg enable;


always @ (posedge CLK) begin
//	if(clear==0) begin
//		CNTVAL_low <= 0;
//		end
//	else
	if(clear) begin		
		if(stop) begin
			if(EN) begin
				if(CNTVAL_low>=9)
					CNTVAL_low<=0;
				else
					CNTVAL_low <= CNTVAL_low+1'b1;

	end
	end
	end
	
	CNTVAL_low <= CNTVAL_low;
end

always @ (CNTVAL_low) begin
  if(CNTVAL_low == 9)
    OV = 1'b1;
  else
    OV = 1'b0;
end

always @ (posedge CNTVAL_low) begin
	if(clear) begin
		if(CNTVAL_low==9) begin
			if(CNTVAL_high>=9)
				CNTVAL_high<=0;
			else
			CNTVAL_high<=CNTVAL_high+1'b1;
			end
	else
		CNTVAL_high<=0;
			end
		else 
		CNTVAL_high=CNTVAL_high;
end

always @ (CNTVAL_low) begin
	case(CNTVAL_low)
		  4'b0000: begin // 0
            display_segments <= 7'b1000000;
            
        end
        4'b0001: begin // 1
            display_segments <= 7'b1111001;
            
        end
        4'b0010: begin // 2
            display_segments <= 7'b0100100;
            
        end
        4'b0011: begin // 3
            display_segments <= 7'b0110000;
            
        end
        4'b0100: begin // 4
            display_segments <= 7'b0011001;
            
        end
        4'b0101: begin // 5
            display_segments <= 7'b0010010;

        end
        4'b0110: begin // 6
            display_segments <= 7'b0000010;
            
        end
        4'b0111: begin // 7
            display_segments <= 7'b1111000;
            
        end
        4'b1000: begin // 8
            display_segments <= 7'b0000000;
            
        end
        4'b1001: begin // 9
            display_segments <= 7'b0010000;
            
        end
       
        default: begin
            display_segments <= 7'b1111111; // Default, all segments off
            
        end
	endcase
end

always @ (CNTVAL_high) begin
	case(CNTVAL_high)
		 4'b0000: begin // 0
            display_segment <= 7'b1000000;
            enable <= 0;
        end
        4'b0001: begin // 1
            display_segment <= 7'b1111001;
            enable <= 0;
        end
        4'b0010: begin // 2
            display_segment <= 7'b0100100;
            enable <= 0;
        end
        4'b0011: begin // 3
            display_segment <= 7'b0110000;
            enable <= 0;
        end
        4'b0100: begin // 4
            display_segment <= 7'b0011001;
            enable <= 0;
        end
        4'b0101: begin // 5
            display_segment <= 7'b0010010;
            enable <= 0;
        end
        4'b0110: begin // 6
            display_segment <= 7'b0000010;
            enable <= 0;
        end
        4'b0111: begin // 7
            display_segment <= 7'b1111000;
            enable <= 0;
        end
        4'b1000: begin // 8
            display_segment <= 7'b0000000;
            enable <= 0;
        end
        4'b1001: begin // 9
            display_segment <= 7'b0010000;
            enable <= 0;
        end
        default: begin
            display_segment <= 7'b1111111; // Default, all segments off
            enable <= 0;
        end
	endcase
end
	

endmodule   // module cnt_en_0to15

////////////////////////////////////////////////

/*module cnt_ssync(
  CLK   ,   // clock
  CNTVAL,   // counter value
  OV    );  // overflow
input CLK;
output [32-1:0] CNTVAL;
output OV;
parameter MAX_VAL = 5000000;
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

endmodule   // module cnt_sync*/