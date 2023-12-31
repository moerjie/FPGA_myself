// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\NCO\NCO.v
// Created: 2023-09-18 14:21:55
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
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
// WAV_OUT                       ce_out        0.001
// FIR_VALID_OUT                 ce_out        0.001
// NCO_VALID_OUT                 ce_out        0.001
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: NCO
// Source Path: NCO
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module NCO
          (clk,
           reset,
           clk_enable,
           INC_IN,
           ce_out,
           WAV_OUT,
           FIR_VALID_OUT,
           NCO_VALID_OUT);


  input   clk;
  input   reset;
  input   clk_enable;
  input   [31:0] INC_IN;  // uint32
  output  ce_out;
  output  signed [7:0] WAV_OUT;  // sfix8_En6
  output  FIR_VALID_OUT;
  output  NCO_VALID_OUT;


  wire signed [7:0] Subsystem_out1;  // sfix8_En6
  wire Subsystem_out2;
  wire Subsystem_out3;


  Subsystem u_Subsystem (.clk(clk),
                         .reset(reset),
                         .enb(clk_enable),
                         .In1(INC_IN),  // uint32
                         .FIR_OUT(Subsystem_out1),  // sfix8_En6
                         .FIR_VALID_OUT(Subsystem_out2),
                         .NCO_VALID_OUT(Subsystem_out3)
                         );

  assign WAV_OUT = Subsystem_out1;

  assign FIR_VALID_OUT = Subsystem_out2;

  assign NCO_VALID_OUT = Subsystem_out3;

  assign ce_out = clk_enable;

endmodule  // NCO

