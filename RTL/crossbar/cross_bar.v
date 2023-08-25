module cross_bar(
	IN0,	//input
	IN1,
	IN2,
	IN3,
	SEL0,	//select
	SEL1,
	SEL2,
	SEL3,
	OUT0,	//output
	OUT1,
	OUT2,
	OUT3
);

parameter wl=16;
input [wl-1:0] IN0,IN1,IN2,IN3;
input [1:0] SEL0,SEL1,SEL2,SEL3;
output [wl-1:0] OUT0,OUT1,OUT2,OUT3;

reg [wl-1:0] OUT0,OUT1,OUT2,OUT3;

//get OUT0
always @ (IN0 or IN1 or IN2 or IN3 or SEL0) begin
	if(SEL0==2'b00)
		OUT0 <= IN0 ;
	else if(SEL0==2'b01)
		OUT0 <= IN1;
	else if(SEL0==2'b10)
		OUT0 <= IN2;
	else
		OUT0 <= IN3;
end

//get OUT1
always @ (IN0 or IN1 or IN2 or IN3 or SEL0) begin
	if(SEL1==2'b00)
		OUT1 <= IN0 ;
	else if(SEL1==2'b01)
		OUT1 <= IN1;
	else if(SEL1==2'b10)
		OUT1 <= IN2;
	else
		OUT1 <= IN3;
end

//get OUT2
always @ (IN0 or IN1 or IN2 or IN3 or SEL2) begin
	if(SEL2==2'b00)
		OUT2 <= IN0 ;
	else if(SEL2==2'b01)
		OUT2 <= IN1;
	else if(SEL2==2'b10)
		OUT2 <= IN2;
	else
		OUT2 <= IN3;
end

//get OUT3
always @ (IN0 or IN1 or IN2 or IN3 or SEL3) begin
	if(SEL3==2'b00)
		OUT3 <= IN0 ;
	else if(SEL3==2'b01)
		OUT3 <= IN1;
	else if(SEL3==2'b10)
		OUT3 <= IN2;
	else
		OUT3 <= IN3;
end

endmodule
