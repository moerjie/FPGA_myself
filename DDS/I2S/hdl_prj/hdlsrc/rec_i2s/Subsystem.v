// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\rec_i2s\Subsystem.v
// Created: 2023-10-28 15:45:10
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Subsystem
// Source Path: rec_i2s/REC_I2S_NOFIFO/SIPO_32BIT_R/Subsystem
// Hierarchy Level: 2
// Model version: 1.42
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Subsystem
          (clk,
           reset,
           enb,
           SERIAL_IN,
           PARA_OUT_32BIT_0,
           PARA_OUT_32BIT_1,
           PARA_OUT_32BIT_2,
           PARA_OUT_32BIT_3,
           PARA_OUT_32BIT_4,
           PARA_OUT_32BIT_5,
           PARA_OUT_32BIT_6,
           PARA_OUT_32BIT_7,
           PARA_OUT_32BIT_8,
           PARA_OUT_32BIT_9,
           PARA_OUT_32BIT_10,
           PARA_OUT_32BIT_11,
           PARA_OUT_32BIT_12,
           PARA_OUT_32BIT_13,
           PARA_OUT_32BIT_14,
           PARA_OUT_32BIT_15,
           PARA_OUT_32BIT_16,
           PARA_OUT_32BIT_17,
           PARA_OUT_32BIT_18,
           PARA_OUT_32BIT_19,
           PARA_OUT_32BIT_20,
           PARA_OUT_32BIT_21,
           PARA_OUT_32BIT_22,
           PARA_OUT_32BIT_23,
           PARA_OUT_32BIT_24,
           PARA_OUT_32BIT_25,
           PARA_OUT_32BIT_26,
           PARA_OUT_32BIT_27,
           PARA_OUT_32BIT_28,
           PARA_OUT_32BIT_29,
           PARA_OUT_32BIT_30,
           PARA_OUT_32BIT_31);


  input   clk;
  input   reset;
  input   enb;
  input   SERIAL_IN;
  output  PARA_OUT_32BIT_0;  // boolean
  output  PARA_OUT_32BIT_1;  // boolean
  output  PARA_OUT_32BIT_2;  // boolean
  output  PARA_OUT_32BIT_3;  // boolean
  output  PARA_OUT_32BIT_4;  // boolean
  output  PARA_OUT_32BIT_5;  // boolean
  output  PARA_OUT_32BIT_6;  // boolean
  output  PARA_OUT_32BIT_7;  // boolean
  output  PARA_OUT_32BIT_8;  // boolean
  output  PARA_OUT_32BIT_9;  // boolean
  output  PARA_OUT_32BIT_10;  // boolean
  output  PARA_OUT_32BIT_11;  // boolean
  output  PARA_OUT_32BIT_12;  // boolean
  output  PARA_OUT_32BIT_13;  // boolean
  output  PARA_OUT_32BIT_14;  // boolean
  output  PARA_OUT_32BIT_15;  // boolean
  output  PARA_OUT_32BIT_16;  // boolean
  output  PARA_OUT_32BIT_17;  // boolean
  output  PARA_OUT_32BIT_18;  // boolean
  output  PARA_OUT_32BIT_19;  // boolean
  output  PARA_OUT_32BIT_20;  // boolean
  output  PARA_OUT_32BIT_21;  // boolean
  output  PARA_OUT_32BIT_22;  // boolean
  output  PARA_OUT_32BIT_23;  // boolean
  output  PARA_OUT_32BIT_24;  // boolean
  output  PARA_OUT_32BIT_25;  // boolean
  output  PARA_OUT_32BIT_26;  // boolean
  output  PARA_OUT_32BIT_27;  // boolean
  output  PARA_OUT_32BIT_28;  // boolean
  output  PARA_OUT_32BIT_29;  // boolean
  output  PARA_OUT_32BIT_30;  // boolean
  output  PARA_OUT_32BIT_31;  // boolean


  wire SIPO_16BIT_out1_0;
  wire SIPO_16BIT_out1_1;
  wire SIPO_16BIT_out1_2;
  wire SIPO_16BIT_out1_3;
  wire SIPO_16BIT_out1_4;
  wire SIPO_16BIT_out1_5;
  wire SIPO_16BIT_out1_6;
  wire SIPO_16BIT_out1_7;
  wire SIPO_16BIT_out1_8;
  wire SIPO_16BIT_out1_9;
  wire SIPO_16BIT_out1_10;
  wire SIPO_16BIT_out1_11;
  wire SIPO_16BIT_out1_12;
  wire SIPO_16BIT_out1_13;
  wire SIPO_16BIT_out1_14;
  wire SIPO_16BIT_out1_15;
  wire SIPO_16BIT_out2;
  wire SIPO_16BIT1_out1_0;
  wire SIPO_16BIT1_out1_1;
  wire SIPO_16BIT1_out1_2;
  wire SIPO_16BIT1_out1_3;
  wire SIPO_16BIT1_out1_4;
  wire SIPO_16BIT1_out1_5;
  wire SIPO_16BIT1_out1_6;
  wire SIPO_16BIT1_out1_7;
  wire SIPO_16BIT1_out1_8;
  wire SIPO_16BIT1_out1_9;
  wire SIPO_16BIT1_out1_10;
  wire SIPO_16BIT1_out1_11;
  wire SIPO_16BIT1_out1_12;
  wire SIPO_16BIT1_out1_13;
  wire SIPO_16BIT1_out1_14;
  wire SIPO_16BIT1_out1_15;


  SIPO_16BIT u_SIPO_16BIT (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .SERIAL_IN(SERIAL_IN),
                           .PARA_OUT_0(SIPO_16BIT_out1_0),  // boolean
                           .PARA_OUT_1(SIPO_16BIT_out1_1),  // boolean
                           .PARA_OUT_2(SIPO_16BIT_out1_2),  // boolean
                           .PARA_OUT_3(SIPO_16BIT_out1_3),  // boolean
                           .PARA_OUT_4(SIPO_16BIT_out1_4),  // boolean
                           .PARA_OUT_5(SIPO_16BIT_out1_5),  // boolean
                           .PARA_OUT_6(SIPO_16BIT_out1_6),  // boolean
                           .PARA_OUT_7(SIPO_16BIT_out1_7),  // boolean
                           .PARA_OUT_8(SIPO_16BIT_out1_8),  // boolean
                           .PARA_OUT_9(SIPO_16BIT_out1_9),  // boolean
                           .PARA_OUT_10(SIPO_16BIT_out1_10),  // boolean
                           .PARA_OUT_11(SIPO_16BIT_out1_11),  // boolean
                           .PARA_OUT_12(SIPO_16BIT_out1_12),  // boolean
                           .PARA_OUT_13(SIPO_16BIT_out1_13),  // boolean
                           .PARA_OUT_14(SIPO_16BIT_out1_14),  // boolean
                           .PARA_OUT_15(SIPO_16BIT_out1_15),  // boolean
                           .SERIAL_OUT(SIPO_16BIT_out2)
                           );

  SIPO_16BIT1 u_SIPO_16BIT1 (.clk(clk),
                             .reset(reset),
                             .enb(enb),
                             .SERIAL_IN(SIPO_16BIT_out2),
                             .PARA_OUT_0(SIPO_16BIT1_out1_0),  // boolean
                             .PARA_OUT_1(SIPO_16BIT1_out1_1),  // boolean
                             .PARA_OUT_2(SIPO_16BIT1_out1_2),  // boolean
                             .PARA_OUT_3(SIPO_16BIT1_out1_3),  // boolean
                             .PARA_OUT_4(SIPO_16BIT1_out1_4),  // boolean
                             .PARA_OUT_5(SIPO_16BIT1_out1_5),  // boolean
                             .PARA_OUT_6(SIPO_16BIT1_out1_6),  // boolean
                             .PARA_OUT_7(SIPO_16BIT1_out1_7),  // boolean
                             .PARA_OUT_8(SIPO_16BIT1_out1_8),  // boolean
                             .PARA_OUT_9(SIPO_16BIT1_out1_9),  // boolean
                             .PARA_OUT_10(SIPO_16BIT1_out1_10),  // boolean
                             .PARA_OUT_11(SIPO_16BIT1_out1_11),  // boolean
                             .PARA_OUT_12(SIPO_16BIT1_out1_12),  // boolean
                             .PARA_OUT_13(SIPO_16BIT1_out1_13),  // boolean
                             .PARA_OUT_14(SIPO_16BIT1_out1_14),  // boolean
                             .PARA_OUT_15(SIPO_16BIT1_out1_15)  // boolean
                             );

  assign PARA_OUT_32BIT_0 = SIPO_16BIT1_out1_0;

  assign PARA_OUT_32BIT_1 = SIPO_16BIT1_out1_1;

  assign PARA_OUT_32BIT_2 = SIPO_16BIT1_out1_2;

  assign PARA_OUT_32BIT_3 = SIPO_16BIT1_out1_3;

  assign PARA_OUT_32BIT_4 = SIPO_16BIT1_out1_4;

  assign PARA_OUT_32BIT_5 = SIPO_16BIT1_out1_5;

  assign PARA_OUT_32BIT_6 = SIPO_16BIT1_out1_6;

  assign PARA_OUT_32BIT_7 = SIPO_16BIT1_out1_7;

  assign PARA_OUT_32BIT_8 = SIPO_16BIT1_out1_8;

  assign PARA_OUT_32BIT_9 = SIPO_16BIT1_out1_9;

  assign PARA_OUT_32BIT_10 = SIPO_16BIT1_out1_10;

  assign PARA_OUT_32BIT_11 = SIPO_16BIT1_out1_11;

  assign PARA_OUT_32BIT_12 = SIPO_16BIT1_out1_12;

  assign PARA_OUT_32BIT_13 = SIPO_16BIT1_out1_13;

  assign PARA_OUT_32BIT_14 = SIPO_16BIT1_out1_14;

  assign PARA_OUT_32BIT_15 = SIPO_16BIT1_out1_15;

  assign PARA_OUT_32BIT_16 = SIPO_16BIT_out1_0;

  assign PARA_OUT_32BIT_17 = SIPO_16BIT_out1_1;

  assign PARA_OUT_32BIT_18 = SIPO_16BIT_out1_2;

  assign PARA_OUT_32BIT_19 = SIPO_16BIT_out1_3;

  assign PARA_OUT_32BIT_20 = SIPO_16BIT_out1_4;

  assign PARA_OUT_32BIT_21 = SIPO_16BIT_out1_5;

  assign PARA_OUT_32BIT_22 = SIPO_16BIT_out1_6;

  assign PARA_OUT_32BIT_23 = SIPO_16BIT_out1_7;

  assign PARA_OUT_32BIT_24 = SIPO_16BIT_out1_8;

  assign PARA_OUT_32BIT_25 = SIPO_16BIT_out1_9;

  assign PARA_OUT_32BIT_26 = SIPO_16BIT_out1_10;

  assign PARA_OUT_32BIT_27 = SIPO_16BIT_out1_11;

  assign PARA_OUT_32BIT_28 = SIPO_16BIT_out1_12;

  assign PARA_OUT_32BIT_29 = SIPO_16BIT_out1_13;

  assign PARA_OUT_32BIT_30 = SIPO_16BIT_out1_14;

  assign PARA_OUT_32BIT_31 = SIPO_16BIT_out1_15;

endmodule  // Subsystem
