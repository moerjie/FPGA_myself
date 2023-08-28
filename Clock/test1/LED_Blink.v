module LED_Blink (
    clk,
    rst,
    out
);

input clk,rst;
output out;

reg out;
reg [25:0] cntval;

parameter max_val = 50000000;

always @ (posedge clk) begin
	if(rst)begin
		cntval<=0;
	end
	
	else begin
		if(cntval<max_val)begin
			cntval<=cntval+1'b1;
			out<=out;
		end

		else begin
			cntval<=0;
			out<=~out;

		end
	end
end
    
endmodule 