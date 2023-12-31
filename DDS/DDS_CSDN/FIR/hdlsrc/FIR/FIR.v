// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\FIR\hdlsrc\FIR\FIR.v
// Created: 2023-09-22 18:54:29
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0
// Target subsystem base rate: inf
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// Out1                          ce_out        0
// Out2                          ce_out        0
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: FIR
// Source Path: FIR
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module FIR
          (clk,
           reset,
           clk_enable,
           In1,
           ce_out,
           Out1,
           Out2);


  input   clk;
  input   reset;
  input   clk_enable;
  input   [15:0] In1;  // uint16
  output  ce_out;
  output  signed [15:0] Out1;  // sfix16_E2
  output  Out2;


  wire Constant_out1;
  wire signed [15:0] Discrete_FIR_Filter_out1;  // sfix16_E2
  wire Discrete_FIR_Filter_out2;


  assign Constant_out1 = 1'b1;



  Discrete_FIR_Filter u_Discrete_FIR_Filter (.clk(clk),
                                             .reset(reset),
                                             .enb(clk_enable),
                                             .dataIn(In1),  // uint16
                                             .validIn(Constant_out1),
                                             .dataOut(Discrete_FIR_Filter_out1),  // sfix16_E2
                                             .validOut(Discrete_FIR_Filter_out2)
                                             );

  assign Out1 = Discrete_FIR_Filter_out1;

  assign Out2 = Discrete_FIR_Filter_out2;

  assign ce_out = clk_enable;

endmodule  // FIR

