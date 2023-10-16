// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\I2S\hdl_prj\NCO\hdlsrc\NCO_32\Subsystem.v
// Created: 2023-10-15 20:31:39
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Subsystem
// Source Path: NCO_32/Subsystem
// Hierarchy Level: 1
// Model version: 1.7
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Subsystem
          (clk,
           reset,
           enb,
           NCO_VLD_OUT,
           WAVE_Out,
           FIR_VLD_OUT);


  input   clk;
  input   reset;
  input   enb;
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
             .enb(enb),
             .validIn(Constant_out1),
             .sine(NCO_out1),  // sfix16_En14
             .validOut(NCO_out2)
             );

  assign NCO_VLD_OUT = NCO_out2;

  Discrete_FIR_Filter u_Discrete_FIR_Filter (.clk(clk),
                                             .reset(reset),
                                             .enb(enb),
                                             .dataIn(NCO_out1),  // sfix16_En14
                                             .validIn(Constant_out1),
                                             .dataOut(Discrete_FIR_Filter_out1),  // sfix16_En12
                                             .validOut(Discrete_FIR_Filter_out2)
                                             );

  assign WAVE_Out = Discrete_FIR_Filter_out1;

  assign FIR_VLD_OUT = Discrete_FIR_Filter_out2;

endmodule  // Subsystem

