module dec1to2 (
    clk,
    sel,
    in,
    out_inc,
    out_dec
);
    input sel,in,clk;
    output out_inc,out_dec;
    reg out_inc,out_dec;
always @(clk) begin
    if(sel == 1'b1)begin
        out_inc <= in;
    end
    else begin
         out_dec <= in;
    end
end
    
endmodule