// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\dds_matlab\hdlsrc\NCO_32\Subsystem.v
// Created: 2023-10-15 20:23:16
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0.001
// Target subsystem base rate: 0.001
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0.001
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// NCO_VLD_OUT                   ce_out        0.001
// WAVE_Out                      ce_out        0.001
// FIR_VLD_OUT                   ce_out        0.001
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Subsystem
// Source Path: NCO_32/Subsystem
// Hierarchy Level: 0
// Model version: 1.7
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Subsystem
          (clk,
           reset,
           clk_enable,
           In1,
           ce_out,
           NCO_VLD_OUT,
           WAVE_Out,
           FIR_VLD_OUT);


  input   clk;
  input   reset;
  input   clk_enable;
  input   [31:0] In1;  // uint32
  output  ce_out;
  output  NCO_VLD_OUT;
  output  signed [15:0] WAVE_Out;  // sfix16_En12
  output  FIR_VLD_OUT;


  wire Constant_out1;
  wire signed [15:0] NCO_out1;  // sfix16_En14
  wire NCO_out2;
  wire signed [15:0] Discrete_FIR_Filter_out1;  // sfix16_En12
  wire Discrete_FIR_Filter_out2;


  assign Constant_out1 = 1'b1;



  NCO u_NCO (.clk(clk),
             .reset(reset),
             .enb(clk_enable),
             .validIn(Constant_out1),
             .sine(NCO_out1),  // sfix16_En14
             .validOut(NCO_out2)
             );

  assign NCO_VLD_OUT = NCO_out2;

  Discrete_FIR_Filter u_Discrete_FIR_Filter (.clk(clk),
                                             .reset(reset),
                                             .enb(clk_enable),
                                             .dataIn(NCO_out1),  // sfix16_En14
                                             .validIn(Constant_out1),
                                             .dataOut(Discrete_FIR_Filter_out1),  // sfix16_En12
                                             .validOut(Discrete_FIR_Filter_out2)
                                             );

  assign WAVE_Out = Discrete_FIR_Filter_out1;

  assign FIR_VLD_OUT = Discrete_FIR_Filter_out2;

  assign ce_out = clk_enable;

endmodule  // Subsystem

