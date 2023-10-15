module mux (
    nco_in,
    fir_in,
    sel,
    clk,
    out
);
  input [11:0] nco_in, fir_in;
  input sel, clk;
  output [11:0] out;
  reg [11:0] out;
  always @(posedge clk) begin
    if (sel == 1'b1) begin
      out <= nco_in;
    end else begin
      out <= fir_in;
    end

  end
endmodule
