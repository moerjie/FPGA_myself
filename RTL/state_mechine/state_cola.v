////////////////////  三段式状态机代码  /////////////////////////
module state_cola(
  CLK       ,   // clock
  RST       ,   // reset
  CENT1IN   ,   // input 1 cent coin
  TINOUT    );  // output 1 tin cola

input  CLK       ; 
input  RST       ; 
input  CENT1IN   ; 
output TINOUT    ;

parameter ST_0_CENT = 0;
parameter ST_1_CENT = 1;
parameter ST_2_CENT = 2;
parameter ST_3_CENT = 3;

reg [2-1:0]stateR       ;
reg [2-1:0]next_state   ;
reg        TINOUT       ;

// calc next state
always @ (CENT1IN or stateR) begin
  case (stateR)
    ST_0_CENT :begin if(CENT1IN) next_state = ST_1_CENT ; 
                else next_state = ST_0_CENT; end
    ST_1_CENT :begin if(CENT1IN) next_state = ST_2_CENT ; 
                else next_state = ST_1_CENT; end
    ST_2_CENT :begin if(CENT1IN) next_state = ST_3_CENT ; 
                else next_state = ST_2_CENT; end
    ST_3_CENT :begin next_state = ST_0_CENT; end
  endcase
end

// calc output
always @ (stateR) begin
  if(stateR == ST_3_CENT) 
    TINOUT = 1'b1;
  else 
    TINOUT = 1'b0;
end

// state DFF
always @ (posedge CLK or posedge RST)begin
  if(RST)
    stateR <= ST_0_CENT;
  else
    stateR <= next_state;
end

endmodule 