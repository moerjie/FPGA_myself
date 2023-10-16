module myi2s(
mclk,
rst,
l_en,
r_en,
l_din,
r_din,
sclk_o,
lrclk_o,
mclk_o,
sdata
);

input mclk,rst,l_en,r_en;
input [15:0] l_din,r_din;
output sclk_o,lrclk_o,mclk_o,sdata;

wire clk=mclk;

reg [8:0] cnt_div=0;

reg [15:0] l_din_r,r_din_r;

reg [31:0] r_audio_sample,l_audio_sample;

reg  lrclk_R, sclk_R;

//reg sdata;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        cnt_div <=0;
    end
    else begin
        cnt_div <= cnt_div+1'b1;
    end
end

assign sclk_o=cnt_div[2];
assign lrclk_o=cnt_div[8];
assign mclk_o=mclk;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        l_din_r<=0;
        r_din_r<=0;
    end

    else begin
        if(l_en) begin
            l_din_r<=l_din;
        end
        if(r_en) begin
            r_din_r<=r_din;
        end
    end
end

wire lrck_h2l,lrck_l2h,sclk_h2l,sclk_l2h;

assign lrck_h2l=(lrclk_R==1'b1)&&(lrclk_o==1'b0);
assign lrck_l2h=(lrclk_R==1'b0)&&(lrclk_o==1'b1);
assign sclk_h2l_h2l=(sclk_R==1'b1)&&(sclk_o==1'b0);
assign sclk_l2h=(sclk_R==1'b0)&&(sclk_o==1'b1);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        l_audio_sample<=0;
        r_audio_sample<=0;
        lrclk_R<=0;
        sclk_R<=0;

    end
    else begin
        lrclk_R<=lrclk_o;
        sclk_R<=sclk_o;
        if(lrck_h2l) begin//低电平加载右声道
            r_audio_sample[31]<=1'b0;
            r_audio_sample[31:15]<=r_din_r;
            r_audio_sample[14:0]<=0;
        end
        else begin
            l_audio_sample[31]<=1'b0;
            l_audio_sample[31:15]<=l_din_r;
            l_audio_sample[14:0]<=0;
        end
        if(sclk_l2h) begin
            if(lrclk_o==1'b1) begin
                r_audio_sample[31:1]<=r_audio_sample[30:0];
                r_audio_sample[0]<=1'b0;
            end
            else begin
                l_audio_sample[31:1]<=r_audio_sample[30:0];
                r_audio_sample[0]<=1'b0;
            end
        end
    end
end

assign sdata=(lrclk_o==1'b0)?l_audio_sample[31]:r_audio_sample[31];


endmodule
