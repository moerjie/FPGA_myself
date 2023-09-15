module sign2unsign (
    sig_in,
    unsig_out,

);
    input [15:0]sig_in;

    output [15:0]unsig_out;

    wire signed [15:0]sig_in;
    wire [15:0]unsig_out;

    assign unsig_out = sig_in+16'b1000_0000_0000_0000;

    
endmodule