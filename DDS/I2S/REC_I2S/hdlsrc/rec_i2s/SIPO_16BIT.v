// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\I2S\REC_I2S\hdlsrc\rec_i2s\SIPO_16BIT.v
// Created: 2023-10-27 21:14:54
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SIPO_16BIT
// Source Path: rec_i2s/REC_I2S/SIPO_32BIT_R/Subsystem/SIPO_16BIT
// Hierarchy Level: 4
// Model version: 1.39
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SIPO_16BIT
          (clk,
           reset,
           enb,
           SERIAL_IN,
           PARA_OUT_0,
           PARA_OUT_1,
           PARA_OUT_2,
           PARA_OUT_3,
           PARA_OUT_4,
           PARA_OUT_5,
           PARA_OUT_6,
           PARA_OUT_7,
           PARA_OUT_8,
           PARA_OUT_9,
           PARA_OUT_10,
           PARA_OUT_11,
           PARA_OUT_12,
           PARA_OUT_13,
           PARA_OUT_14,
           PARA_OUT_15,
           SERIAL_OUT);


  input   clk;
  input   reset;
  input   enb;
  input   SERIAL_IN;
  output  PARA_OUT_0;  // boolean
  output  PARA_OUT_1;  // boolean
  output  PARA_OUT_2;  // boolean
  output  PARA_OUT_3;  // boolean
  output  PARA_OUT_4;  // boolean
  output  PARA_OUT_5;  // boolean
  output  PARA_OUT_6;  // boolean
  output  PARA_OUT_7;  // boolean
  output  PARA_OUT_8;  // boolean
  output  PARA_OUT_9;  // boolean
  output  PARA_OUT_10;  // boolean
  output  PARA_OUT_11;  // boolean
  output  PARA_OUT_12;  // boolean
  output  PARA_OUT_13;  // boolean
  output  PARA_OUT_14;  // boolean
  output  PARA_OUT_15;  // boolean
  output  SERIAL_OUT;


  wire SIPO_8BIT_out1_0;
  wire SIPO_8BIT_out1_1;
  wire SIPO_8BIT_out1_2;
  wire SIPO_8BIT_out1_3;
  wire SIPO_8BIT_out1_4;
  wire SIPO_8BIT_out1_5;
  wire SIPO_8BIT_out1_6;
  wire SIPO_8BIT_out1_7;
  wire SIPO_8BIT_out2;
  wire SIPO_8BIT1_out1_0;
  wire SIPO_8BIT1_out1_1;
  wire SIPO_8BIT1_out1_2;
  wire SIPO_8BIT1_out1_3;
  wire SIPO_8BIT1_out1_4;
  wire SIPO_8BIT1_out1_5;
  wire SIPO_8BIT1_out1_6;
  wire SIPO_8BIT1_out1_7;
  wire SIPO_8BIT1_out2;


  SIPO_8BIT u_SIPO_8BIT (.clk(clk),
                         .reset(reset),
                         .enb(enb),
                         .SERIAL_IN(SERIAL_IN),
                         .PARA_OUT_0(SIPO_8BIT_out1_0),  // boolean
                         .PARA_OUT_1(SIPO_8BIT_out1_1),  // boolean
                         .PARA_OUT_2(SIPO_8BIT_out1_2),  // boolean
                         .PARA_OUT_3(SIPO_8BIT_out1_3),  // boolean
                         .PARA_OUT_4(SIPO_8BIT_out1_4),  // boolean
                         .PARA_OUT_5(SIPO_8BIT_out1_5),  // boolean
                         .PARA_OUT_6(SIPO_8BIT_out1_6),  // boolean
                         .PARA_OUT_7(SIPO_8BIT_out1_7),  // boolean
                         .SERIAL_OUT(SIPO_8BIT_out2)
                         );

  SIPO_8BIT1 u_SIPO_8BIT1 (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .SERIAL_IN(SIPO_8BIT_out2),
                           .PARA_OUT_0(SIPO_8BIT1_out1_0),  // boolean
                           .PARA_OUT_1(SIPO_8BIT1_out1_1),  // boolean
                           .PARA_OUT_2(SIPO_8BIT1_out1_2),  // boolean
                           .PARA_OUT_3(SIPO_8BIT1_out1_3),  // boolean
                           .PARA_OUT_4(SIPO_8BIT1_out1_4),  // boolean
                           .PARA_OUT_5(SIPO_8BIT1_out1_5),  // boolean
                           .PARA_OUT_6(SIPO_8BIT1_out1_6),  // boolean
                           .PARA_OUT_7(SIPO_8BIT1_out1_7),  // boolean
                           .SERIAL_OUT(SIPO_8BIT1_out2)
                           );

  assign PARA_OUT_0 = SIPO_8BIT1_out1_0;

  assign PARA_OUT_1 = SIPO_8BIT1_out1_1;

  assign PARA_OUT_2 = SIPO_8BIT1_out1_2;

  assign PARA_OUT_3 = SIPO_8BIT1_out1_3;

  assign PARA_OUT_4 = SIPO_8BIT1_out1_4;

  assign PARA_OUT_5 = SIPO_8BIT1_out1_5;

  assign PARA_OUT_6 = SIPO_8BIT1_out1_6;

  assign PARA_OUT_7 = SIPO_8BIT1_out1_7;

  assign PARA_OUT_8 = SIPO_8BIT_out1_0;

  assign PARA_OUT_9 = SIPO_8BIT_out1_1;

  assign PARA_OUT_10 = SIPO_8BIT_out1_2;

  assign PARA_OUT_11 = SIPO_8BIT_out1_3;

  assign PARA_OUT_12 = SIPO_8BIT_out1_4;

  assign PARA_OUT_13 = SIPO_8BIT_out1_5;

  assign PARA_OUT_14 = SIPO_8BIT_out1_6;

  assign PARA_OUT_15 = SIPO_8BIT_out1_7;

  assign SERIAL_OUT = SIPO_8BIT1_out2;

endmodule  // SIPO_16BIT

