//////脉冲发生器
module timer(
	clk,
	rst,
	pul_001,	//0.01s
	pul_01,		//0.1s
	pul_1,		//1s
	pul_10		///10s

);

input clk,rst;
output pul_001,pul_01,pul_1,pul_10;

reg pul_001,pul_01,pul_1,pul_10;
reg [19:0] cnt_001;
reg [3:0] cnt_01;
reg [3:0] cnt_1;
reg [3:0] cnt_10;

parameter max_val=50000000-1;

always @ (posedge clk or rst) begin
	if(rst!=rst) begin
		cnt_001<=0;
	end
	else begin
		if(cnt_001==max_val) begin
			cnt_001<=0;
		end 
        else begin
            cnt_001=cnt_001+1'b1;
        end
	end
end 

always @(posedge clk or cnt_001) begin
    if(cnt_001==max_val)begin
        pul_001<=1'b1;
    end
    else begin
        pul_001<=1'b0;
    end
end


endmodule
