module sign2unsign (
    sig_in,
    unsig_out,
    en
);
    input [11:0]sig_in;
    input en;
    output [11:0]unsig_out;

    wire signed [11:0]sig_in;
    wire [11:0]unsig_out;
    
    assign unsig_out = sig_in+12'b1000_0000_0000;
endmodule