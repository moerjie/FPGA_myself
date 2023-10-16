module myi2s(
mclk,
lrclk,
l_en,
r_en,
l_din,
r_din,
sclk_o,
lrclk_o,
mclk_o,
sdata
);

input mclk,lrclk,l_en,r_en;
input [31:0] l_din,r_din;
output sclk_o,lrclk_o,mclk_o,sdata;

reg [5:0] sclk_div=0;
reg [31:0] audio_sample=0;
reg sclk_o=0;
reg sdata;

always @(posedge mclk) begin
    if (sclk_div == 31'b0) begin
        sclk_o <= 1'b1;
        sclk_div <= 31'b0;
    end else begin
        sclk_o <= 1'b0;
        sclk_div <= sclk_div + 1'b1;
    end
end

always @(posedge sclk_o) begin
	 if(lrclk) begin
       if(r_en) begin
            audio_sample<=r_din;
        end
    end
    else begin
        if(l_en) begin
            audio_sample<=l_din;
        end
    end
    sdata<=audio_sample[31];
    audio_sample[31:1]<=audio_sample[30:0];
    audio_sample[0]<=1'b0;
end


//assign sdata = audio_sample;
assign mclk_o = mclk;
assign lrclk_o = lrclk;

endmodule
