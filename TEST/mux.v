module mux2to1 (
    clk,
    sel,
    in1,
    in2,
    out
);
    input sel,in1,in2,clk;
    output out;
    reg out;

    //assign out = sel?in1:in2;
    always @(clk) begin
        out<=sel?in1:in2;
    end

endmodule

module mux2to1_mul (
    clk,
    sel,
    in1,
    in2,
    out
);
    input sel,clk;
    input [6:0] in1,in2;
    output [6:0] out;
    reg [6:0] out;

    //assign out = sel?in1:in2;
    always @(clk) begin
        out<=sel?in1:in2;
    end

endmodule