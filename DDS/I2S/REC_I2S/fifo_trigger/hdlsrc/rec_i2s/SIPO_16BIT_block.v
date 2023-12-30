// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\I2S\REC_I2S\fifo_trigger\hdlsrc\rec_i2s\SIPO_16BIT_block.v
// Created: 2023-10-29 14:30:23
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SIPO_16BIT_block
// Source Path: rec_i2s/REC_I2S_NOFIFO/Subsystem1/SIPO_16BIT
// Hierarchy Level: 2
// Model version: 1.58
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SIPO_16BIT_block
          (clk,
           reset,
           enb,
           SERIAL_IN,
           ENABLE,
           PARA_OUT_signal1_signal1_signal1_signal1,
           PARA_OUT_signal1_signal1_signal1_signal2,
           PARA_OUT_signal1_signal1_signal2_signal1,
           PARA_OUT_signal1_signal1_signal2_signal2,
           PARA_OUT_signal1_signal2_signal1_signal1,
           PARA_OUT_signal1_signal2_signal1_signal2,
           PARA_OUT_signal1_signal2_signal2_signal1,
           PARA_OUT_signal1_signal2_signal2_signal2,
           PARA_OUT_signal2_signal1_signal1_signal1,
           PARA_OUT_signal2_signal1_signal1_signal2,
           PARA_OUT_signal2_signal1_signal2_signal1,
           PARA_OUT_signal2_signal1_signal2_signal2,
           PARA_OUT_signal2_signal2_signal1_signal1,
           PARA_OUT_signal2_signal2_signal1_signal2,
           PARA_OUT_signal2_signal2_signal2_signal1,
           PARA_OUT_signal2_signal2_signal2_signal2,
           SERIAL_OUT);


  input   clk;
  input   reset;
  input   enb;
  input   SERIAL_IN;
  input   ENABLE;
  output  PARA_OUT_signal1_signal1_signal1_signal1;
  output  PARA_OUT_signal1_signal1_signal1_signal2;
  output  PARA_OUT_signal1_signal1_signal2_signal1;
  output  PARA_OUT_signal1_signal1_signal2_signal2;
  output  PARA_OUT_signal1_signal2_signal1_signal1;
  output  PARA_OUT_signal1_signal2_signal1_signal2;
  output  PARA_OUT_signal1_signal2_signal2_signal1;
  output  PARA_OUT_signal1_signal2_signal2_signal2;
  output  PARA_OUT_signal2_signal1_signal1_signal1;
  output  PARA_OUT_signal2_signal1_signal1_signal2;
  output  PARA_OUT_signal2_signal1_signal2_signal1;
  output  PARA_OUT_signal2_signal1_signal2_signal2;
  output  PARA_OUT_signal2_signal2_signal1_signal1;
  output  PARA_OUT_signal2_signal2_signal1_signal2;
  output  PARA_OUT_signal2_signal2_signal2_signal1;
  output  PARA_OUT_signal2_signal2_signal2_signal2;
  output  SERIAL_OUT;


  wire SIPO_8BIT_out1_signal1_signal1_signal1;
  wire SIPO_8BIT_out1_signal1_signal1_signal2;
  wire SIPO_8BIT_out1_signal1_signal2_signal1;
  wire SIPO_8BIT_out1_signal1_signal2_signal2;
  wire SIPO_8BIT_out1_signal2_signal1_signal1;
  wire SIPO_8BIT_out1_signal2_signal1_signal2;
  wire SIPO_8BIT_out1_signal2_signal2_signal1;
  wire SIPO_8BIT_out1_signal2_signal2_signal2;
  wire SIPO_8BIT_out2;
  wire SIPO_8BIT1_out1_signal1_signal1_signal1;
  wire SIPO_8BIT1_out1_signal1_signal1_signal2;
  wire SIPO_8BIT1_out1_signal1_signal2_signal1;
  wire SIPO_8BIT1_out1_signal1_signal2_signal2;
  wire SIPO_8BIT1_out1_signal2_signal1_signal1;
  wire SIPO_8BIT1_out1_signal2_signal1_signal2;
  wire SIPO_8BIT1_out1_signal2_signal2_signal1;
  wire SIPO_8BIT1_out1_signal2_signal2_signal2;
  wire SIPO_8BIT1_out2;


  SIPO_8BIT_block1 u_SIPO_8BIT (.clk(clk),
                                .reset(reset),
                                .enb(enb),
                                .SERIAL_IN(SERIAL_IN),
                                .ENABLE1(ENABLE),
                                .PARA_OUT_signal1_signal1_signal1(SIPO_8BIT_out1_signal1_signal1_signal1),
                                .PARA_OUT_signal1_signal1_signal2(SIPO_8BIT_out1_signal1_signal1_signal2),
                                .PARA_OUT_signal1_signal2_signal1(SIPO_8BIT_out1_signal1_signal2_signal1),
                                .PARA_OUT_signal1_signal2_signal2(SIPO_8BIT_out1_signal1_signal2_signal2),
                                .PARA_OUT_signal2_signal1_signal1(SIPO_8BIT_out1_signal2_signal1_signal1),
                                .PARA_OUT_signal2_signal1_signal2(SIPO_8BIT_out1_signal2_signal1_signal2),
                                .PARA_OUT_signal2_signal2_signal1(SIPO_8BIT_out1_signal2_signal2_signal1),
                                .PARA_OUT_signal2_signal2_signal2(SIPO_8BIT_out1_signal2_signal2_signal2),
                                .SERIAL_OUT(SIPO_8BIT_out2)
                                );

  SIPO_8BIT1_block1 u_SIPO_8BIT1 (.clk(clk),
                                  .reset(reset),
                                  .enb(enb),
                                  .SERIAL_IN(SIPO_8BIT_out2),
                                  .ENABLE1(ENABLE),
                                  .PARA_OUT_signal1_signal1_signal1(SIPO_8BIT1_out1_signal1_signal1_signal1),
                                  .PARA_OUT_signal1_signal1_signal2(SIPO_8BIT1_out1_signal1_signal1_signal2),
                                  .PARA_OUT_signal1_signal2_signal1(SIPO_8BIT1_out1_signal1_signal2_signal1),
                                  .PARA_OUT_signal1_signal2_signal2(SIPO_8BIT1_out1_signal1_signal2_signal2),
                                  .PARA_OUT_signal2_signal1_signal1(SIPO_8BIT1_out1_signal2_signal1_signal1),
                                  .PARA_OUT_signal2_signal1_signal2(SIPO_8BIT1_out1_signal2_signal1_signal2),
                                  .PARA_OUT_signal2_signal2_signal1(SIPO_8BIT1_out1_signal2_signal2_signal1),
                                  .PARA_OUT_signal2_signal2_signal2(SIPO_8BIT1_out1_signal2_signal2_signal2),
                                  .SERIAL_OUT(SIPO_8BIT1_out2)
                                  );

  assign PARA_OUT_signal1_signal1_signal1_signal1 = SIPO_8BIT1_out1_signal1_signal1_signal1;

  assign PARA_OUT_signal1_signal1_signal1_signal2 = SIPO_8BIT1_out1_signal1_signal1_signal2;

  assign PARA_OUT_signal1_signal1_signal2_signal1 = SIPO_8BIT1_out1_signal1_signal2_signal1;

  assign PARA_OUT_signal1_signal1_signal2_signal2 = SIPO_8BIT1_out1_signal1_signal2_signal2;

  assign PARA_OUT_signal1_signal2_signal1_signal1 = SIPO_8BIT1_out1_signal2_signal1_signal1;

  assign PARA_OUT_signal1_signal2_signal1_signal2 = SIPO_8BIT1_out1_signal2_signal1_signal2;

  assign PARA_OUT_signal1_signal2_signal2_signal1 = SIPO_8BIT1_out1_signal2_signal2_signal1;

  assign PARA_OUT_signal1_signal2_signal2_signal2 = SIPO_8BIT1_out1_signal2_signal2_signal2;

  assign PARA_OUT_signal2_signal1_signal1_signal1 = SIPO_8BIT_out1_signal1_signal1_signal1;

  assign PARA_OUT_signal2_signal1_signal1_signal2 = SIPO_8BIT_out1_signal1_signal1_signal2;

  assign PARA_OUT_signal2_signal1_signal2_signal1 = SIPO_8BIT_out1_signal1_signal2_signal1;

  assign PARA_OUT_signal2_signal1_signal2_signal2 = SIPO_8BIT_out1_signal1_signal2_signal2;

  assign PARA_OUT_signal2_signal2_signal1_signal1 = SIPO_8BIT_out1_signal2_signal1_signal1;

  assign PARA_OUT_signal2_signal2_signal1_signal2 = SIPO_8BIT_out1_signal2_signal1_signal2;

  assign PARA_OUT_signal2_signal2_signal2_signal1 = SIPO_8BIT_out1_signal2_signal2_signal1;

  assign PARA_OUT_signal2_signal2_signal2_signal2 = SIPO_8BIT_out1_signal2_signal2_signal2;

  assign SERIAL_OUT = SIPO_8BIT1_out2;

endmodule  // SIPO_16BIT_block
