module cnt_1(
clk,
ov
);
input clk;
output ov;

reg ov;
reg [3:0] cnt;

parameter cnt_max_val = 9;

always @ (posedge clk) begin
	if (cnt==cnt_max_val) begin
		cnt<=0;
		ov<=1;
		end
	else begin
		ov<=0;
		cnt<=cnt+1'b1;
	end
end

endmodule 