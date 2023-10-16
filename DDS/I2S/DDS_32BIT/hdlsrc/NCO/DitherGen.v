// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\DDS_32BIT\hdlsrc\NCO\DitherGen.v
// Created: 2023-09-22 18:18:53
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DitherGen
// Source Path: NCO/Subsystem/NCO/DitherGen
// Hierarchy Level: 3
// 
// Internal Dither Generation Component
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DitherGen
          (clk,
           reset,
           enb,
           validIn,
           dither);


  input   clk;
  input   reset;
  input   enb;
  input   validIn;
  output  [3:0] dither;  // ufix4


  wire [18:0] pn_newvalue3;  // ufix19
  wire [17:0] pn_newvaluesf3;  // ufix18
  wire bit0_3;  // ufix1
  wire bit14_3;  // ufix1
  wire bit17_3;  // ufix1
  wire [18:0] pn_newvalue2;  // ufix19
  wire [17:0] pn_newvaluesf2;  // ufix18
  wire bit0_2;  // ufix1
  wire bit14_2;  // ufix1
  wire bit17_2;  // ufix1
  wire [18:0] pn_newvalue1;  // ufix19
  wire [17:0] pn_newvaluesf1;  // ufix18
  wire bit0_1;  // ufix1
  wire bit14_1;  // ufix1
  wire bit17_1;  // ufix1
  reg [18:0] pn_reg;  // ufix19
  wire [17:0] pn_newvaluesf0;  // ufix18
  wire bit14_0;  // ufix1
  wire bit17_0;  // ufix1
  wire bit18_0;  // ufix1
  wire bit0_0;  // ufix1
  wire xorout0;  // ufix1
  wire bit18_1;  // ufix1
  wire xorout1;  // ufix1
  wire bit18_2;  // ufix1
  wire xorout2;  // ufix1
  wire bit18_3;  // ufix1
  wire xorout3;  // ufix1
  wire [18:0] pn_newvalue4;  // ufix19


  assign pn_newvaluesf3 = pn_newvalue3[18:1];



  assign bit0_3 = pn_newvalue3[0];



  assign bit14_3 = pn_newvalue3[14];



  assign bit17_3 = pn_newvalue3[17];



  assign pn_newvaluesf2 = pn_newvalue2[18:1];



  assign bit0_2 = pn_newvalue2[0];



  assign bit14_2 = pn_newvalue2[14];



  assign bit17_2 = pn_newvalue2[17];



  assign pn_newvaluesf1 = pn_newvalue1[18:1];



  assign bit0_1 = pn_newvalue1[0];



  assign bit14_1 = pn_newvalue1[14];



  assign bit17_1 = pn_newvalue1[17];



  assign pn_newvaluesf0 = pn_reg[18:1];



  assign bit14_0 = pn_reg[14];



  assign bit17_0 = pn_reg[17];



  assign bit18_0 = pn_reg[18];



  // Stage1: Compute register output and shift
  assign xorout0 = bit0_0 ^ (bit14_0 ^ (bit18_0 ^ bit17_0));



  assign pn_newvalue1 = {xorout0, pn_newvaluesf0};



  assign bit18_1 = pn_newvalue1[18];



  // Stage2: Compute register output and shift
  assign xorout1 = bit0_1 ^ (bit14_1 ^ (bit18_1 ^ bit17_1));



  assign pn_newvalue2 = {xorout1, pn_newvaluesf1};



  assign bit18_2 = pn_newvalue2[18];



  // Stage3: Compute register output and shift
  assign xorout2 = bit0_2 ^ (bit14_2 ^ (bit18_2 ^ bit17_2));



  assign pn_newvalue3 = {xorout2, pn_newvaluesf2};



  assign bit18_3 = pn_newvalue3[18];



  // Stage4: Compute register output and shift
  assign xorout3 = bit0_3 ^ (bit14_3 ^ (bit18_3 ^ bit17_3));



  assign pn_newvalue4 = {xorout3, pn_newvaluesf3};



  // PNgen register
  always @(posedge clk or posedge reset)
    begin : PNgenRegister_process
      if (reset == 1'b1) begin
        pn_reg <= 19'b0000000000000000001;
      end
      else begin
        if (enb && validIn) begin
          pn_reg <= pn_newvalue4;
        end
      end
    end



  assign bit0_0 = pn_reg[0];



  // Dither Output
  assign dither = {bit0_0, bit0_1, bit0_2, bit0_3};



endmodule  // DitherGen
