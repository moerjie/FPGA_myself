// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\DDS_32BIT\hdlsrc\NCO\Discrete_FIR_Filter.v
// Created: 2023-09-22 18:18:53
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Discrete_FIR_Filter
// Source Path: NCO/Subsystem/Discrete FIR Filter
// Hierarchy Level: 2
// 
// Discrete FIR Filter
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Discrete_FIR_Filter
          (clk,
           reset,
           enb,
           dataIn,
           validIn,
           dataOut,
           validOut);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] dataIn;  // sfix16_En14
  input   validIn;
  output  signed [15:0] dataOut;  // sfix16_En13
  output  validOut;


  wire syncReset;


  assign syncReset = 1'b0;



  Filter u_FilterBank (.clk(clk),
                       .reset(reset),
                       .enb(enb),
                       .dataIn(dataIn),  // sfix16_En14
                       .validIn(validIn),
                       .syncReset(syncReset),
                       .dataOut(dataOut),  // sfix16_En13
                       .validOut(validOut)
                       );

endmodule  // Discrete_FIR_Filter
