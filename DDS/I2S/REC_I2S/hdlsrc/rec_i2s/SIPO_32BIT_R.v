// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\I2S\REC_I2S\hdlsrc\rec_i2s\SIPO_32BIT_R.v
// Created: 2023-10-27 21:14:54
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SIPO_32BIT_R
// Source Path: rec_i2s/REC_I2S/SIPO_32BIT_R
// Hierarchy Level: 2
// Model version: 1.39
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SIPO_32BIT_R
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
           PARA_OUT_16,
           PARA_OUT_17,
           PARA_OUT_18,
           PARA_OUT_19,
           PARA_OUT_20,
           PARA_OUT_21,
           PARA_OUT_22,
           PARA_OUT_23,
           PARA_OUT_24,
           PARA_OUT_25,
           PARA_OUT_26,
           PARA_OUT_27,
           PARA_OUT_28,
           PARA_OUT_29,
           PARA_OUT_30,
           PARA_OUT_31);


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
  output  PARA_OUT_16;  // boolean
  output  PARA_OUT_17;  // boolean
  output  PARA_OUT_18;  // boolean
  output  PARA_OUT_19;  // boolean
  output  PARA_OUT_20;  // boolean
  output  PARA_OUT_21;  // boolean
  output  PARA_OUT_22;  // boolean
  output  PARA_OUT_23;  // boolean
  output  PARA_OUT_24;  // boolean
  output  PARA_OUT_25;  // boolean
  output  PARA_OUT_26;  // boolean
  output  PARA_OUT_27;  // boolean
  output  PARA_OUT_28;  // boolean
  output  PARA_OUT_29;  // boolean
  output  PARA_OUT_30;  // boolean
  output  PARA_OUT_31;  // boolean


  wire Subsystem_out1_0;
  wire Subsystem_out1_1;
  wire Subsystem_out1_2;
  wire Subsystem_out1_3;
  wire Subsystem_out1_4;
  wire Subsystem_out1_5;
  wire Subsystem_out1_6;
  wire Subsystem_out1_7;
  wire Subsystem_out1_8;
  wire Subsystem_out1_9;
  wire Subsystem_out1_10;
  wire Subsystem_out1_11;
  wire Subsystem_out1_12;
  wire Subsystem_out1_13;
  wire Subsystem_out1_14;
  wire Subsystem_out1_15;
  wire Subsystem_out1_16;
  wire Subsystem_out1_17;
  wire Subsystem_out1_18;
  wire Subsystem_out1_19;
  wire Subsystem_out1_20;
  wire Subsystem_out1_21;
  wire Subsystem_out1_22;
  wire Subsystem_out1_23;
  wire Subsystem_out1_24;
  wire Subsystem_out1_25;
  wire Subsystem_out1_26;
  wire Subsystem_out1_27;
  wire Subsystem_out1_28;
  wire Subsystem_out1_29;
  wire Subsystem_out1_30;
  wire Subsystem_out1_31;


  Subsystem u_Subsystem (.clk(clk),
                         .reset(reset),
                         .enb(enb),
                         .SERIAL_IN(SERIAL_IN),
                         .PARA_OUT_32BIT_0(Subsystem_out1_0),  // boolean
                         .PARA_OUT_32BIT_1(Subsystem_out1_1),  // boolean
                         .PARA_OUT_32BIT_2(Subsystem_out1_2),  // boolean
                         .PARA_OUT_32BIT_3(Subsystem_out1_3),  // boolean
                         .PARA_OUT_32BIT_4(Subsystem_out1_4),  // boolean
                         .PARA_OUT_32BIT_5(Subsystem_out1_5),  // boolean
                         .PARA_OUT_32BIT_6(Subsystem_out1_6),  // boolean
                         .PARA_OUT_32BIT_7(Subsystem_out1_7),  // boolean
                         .PARA_OUT_32BIT_8(Subsystem_out1_8),  // boolean
                         .PARA_OUT_32BIT_9(Subsystem_out1_9),  // boolean
                         .PARA_OUT_32BIT_10(Subsystem_out1_10),  // boolean
                         .PARA_OUT_32BIT_11(Subsystem_out1_11),  // boolean
                         .PARA_OUT_32BIT_12(Subsystem_out1_12),  // boolean
                         .PARA_OUT_32BIT_13(Subsystem_out1_13),  // boolean
                         .PARA_OUT_32BIT_14(Subsystem_out1_14),  // boolean
                         .PARA_OUT_32BIT_15(Subsystem_out1_15),  // boolean
                         .PARA_OUT_32BIT_16(Subsystem_out1_16),  // boolean
                         .PARA_OUT_32BIT_17(Subsystem_out1_17),  // boolean
                         .PARA_OUT_32BIT_18(Subsystem_out1_18),  // boolean
                         .PARA_OUT_32BIT_19(Subsystem_out1_19),  // boolean
                         .PARA_OUT_32BIT_20(Subsystem_out1_20),  // boolean
                         .PARA_OUT_32BIT_21(Subsystem_out1_21),  // boolean
                         .PARA_OUT_32BIT_22(Subsystem_out1_22),  // boolean
                         .PARA_OUT_32BIT_23(Subsystem_out1_23),  // boolean
                         .PARA_OUT_32BIT_24(Subsystem_out1_24),  // boolean
                         .PARA_OUT_32BIT_25(Subsystem_out1_25),  // boolean
                         .PARA_OUT_32BIT_26(Subsystem_out1_26),  // boolean
                         .PARA_OUT_32BIT_27(Subsystem_out1_27),  // boolean
                         .PARA_OUT_32BIT_28(Subsystem_out1_28),  // boolean
                         .PARA_OUT_32BIT_29(Subsystem_out1_29),  // boolean
                         .PARA_OUT_32BIT_30(Subsystem_out1_30),  // boolean
                         .PARA_OUT_32BIT_31(Subsystem_out1_31)  // boolean
                         );

  assign PARA_OUT_0 = Subsystem_out1_0;

  assign PARA_OUT_1 = Subsystem_out1_1;

  assign PARA_OUT_2 = Subsystem_out1_2;

  assign PARA_OUT_3 = Subsystem_out1_3;

  assign PARA_OUT_4 = Subsystem_out1_4;

  assign PARA_OUT_5 = Subsystem_out1_5;

  assign PARA_OUT_6 = Subsystem_out1_6;

  assign PARA_OUT_7 = Subsystem_out1_7;

  assign PARA_OUT_8 = Subsystem_out1_8;

  assign PARA_OUT_9 = Subsystem_out1_9;

  assign PARA_OUT_10 = Subsystem_out1_10;

  assign PARA_OUT_11 = Subsystem_out1_11;

  assign PARA_OUT_12 = Subsystem_out1_12;

  assign PARA_OUT_13 = Subsystem_out1_13;

  assign PARA_OUT_14 = Subsystem_out1_14;

  assign PARA_OUT_15 = Subsystem_out1_15;

  assign PARA_OUT_16 = Subsystem_out1_16;

  assign PARA_OUT_17 = Subsystem_out1_17;

  assign PARA_OUT_18 = Subsystem_out1_18;

  assign PARA_OUT_19 = Subsystem_out1_19;

  assign PARA_OUT_20 = Subsystem_out1_20;

  assign PARA_OUT_21 = Subsystem_out1_21;

  assign PARA_OUT_22 = Subsystem_out1_22;

  assign PARA_OUT_23 = Subsystem_out1_23;

  assign PARA_OUT_24 = Subsystem_out1_24;

  assign PARA_OUT_25 = Subsystem_out1_25;

  assign PARA_OUT_26 = Subsystem_out1_26;

  assign PARA_OUT_27 = Subsystem_out1_27;

  assign PARA_OUT_28 = Subsystem_out1_28;

  assign PARA_OUT_29 = Subsystem_out1_29;

  assign PARA_OUT_30 = Subsystem_out1_30;

  assign PARA_OUT_31 = Subsystem_out1_31;

endmodule  // SIPO_32BIT_R

