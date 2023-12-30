// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\rec_i2s\DECODER.v
// Created: 2023-10-28 15:45:10
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DECODER
// Source Path: rec_i2s/REC_I2S_NOFIFO/DECODER
// Hierarchy Level: 1
// Model version: 1.42
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DECODER
          (IN_L,
           SEL,
           L_OUT,
           R_OUT);


  input   IN_L;
  input   SEL;
  output  L_OUT;
  output  R_OUT;


  wire Logical_Operator2_out1;
  wire Logical_Operator_out1;
  wire Logical_Operator1_out1;


  assign Logical_Operator2_out1 =  ~ SEL;



  assign Logical_Operator_out1 = IN_L & Logical_Operator2_out1;



  assign L_OUT = Logical_Operator_out1;

  assign Logical_Operator1_out1 = IN_L & SEL;



  assign R_OUT = Logical_Operator1_out1;

endmodule  // DECODER
