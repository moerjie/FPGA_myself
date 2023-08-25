module MUX4(
	in1,
	in2,
	in3,
	in4,
	sel,
	out);
	
parameter wl=16;
input [wl-1:0] in1, in2, in3, in4;
input [1:0] sel;
output [wl-1:0] out;

reg [wl-1:0] out;

always @ (in1 or in2 or in3 or in4 or sel) begin
	if(sel==00)
		out<=in1;
	else if(sel==01)
		out<=in2;
	else if(sel==10)
		out<=in3;
	else
		out<=in4;
end
endmodule
