// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\nco\nco.v
// Created: 2023-09-16 20:49:24
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 1
// Target subsystem base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// Out1                          ce_out        1
// Out2                          ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: nco
// Source Path: nco
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module nco
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
  output  signed [15:0] Out1;  // sfix16_En12
  output  Out2;


  wire signed [15:0] Subsystem_out1;  // sfix16_En12
  wire Subsystem_out2;


  Subsystem u_Subsystem (.clk(clk),
                         .reset(reset),
                         .enb(clk_enable),
                         .In1(In1),  // uint16
                         .Out1(Subsystem_out1),  // sfix16_En12
                         .Out2(Subsystem_out2)
                         );

  assign Out1 = Subsystem_out1;

  assign Out2 = Subsystem_out2;

  assign ce_out = clk_enable;

endmodule  // nco
