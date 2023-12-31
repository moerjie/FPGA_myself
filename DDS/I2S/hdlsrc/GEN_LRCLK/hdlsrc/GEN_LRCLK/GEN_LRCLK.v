// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\I2S\hdlsrc\GEN_LRCLK\hdlsrc\GEN_LRCLK\GEN_LRCLK.v
// Created: 2023-10-15 21:07:58
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0.2
// Target subsystem base rate: 0.2
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0.2
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// LRCK_OUT                      ce_out        0.2
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: GEN_LRCLK
// Source Path: GEN_LRCLK
// Hierarchy Level: 0
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module GEN_LRCLK
          (clk,
           reset,
           clk_enable,
           enb_1,
           ce_out,
           LRCK_OUT);


  input   clk;
  input   reset;
  input   clk_enable;
  input   enb_1;
  output  ce_out;
  output  LRCK_OUT;


  wire GEN_LRCLK_out1;


  GEN_LRCLK_block u_GEN_LRCLK (.clk(clk),
                               .reset(reset),
                               .enb(clk_enable),
                               .enb_1(enb_1),
                               .LRCK_OUT(GEN_LRCLK_out1)
                               );

  assign LRCK_OUT = GEN_LRCLK_out1;

  assign ce_out = clk_enable;

endmodule  // GEN_LRCLK

