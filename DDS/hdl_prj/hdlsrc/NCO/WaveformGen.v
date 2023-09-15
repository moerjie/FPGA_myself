// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\NCO\WaveformGen.v
// Created: 2023-09-15 16:02:10
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: WaveformGen
// Source Path: NCO/Subsystem/NCO/WaveformGen
// Hierarchy Level: 2
// 
// Wave form Generation Component
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module WaveformGen
          (clk,
           reset,
           enb,
           phaseIdx,
           sine);


  input   clk;
  input   reset;
  input   enb;
  input   [11:0] phaseIdx;  // ufix12_E4
  output  signed [15:0] sine;  // sfix16_En14


  reg [11:0] phaseIdxReg;  // ufix12_E4
  wire selsign;  // ufix1
  reg  [0:2] SelsignRegister_reg;  // ufix1 [3]
  wire [0:2] SelsignRegister_reg_next;  // ufix1 [3]
  wire selsignreg;  // ufix1
  wire [10:0] lutaddrexd;  // ufix11
  wire addrOverFsin;  // ufix1
  reg  [0:2] AddrOverFsinRegister_reg;  // ufix1 [3]
  wire [0:2] AddrOverFsinRegister_reg_next;  // ufix1 [3]
  wire addrOverFsinreg;  // ufix1
  wire seladdr;  // ufix1
  wire [9:0] lutaddr1;  // ufix10
  wire [10:0] lutaddrmax;  // ufix11
  wire [11:0] subtractor_sub_temp;  // ufix12
  wire [11:0] subtractor_1;  // ufix12
  wire [11:0] subtractor_2;  // ufix12
  wire [9:0] lutaddr2;  // ufix10
  wire [9:0] lutaddrsin;  // ufix10
  wire signed [15:0] lutoutsin;  // sfix16_En14
  wire signed [15:0] ampOne;  // sfix16_En14
  wire signed [15:0] lutoutsin_ampOne;  // sfix16_En14
  wire signed [16:0] uminus_cast;  // sfix17_En14
  wire signed [16:0] uminus_cast_1;  // sfix17_En14
  wire signed [15:0] lutoutsin_ampOne_inv;  // sfix16_En14


  always @(posedge clk or posedge reset)
    begin : phaseIdxRegister_process
      if (reset == 1'b1) begin
        phaseIdxReg <= 12'b000000000000;
      end
      else begin
        if (enb) begin
          phaseIdxReg <= phaseIdx;
        end
      end
    end



  // Sine sign selection signal
  assign selsign = phaseIdxReg[11];



  always @(posedge clk or posedge reset)
    begin : SelsignRegister_process
      if (reset == 1'b1) begin
        SelsignRegister_reg[0] <= 1'b0;
        SelsignRegister_reg[1] <= 1'b0;
        SelsignRegister_reg[2] <= 1'b0;
      end
      else begin
        if (enb) begin
          SelsignRegister_reg[0] <= SelsignRegister_reg_next[0];
          SelsignRegister_reg[1] <= SelsignRegister_reg_next[1];
          SelsignRegister_reg[2] <= SelsignRegister_reg_next[2];
        end
      end
    end

  assign selsignreg = SelsignRegister_reg[2];
  assign SelsignRegister_reg_next[0] = selsign;
  assign SelsignRegister_reg_next[1] = SelsignRegister_reg[0];
  assign SelsignRegister_reg_next[2] = SelsignRegister_reg[1];



  // Get extended LUT address for overflow handling
  assign lutaddrexd = phaseIdxReg[10:0];



  // Detect sine overflow
  assign addrOverFsin = lutaddrexd == 11'b10000000000;



  always @(posedge clk or posedge reset)
    begin : AddrOverFsinRegister_process
      if (reset == 1'b1) begin
        AddrOverFsinRegister_reg[0] <= 1'b0;
        AddrOverFsinRegister_reg[1] <= 1'b0;
        AddrOverFsinRegister_reg[2] <= 1'b0;
      end
      else begin
        if (enb) begin
          AddrOverFsinRegister_reg[0] <= AddrOverFsinRegister_reg_next[0];
          AddrOverFsinRegister_reg[1] <= AddrOverFsinRegister_reg_next[1];
          AddrOverFsinRegister_reg[2] <= AddrOverFsinRegister_reg_next[2];
        end
      end
    end

  assign addrOverFsinreg = AddrOverFsinRegister_reg[2];
  assign AddrOverFsinRegister_reg_next[0] = addrOverFsin;
  assign AddrOverFsinRegister_reg_next[1] = AddrOverFsinRegister_reg[0];
  assign AddrOverFsinRegister_reg_next[2] = AddrOverFsinRegister_reg[1];



  assign seladdr = phaseIdxReg[10];



  assign lutaddr1 = phaseIdxReg[9:0];



  // Map LUT address in correct phase
  assign lutaddrmax = 11'b10000000000;



  assign subtractor_1 = {1'b0, lutaddrmax};
  assign subtractor_2 = {2'b0, lutaddr1};
  assign subtractor_sub_temp = subtractor_1 - subtractor_2;
  assign lutaddr2 = subtractor_sub_temp[9:0];



  assign lutaddrsin = (seladdr == 1'b0 ? lutaddr1 :
              lutaddr2);



  LookUpTableGen u_SineWave_inst (.clk(clk),
                                  .reset(reset),
                                  .enb(enb),
                                  .lutaddr(lutaddrsin),  // ufix10
                                  .lutoutput(lutoutsin)  // sfix16_En14
                                  );

  assign ampOne = 16'sb0100000000000000;



  // Assign sine amplitude One
  assign lutoutsin_ampOne = (addrOverFsinreg == 1'b0 ? lutoutsin :
              ampOne);



  assign uminus_cast = {lutoutsin_ampOne[15], lutoutsin_ampOne};
  assign uminus_cast_1 =  - (uminus_cast);
  assign lutoutsin_ampOne_inv = uminus_cast_1[15:0];



  // Select sign of Sine output
  assign sine = (selsignreg == 1'b0 ? lutoutsin_ampOne :
              lutoutsin_ampOne_inv);



endmodule  // WaveformGen

