module timer (
    clk,
    rst,
    LED_1,
    LED_2,
    LED_3,
    LED_4,
    LED_DP1,
    LED_DP2,
    LED_DP3,
    LED_DP4
);

input clk, rst;

output [6:0] LED_1, LED_2, LED_3, LED_4;
output LED_DP1, LED_DP2, LED_DP3, LED_DP4;

wire p_001, p_01, p_1,p_10;
wire [3:0] cnt_1, cnt_2, cnt_3, cnt_4;

pul_out PG(
    .clk    (clk),
    .rst    (rst),
    .pul_001 (p_001),
    .pul_01 (p_01),
    .pul_1 (p_1),
    .pul_10 (p_10)
);

cnt_0to9 cn1(
    .clk (clk),
    .rst (rst),
    .pul_in(p_001),
    .cntval(cnt_1)
);

cnt_0to9 cn2(
   .clk (clk),
   .rst (rst),
   .pul_in(p_01),
   .cntval(cnt_2)
);

cnt_0to9 cn3(
    .clk (clk),
    .rst (rst),
    .pul_in(p_1),
    .cntval(cnt_3)
);

cnt_0to9 cn4(
   .clk (clk),
   .rst(rst),
   .pul_in(p_10),
   .cntval(cnt_4)
);

BCD2LED bc1(
    .BCD (cnt_1),
    .DP_IN (1'b0),
    .LED7(LED_1),
    .LED_DP(LED_DP1)

);

BCD2LED bc2(
    .BCD(cnt_2),
    .DP_IN(1'b0),
    .LED7(LED_2),
    .LED_DP(LED_DP2)    
);

BCD2LED bc3(
   .BCD(cnt_3),
   .DP_IN(1'b1),
   .LED7(LED_3),
   .LED_DP(LED_DP3)
);

BCD2LED bc4(
  .BCD(cnt_4),
  .DP_IN(1'b0),
  .LED7(LED_4),
  .LED_DP(LED_DP4)
);
endmodule

module pul_out(
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
reg [19:0] cnt_001_r;
reg [3:0] cnt_01;
reg [19:0] cnt_01_r;
reg [3:0] cnt_1;
reg [19:0] cnt_1_r;
reg [3:0] cnt_10;
reg [19:0] cnt_10_r;

parameter max_val=500000-1;

always @ (posedge clk or posedge rst) begin
	if(rst) begin
		cnt_001<=0;
        cnt_001_r<=0;
	end
	else begin
        cnt_001_r<=cnt_001;
		if(cnt_001==max_val) begin
			cnt_001<=0;
		end 
        else begin
            cnt_001<=cnt_001+1'b1;
        end
	end
end 

always @(cnt_001 or cnt_001_r) begin
    if((cnt_001_r==max_val) && (cnt_001==0))begin
        pul_001<=1'b1;
    end
    else begin
        pul_001<=1'b0;
    end
end

always @(posedge pul_001) begin

    if(rst)begin
        cnt_01<=0;
        cnt_01_r<=0;
    end
    else begin
        cnt_01_r<=cnt_01;
        if(cnt_01<9)begin
            cnt_01<=cnt_01+1'b1;
        end
        else begin
            cnt_01<=0;
            
        end
    end
    
end

always @(cnt_01 or cnt_01_r) begin
    if((cnt_01_r==9) && (cnt_01==0))begin
        pul_01<=1'b1;
    end
    
    else begin
        pul_01<=1'b0;
    end
end

always @(posedge pul_01 or posedge rst) begin
    if(rst)begin
        cnt_1<=0;
        cnt_1_r<=0;
    end
    else begin
        cnt_1_r<=cnt_1;
        if(pul_01) begin
            if(cnt_1==9)begin
                cnt_1<=0;
            end
            else begin
                cnt_1<=cnt_1+1'b1;
            end
        end
        else begin
            cnt_1<=cnt_1;
        end
    end
end

always @(cnt_1 or cnt_1_r) begin
    if((cnt_1_r==9) && (cnt_1==0))begin
        pul_1<=1'b1;
    end
    else  begin
        pul_1<=1'b0;
    end
end

always @(posedge pul_1) begin
    if (rst) begin
        cnt_10<=0;
        cnt_10_r<=0;
    end
    else begin
        cnt_10_r<=cnt_10;
        if(cnt_10==9)begin
            cnt_10<=0;
        end
        else begin
            cnt_10=cnt_10+1'b1;;
        end
    end
  
end

always @(cnt_10 or cnt_10_r) begin
    
    if((cnt_10_r==9) && (cnt_10==0))begin
        pul_10<=1'b1;
    end
    else begin
        pul_10<=1'b0;
    end
end

endmodule

module cnt_0to9 (
    pul_in,
    clk,
    rst,
    cntval
);

input pul_in,rst,clk;
output [3:0] cntval;
reg [3:0] cntval;
reg p_in_1;
reg p_in_2;

always @ (posedge clk or posedge rst) begin
    if(rst)begin
        cntval<=0;
        p_in_1<=0;
        p_in_2<=0;
    end
    else begin
        p_in_1<=pul_in;
        p_in_2<=p_in_1;
        if((p_in_1==1) && (p_in_2==0))begin
            if(cntval<9)begin
                cntval<=cntval+1;
            end
            else begin
                cntval<=0;
            end
        end
        else begin
            cntval<=cntval;
        end

    end
end
    
endmodule


module BCD2LED (
    BCD,
    DP_IN,
    LED7,
    LED_DP
);

input [3:0]BCD;
input DP_IN;

output [6:0] LED7;
output LED_DP;

reg [6:0] LED7;

always @(BCD) begin
    case (BCD)
        0 :LED7 = 7'b1_000_000;
        1 :LED7 = 7'b1_111_001;
        2 :LED7 = 7'b0_100_100;
        3 :LED7 = 7'b0_110_000;
        4 :LED7 = 7'b0_011_001;
        5 :LED7 = 7'b0_010_010;
        6 :LED7 = 7'b0_000_010;
        7 :LED7 = 7'b1_111_000;
        8 :LED7 = 7'b0_000_000;
        9 :LED7 = 7'b0_010_000; 
        default: LED7 = 7'b1_111_111;
    endcase


    
end

assign LED_DP =~DP_IN;

endmodule