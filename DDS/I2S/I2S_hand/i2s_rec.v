module auout_cs4334 (
    MCLKIN,  // input MCLK
    RST,  // input high reset
    L_EN,  // left data enable
    L_DIN,  // Left data in
    R_EN,  // right data enable
    R_DIN,  // right data in
    MCLKOUT,  // MCLKOUT
    LRCLK,  // L-R Clk out, bit 0 for Left ch, 1 for Right ch
    SCLK,  // serial clk out
    SDOUT_R,
    SDOUT_L
);  // serial data out

  input MCLKIN;
  input RST;
  input L_DIN;
  input R_DIN;
  input L_EN;
  input R_EN;

  output MCLKOUT;
  output LRCLK;
  output SCLK;
  output [15:0] SDOUT_L;
  output [16-1:0] SDOUT_R;

  wire CLK = MCLKIN;
  assign MCLKOUT = MCLKIN;
  // counter for each clock
  // MCLK = 512 x LRCLK , set SCLK=LRCLK*64�� that is MCLK = 8 * SCLK
  reg [ 9-1:0] clkCntR;
  reg [16-1:0] L_din_R1;
  reg [16-1:0] R_din_R1;
  reg LRclk_R1, sclk_R1;

  reg [32-1:0] R_data_sh_R, L_data_sh_R;

  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      clkCntR <= 0;
    end else begin
      clkCntR <= clkCntR + 1'b1;
    end
  end
  assign SCLK  = clkCntR[2];
  assign LRCLK = clkCntR[8];

  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      L_din_R1 <= 0;
      R_din_R1 <= 0;
    end else begin
      if (L_EN) L_din_R1 <= L_DIN;
      if (R_EN) R_din_R1 <= R_DIN;
    end
  end  // always

  wire LRCLK_H2L_W, LRCLK_L2H_W, SCLK_L2H_W, SCLK_H2L_W;
  assign LRCLK_H2L_W = (LRclk_R1 == 1'b1) && (LRCLK == 1'b0);
  assign LRCLK_L2H_W = (LRclk_R1 == 1'b0) && (LRCLK == 1'b1);
  assign SCLK_L2H_W  = (sclk_R1 == 1'b0) && (SCLK == 1'b1);
  assign SCLK_H2L_W  = (sclk_R1 == 1'b1) && (SCLK == 1'b0);

always @(posedge CLK or posedge RST) begin
    
end





endmodule
