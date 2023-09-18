// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_4\hdlsrc\NCO\Discrete_FIR_Filter.v
// Created: 2023-09-18 13:12:41
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
  input   signed [7:0] dataIn;  // sfix8_En7
  input   validIn;
  output  signed [7:0] dataOut;  // sfix8_En6
  output  validOut;


  wire syncReset;


  assign syncReset = 1'b0;



  Filter u_FilterBank (.clk(clk),
                       .reset(reset),
                       .enb(enb),
                       .dataIn(dataIn),  // sfix8_En7
                       .validIn(validIn),
                       .syncReset(syncReset),
                       .dataOut(dataOut),  // sfix8_En6
                       .validOut(validOut)
                       );

endmodule  // Discrete_FIR_Filter
