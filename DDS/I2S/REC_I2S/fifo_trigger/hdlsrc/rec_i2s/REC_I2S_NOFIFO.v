// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\I2S\REC_I2S\fifo_trigger\hdlsrc\rec_i2s\REC_I2S_NOFIFO.v
// Created: 2023-10-29 14:30:23
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0.4
// Target subsystem base rate: 0.4
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0.4
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// PARA_OUT_L_signal1_signal1_signal1_signal1_signal1ce_out        0.4
// PARA_OUT_L_signal1_signal1_signal1_signal1_signal2ce_out        0.4
// PARA_OUT_L_signal1_signal1_signal1_signal2_signal1ce_out        0.4
// PARA_OUT_L_signal1_signal1_signal1_signal2_signal2ce_out        0.4
// PARA_OUT_L_signal1_signal1_signal2_signal1_signal1ce_out        0.4
// PARA_OUT_L_signal1_signal1_signal2_signal1_signal2ce_out        0.4
// PARA_OUT_L_signal1_signal1_signal2_signal2_signal1ce_out        0.4
// PARA_OUT_L_signal1_signal1_signal2_signal2_signal2ce_out        0.4
// PARA_OUT_L_signal1_signal2_signal1_signal1_signal1ce_out        0.4
// PARA_OUT_L_signal1_signal2_signal1_signal1_signal2ce_out        0.4
// PARA_OUT_L_signal1_signal2_signal1_signal2_signal1ce_out        0.4
// PARA_OUT_L_signal1_signal2_signal1_signal2_signal2ce_out        0.4
// PARA_OUT_L_signal1_signal2_signal2_signal1_signal1ce_out        0.4
// PARA_OUT_L_signal1_signal2_signal2_signal1_signal2ce_out        0.4
// PARA_OUT_L_signal1_signal2_signal2_signal2_signal1ce_out        0.4
// PARA_OUT_L_signal1_signal2_signal2_signal2_signal2ce_out        0.4
// PARA_OUT_L_signal2_signal1_signal1_signal1_signal1ce_out        0.4
// PARA_OUT_L_signal2_signal1_signal1_signal1_signal2ce_out        0.4
// PARA_OUT_L_signal2_signal1_signal1_signal2_signal1ce_out        0.4
// PARA_OUT_L_signal2_signal1_signal1_signal2_signal2ce_out        0.4
// PARA_OUT_L_signal2_signal1_signal2_signal1_signal1ce_out        0.4
// PARA_OUT_L_signal2_signal1_signal2_signal1_signal2ce_out        0.4
// PARA_OUT_L_signal2_signal1_signal2_signal2_signal1ce_out        0.4
// PARA_OUT_L_signal2_signal1_signal2_signal2_signal2ce_out        0.4
// PARA_OUT_L_signal2_signal2_signal1_signal1_signal1ce_out        0.4
// PARA_OUT_L_signal2_signal2_signal1_signal1_signal2ce_out        0.4
// PARA_OUT_L_signal2_signal2_signal1_signal2_signal1ce_out        0.4
// PARA_OUT_L_signal2_signal2_signal1_signal2_signal2ce_out        0.4
// PARA_OUT_L_signal2_signal2_signal2_signal1_signal1ce_out        0.4
// PARA_OUT_L_signal2_signal2_signal2_signal1_signal2ce_out        0.4
// PARA_OUT_L_signal2_signal2_signal2_signal2_signal1ce_out        0.4
// PARA_OUT_L_signal2_signal2_signal2_signal2_signal2ce_out        0.4
// PARA_OUT_R_signal1_signal1_signal1_signal1_signal1ce_out        0.4
// PARA_OUT_R_signal1_signal1_signal1_signal1_signal2ce_out        0.4
// PARA_OUT_R_signal1_signal1_signal1_signal2_signal1ce_out        0.4
// PARA_OUT_R_signal1_signal1_signal1_signal2_signal2ce_out        0.4
// PARA_OUT_R_signal1_signal1_signal2_signal1_signal1ce_out        0.4
// PARA_OUT_R_signal1_signal1_signal2_signal1_signal2ce_out        0.4
// PARA_OUT_R_signal1_signal1_signal2_signal2_signal1ce_out        0.4
// PARA_OUT_R_signal1_signal1_signal2_signal2_signal2ce_out        0.4
// PARA_OUT_R_signal1_signal2_signal1_signal1_signal1ce_out        0.4
// PARA_OUT_R_signal1_signal2_signal1_signal1_signal2ce_out        0.4
// PARA_OUT_R_signal1_signal2_signal1_signal2_signal1ce_out        0.4
// PARA_OUT_R_signal1_signal2_signal1_signal2_signal2ce_out        0.4
// PARA_OUT_R_signal1_signal2_signal2_signal1_signal1ce_out        0.4
// PARA_OUT_R_signal1_signal2_signal2_signal1_signal2ce_out        0.4
// PARA_OUT_R_signal1_signal2_signal2_signal2_signal1ce_out        0.4
// PARA_OUT_R_signal1_signal2_signal2_signal2_signal2ce_out        0.4
// PARA_OUT_R_signal2_signal1_signal1_signal1_signal1ce_out        0.4
// PARA_OUT_R_signal2_signal1_signal1_signal1_signal2ce_out        0.4
// PARA_OUT_R_signal2_signal1_signal1_signal2_signal1ce_out        0.4
// PARA_OUT_R_signal2_signal1_signal1_signal2_signal2ce_out        0.4
// PARA_OUT_R_signal2_signal1_signal2_signal1_signal1ce_out        0.4
// PARA_OUT_R_signal2_signal1_signal2_signal1_signal2ce_out        0.4
// PARA_OUT_R_signal2_signal1_signal2_signal2_signal1ce_out        0.4
// PARA_OUT_R_signal2_signal1_signal2_signal2_signal2ce_out        0.4
// PARA_OUT_R_signal2_signal2_signal1_signal1_signal1ce_out        0.4
// PARA_OUT_R_signal2_signal2_signal1_signal1_signal2ce_out        0.4
// PARA_OUT_R_signal2_signal2_signal1_signal2_signal1ce_out        0.4
// PARA_OUT_R_signal2_signal2_signal1_signal2_signal2ce_out        0.4
// PARA_OUT_R_signal2_signal2_signal2_signal1_signal1ce_out        0.4
// PARA_OUT_R_signal2_signal2_signal2_signal1_signal2ce_out        0.4
// PARA_OUT_R_signal2_signal2_signal2_signal2_signal1ce_out        0.4
// PARA_OUT_R_signal2_signal2_signal2_signal2_signal2ce_out        0.4
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: REC_I2S_NOFIFO
// Source Path: rec_i2s/REC_I2S_NOFIFO
// Hierarchy Level: 0
// Model version: 1.58
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module REC_I2S_NOFIFO
          (clk,
           reset,
           clk_enable,
           LRCLK_IN,
           SDATA_IN,
           SCLK_IN,
           ce_out,
           PARA_OUT_L_signal1_signal1_signal1_signal1_signal1,
           PARA_OUT_L_signal1_signal1_signal1_signal1_signal2,
           PARA_OUT_L_signal1_signal1_signal1_signal2_signal1,
           PARA_OUT_L_signal1_signal1_signal1_signal2_signal2,
           PARA_OUT_L_signal1_signal1_signal2_signal1_signal1,
           PARA_OUT_L_signal1_signal1_signal2_signal1_signal2,
           PARA_OUT_L_signal1_signal1_signal2_signal2_signal1,
           PARA_OUT_L_signal1_signal1_signal2_signal2_signal2,
           PARA_OUT_L_signal1_signal2_signal1_signal1_signal1,
           PARA_OUT_L_signal1_signal2_signal1_signal1_signal2,
           PARA_OUT_L_signal1_signal2_signal1_signal2_signal1,
           PARA_OUT_L_signal1_signal2_signal1_signal2_signal2,
           PARA_OUT_L_signal1_signal2_signal2_signal1_signal1,
           PARA_OUT_L_signal1_signal2_signal2_signal1_signal2,
           PARA_OUT_L_signal1_signal2_signal2_signal2_signal1,
           PARA_OUT_L_signal1_signal2_signal2_signal2_signal2,
           PARA_OUT_L_signal2_signal1_signal1_signal1_signal1,
           PARA_OUT_L_signal2_signal1_signal1_signal1_signal2,
           PARA_OUT_L_signal2_signal1_signal1_signal2_signal1,
           PARA_OUT_L_signal2_signal1_signal1_signal2_signal2,
           PARA_OUT_L_signal2_signal1_signal2_signal1_signal1,
           PARA_OUT_L_signal2_signal1_signal2_signal1_signal2,
           PARA_OUT_L_signal2_signal1_signal2_signal2_signal1,
           PARA_OUT_L_signal2_signal1_signal2_signal2_signal2,
           PARA_OUT_L_signal2_signal2_signal1_signal1_signal1,
           PARA_OUT_L_signal2_signal2_signal1_signal1_signal2,
           PARA_OUT_L_signal2_signal2_signal1_signal2_signal1,
           PARA_OUT_L_signal2_signal2_signal1_signal2_signal2,
           PARA_OUT_L_signal2_signal2_signal2_signal1_signal1,
           PARA_OUT_L_signal2_signal2_signal2_signal1_signal2,
           PARA_OUT_L_signal2_signal2_signal2_signal2_signal1,
           PARA_OUT_L_signal2_signal2_signal2_signal2_signal2,
           PARA_OUT_R_signal1_signal1_signal1_signal1_signal1,
           PARA_OUT_R_signal1_signal1_signal1_signal1_signal2,
           PARA_OUT_R_signal1_signal1_signal1_signal2_signal1,
           PARA_OUT_R_signal1_signal1_signal1_signal2_signal2,
           PARA_OUT_R_signal1_signal1_signal2_signal1_signal1,
           PARA_OUT_R_signal1_signal1_signal2_signal1_signal2,
           PARA_OUT_R_signal1_signal1_signal2_signal2_signal1,
           PARA_OUT_R_signal1_signal1_signal2_signal2_signal2,
           PARA_OUT_R_signal1_signal2_signal1_signal1_signal1,
           PARA_OUT_R_signal1_signal2_signal1_signal1_signal2,
           PARA_OUT_R_signal1_signal2_signal1_signal2_signal1,
           PARA_OUT_R_signal1_signal2_signal1_signal2_signal2,
           PARA_OUT_R_signal1_signal2_signal2_signal1_signal1,
           PARA_OUT_R_signal1_signal2_signal2_signal1_signal2,
           PARA_OUT_R_signal1_signal2_signal2_signal2_signal1,
           PARA_OUT_R_signal1_signal2_signal2_signal2_signal2,
           PARA_OUT_R_signal2_signal1_signal1_signal1_signal1,
           PARA_OUT_R_signal2_signal1_signal1_signal1_signal2,
           PARA_OUT_R_signal2_signal1_signal1_signal2_signal1,
           PARA_OUT_R_signal2_signal1_signal1_signal2_signal2,
           PARA_OUT_R_signal2_signal1_signal2_signal1_signal1,
           PARA_OUT_R_signal2_signal1_signal2_signal1_signal2,
           PARA_OUT_R_signal2_signal1_signal2_signal2_signal1,
           PARA_OUT_R_signal2_signal1_signal2_signal2_signal2,
           PARA_OUT_R_signal2_signal2_signal1_signal1_signal1,
           PARA_OUT_R_signal2_signal2_signal1_signal1_signal2,
           PARA_OUT_R_signal2_signal2_signal1_signal2_signal1,
           PARA_OUT_R_signal2_signal2_signal1_signal2_signal2,
           PARA_OUT_R_signal2_signal2_signal2_signal1_signal1,
           PARA_OUT_R_signal2_signal2_signal2_signal1_signal2,
           PARA_OUT_R_signal2_signal2_signal2_signal2_signal1,
           PARA_OUT_R_signal2_signal2_signal2_signal2_signal2);


  input   clk;
  input   reset;
  input   clk_enable;
  input   LRCLK_IN;
  input   SDATA_IN;
  input   SCLK_IN;
  output  ce_out;
  output  PARA_OUT_L_signal1_signal1_signal1_signal1_signal1;
  output  PARA_OUT_L_signal1_signal1_signal1_signal1_signal2;
  output  PARA_OUT_L_signal1_signal1_signal1_signal2_signal1;
  output  PARA_OUT_L_signal1_signal1_signal1_signal2_signal2;
  output  PARA_OUT_L_signal1_signal1_signal2_signal1_signal1;
  output  PARA_OUT_L_signal1_signal1_signal2_signal1_signal2;
  output  PARA_OUT_L_signal1_signal1_signal2_signal2_signal1;
  output  PARA_OUT_L_signal1_signal1_signal2_signal2_signal2;
  output  PARA_OUT_L_signal1_signal2_signal1_signal1_signal1;
  output  PARA_OUT_L_signal1_signal2_signal1_signal1_signal2;
  output  PARA_OUT_L_signal1_signal2_signal1_signal2_signal1;
  output  PARA_OUT_L_signal1_signal2_signal1_signal2_signal2;
  output  PARA_OUT_L_signal1_signal2_signal2_signal1_signal1;
  output  PARA_OUT_L_signal1_signal2_signal2_signal1_signal2;
  output  PARA_OUT_L_signal1_signal2_signal2_signal2_signal1;
  output  PARA_OUT_L_signal1_signal2_signal2_signal2_signal2;
  output  PARA_OUT_L_signal2_signal1_signal1_signal1_signal1;
  output  PARA_OUT_L_signal2_signal1_signal1_signal1_signal2;
  output  PARA_OUT_L_signal2_signal1_signal1_signal2_signal1;
  output  PARA_OUT_L_signal2_signal1_signal1_signal2_signal2;
  output  PARA_OUT_L_signal2_signal1_signal2_signal1_signal1;
  output  PARA_OUT_L_signal2_signal1_signal2_signal1_signal2;
  output  PARA_OUT_L_signal2_signal1_signal2_signal2_signal1;
  output  PARA_OUT_L_signal2_signal1_signal2_signal2_signal2;
  output  PARA_OUT_L_signal2_signal2_signal1_signal1_signal1;
  output  PARA_OUT_L_signal2_signal2_signal1_signal1_signal2;
  output  PARA_OUT_L_signal2_signal2_signal1_signal2_signal1;
  output  PARA_OUT_L_signal2_signal2_signal1_signal2_signal2;
  output  PARA_OUT_L_signal2_signal2_signal2_signal1_signal1;
  output  PARA_OUT_L_signal2_signal2_signal2_signal1_signal2;
  output  PARA_OUT_L_signal2_signal2_signal2_signal2_signal1;
  output  PARA_OUT_L_signal2_signal2_signal2_signal2_signal2;
  output  PARA_OUT_R_signal1_signal1_signal1_signal1_signal1;
  output  PARA_OUT_R_signal1_signal1_signal1_signal1_signal2;
  output  PARA_OUT_R_signal1_signal1_signal1_signal2_signal1;
  output  PARA_OUT_R_signal1_signal1_signal1_signal2_signal2;
  output  PARA_OUT_R_signal1_signal1_signal2_signal1_signal1;
  output  PARA_OUT_R_signal1_signal1_signal2_signal1_signal2;
  output  PARA_OUT_R_signal1_signal1_signal2_signal2_signal1;
  output  PARA_OUT_R_signal1_signal1_signal2_signal2_signal2;
  output  PARA_OUT_R_signal1_signal2_signal1_signal1_signal1;
  output  PARA_OUT_R_signal1_signal2_signal1_signal1_signal2;
  output  PARA_OUT_R_signal1_signal2_signal1_signal2_signal1;
  output  PARA_OUT_R_signal1_signal2_signal1_signal2_signal2;
  output  PARA_OUT_R_signal1_signal2_signal2_signal1_signal1;
  output  PARA_OUT_R_signal1_signal2_signal2_signal1_signal2;
  output  PARA_OUT_R_signal1_signal2_signal2_signal2_signal1;
  output  PARA_OUT_R_signal1_signal2_signal2_signal2_signal2;
  output  PARA_OUT_R_signal2_signal1_signal1_signal1_signal1;
  output  PARA_OUT_R_signal2_signal1_signal1_signal1_signal2;
  output  PARA_OUT_R_signal2_signal1_signal1_signal2_signal1;
  output  PARA_OUT_R_signal2_signal1_signal1_signal2_signal2;
  output  PARA_OUT_R_signal2_signal1_signal2_signal1_signal1;
  output  PARA_OUT_R_signal2_signal1_signal2_signal1_signal2;
  output  PARA_OUT_R_signal2_signal1_signal2_signal2_signal1;
  output  PARA_OUT_R_signal2_signal1_signal2_signal2_signal2;
  output  PARA_OUT_R_signal2_signal2_signal1_signal1_signal1;
  output  PARA_OUT_R_signal2_signal2_signal1_signal1_signal2;
  output  PARA_OUT_R_signal2_signal2_signal1_signal2_signal1;
  output  PARA_OUT_R_signal2_signal2_signal1_signal2_signal2;
  output  PARA_OUT_R_signal2_signal2_signal2_signal1_signal1;
  output  PARA_OUT_R_signal2_signal2_signal2_signal1_signal2;
  output  PARA_OUT_R_signal2_signal2_signal2_signal2_signal1;
  output  PARA_OUT_R_signal2_signal2_signal2_signal2_signal2;


  wire enb;
  reg  Delay_bypass_delay;  // ufix1
  reg  Delay_reg;  // ufix1
  wire Delay_out1;
  wire Logical_Operator_out1;
  wire Subsystem_out1_signal1_signal1_signal1_signal1_signal1;
  wire Subsystem_out1_signal1_signal1_signal1_signal1_signal2;
  wire Subsystem_out1_signal1_signal1_signal1_signal2_signal1;
  wire Subsystem_out1_signal1_signal1_signal1_signal2_signal2;
  wire Subsystem_out1_signal1_signal1_signal2_signal1_signal1;
  wire Subsystem_out1_signal1_signal1_signal2_signal1_signal2;
  wire Subsystem_out1_signal1_signal1_signal2_signal2_signal1;
  wire Subsystem_out1_signal1_signal1_signal2_signal2_signal2;
  wire Subsystem_out1_signal1_signal2_signal1_signal1_signal1;
  wire Subsystem_out1_signal1_signal2_signal1_signal1_signal2;
  wire Subsystem_out1_signal1_signal2_signal1_signal2_signal1;
  wire Subsystem_out1_signal1_signal2_signal1_signal2_signal2;
  wire Subsystem_out1_signal1_signal2_signal2_signal1_signal1;
  wire Subsystem_out1_signal1_signal2_signal2_signal1_signal2;
  wire Subsystem_out1_signal1_signal2_signal2_signal2_signal1;
  wire Subsystem_out1_signal1_signal2_signal2_signal2_signal2;
  wire Subsystem_out1_signal2_signal1_signal1_signal1_signal1;
  wire Subsystem_out1_signal2_signal1_signal1_signal1_signal2;
  wire Subsystem_out1_signal2_signal1_signal1_signal2_signal1;
  wire Subsystem_out1_signal2_signal1_signal1_signal2_signal2;
  wire Subsystem_out1_signal2_signal1_signal2_signal1_signal1;
  wire Subsystem_out1_signal2_signal1_signal2_signal1_signal2;
  wire Subsystem_out1_signal2_signal1_signal2_signal2_signal1;
  wire Subsystem_out1_signal2_signal1_signal2_signal2_signal2;
  wire Subsystem_out1_signal2_signal2_signal1_signal1_signal1;
  wire Subsystem_out1_signal2_signal2_signal1_signal1_signal2;
  wire Subsystem_out1_signal2_signal2_signal1_signal2_signal1;
  wire Subsystem_out1_signal2_signal2_signal1_signal2_signal2;
  wire Subsystem_out1_signal2_signal2_signal2_signal1_signal1;
  wire Subsystem_out1_signal2_signal2_signal2_signal1_signal2;
  wire Subsystem_out1_signal2_signal2_signal2_signal2_signal1;
  wire Subsystem_out1_signal2_signal2_signal2_signal2_signal2;
  wire Subsystem1_out1_signal1_signal1_signal1_signal1_signal1;
  wire Subsystem1_out1_signal1_signal1_signal1_signal1_signal2;
  wire Subsystem1_out1_signal1_signal1_signal1_signal2_signal1;
  wire Subsystem1_out1_signal1_signal1_signal1_signal2_signal2;
  wire Subsystem1_out1_signal1_signal1_signal2_signal1_signal1;
  wire Subsystem1_out1_signal1_signal1_signal2_signal1_signal2;
  wire Subsystem1_out1_signal1_signal1_signal2_signal2_signal1;
  wire Subsystem1_out1_signal1_signal1_signal2_signal2_signal2;
  wire Subsystem1_out1_signal1_signal2_signal1_signal1_signal1;
  wire Subsystem1_out1_signal1_signal2_signal1_signal1_signal2;
  wire Subsystem1_out1_signal1_signal2_signal1_signal2_signal1;
  wire Subsystem1_out1_signal1_signal2_signal1_signal2_signal2;
  wire Subsystem1_out1_signal1_signal2_signal2_signal1_signal1;
  wire Subsystem1_out1_signal1_signal2_signal2_signal1_signal2;
  wire Subsystem1_out1_signal1_signal2_signal2_signal2_signal1;
  wire Subsystem1_out1_signal1_signal2_signal2_signal2_signal2;
  wire Subsystem1_out1_signal2_signal1_signal1_signal1_signal1;
  wire Subsystem1_out1_signal2_signal1_signal1_signal1_signal2;
  wire Subsystem1_out1_signal2_signal1_signal1_signal2_signal1;
  wire Subsystem1_out1_signal2_signal1_signal1_signal2_signal2;
  wire Subsystem1_out1_signal2_signal1_signal2_signal1_signal1;
  wire Subsystem1_out1_signal2_signal1_signal2_signal1_signal2;
  wire Subsystem1_out1_signal2_signal1_signal2_signal2_signal1;
  wire Subsystem1_out1_signal2_signal1_signal2_signal2_signal2;
  wire Subsystem1_out1_signal2_signal2_signal1_signal1_signal1;
  wire Subsystem1_out1_signal2_signal2_signal1_signal1_signal2;
  wire Subsystem1_out1_signal2_signal2_signal1_signal2_signal1;
  wire Subsystem1_out1_signal2_signal2_signal1_signal2_signal2;
  wire Subsystem1_out1_signal2_signal2_signal2_signal1_signal1;
  wire Subsystem1_out1_signal2_signal2_signal2_signal1_signal2;
  wire Subsystem1_out1_signal2_signal2_signal2_signal2_signal1;
  wire Subsystem1_out1_signal2_signal2_signal2_signal2_signal2;

  // LRCLK为低电平时左声道输出，加载右声道数据


  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_bypass_delay <= 1'b0;
        Delay_reg <= 1'b0;
      end
      else begin
        if (enb && SCLK_IN) begin
          Delay_bypass_delay <= Delay_reg;
          Delay_reg <= SDATA_IN;
        end
      end
    end

  assign Delay_out1 = (SCLK_IN == 1'b1 ? Delay_reg :
              Delay_bypass_delay);



  assign Logical_Operator_out1 =  ~ LRCLK_IN;



  Subsystem u_Subsystem (.clk(clk),
                         .reset(reset),
                         .enb(clk_enable),
                         .SERIAL_IN(Delay_out1),
                         .SHIFT_ENABLE(LRCLK_IN),
                         .DATA_OUT_ENABLE(Logical_Operator_out1),
                         .PARA_OUT_signal1_signal1_signal1_signal1_signal1(Subsystem_out1_signal1_signal1_signal1_signal1_signal1),
                         .PARA_OUT_signal1_signal1_signal1_signal1_signal2(Subsystem_out1_signal1_signal1_signal1_signal1_signal2),
                         .PARA_OUT_signal1_signal1_signal1_signal2_signal1(Subsystem_out1_signal1_signal1_signal1_signal2_signal1),
                         .PARA_OUT_signal1_signal1_signal1_signal2_signal2(Subsystem_out1_signal1_signal1_signal1_signal2_signal2),
                         .PARA_OUT_signal1_signal1_signal2_signal1_signal1(Subsystem_out1_signal1_signal1_signal2_signal1_signal1),
                         .PARA_OUT_signal1_signal1_signal2_signal1_signal2(Subsystem_out1_signal1_signal1_signal2_signal1_signal2),
                         .PARA_OUT_signal1_signal1_signal2_signal2_signal1(Subsystem_out1_signal1_signal1_signal2_signal2_signal1),
                         .PARA_OUT_signal1_signal1_signal2_signal2_signal2(Subsystem_out1_signal1_signal1_signal2_signal2_signal2),
                         .PARA_OUT_signal1_signal2_signal1_signal1_signal1(Subsystem_out1_signal1_signal2_signal1_signal1_signal1),
                         .PARA_OUT_signal1_signal2_signal1_signal1_signal2(Subsystem_out1_signal1_signal2_signal1_signal1_signal2),
                         .PARA_OUT_signal1_signal2_signal1_signal2_signal1(Subsystem_out1_signal1_signal2_signal1_signal2_signal1),
                         .PARA_OUT_signal1_signal2_signal1_signal2_signal2(Subsystem_out1_signal1_signal2_signal1_signal2_signal2),
                         .PARA_OUT_signal1_signal2_signal2_signal1_signal1(Subsystem_out1_signal1_signal2_signal2_signal1_signal1),
                         .PARA_OUT_signal1_signal2_signal2_signal1_signal2(Subsystem_out1_signal1_signal2_signal2_signal1_signal2),
                         .PARA_OUT_signal1_signal2_signal2_signal2_signal1(Subsystem_out1_signal1_signal2_signal2_signal2_signal1),
                         .PARA_OUT_signal1_signal2_signal2_signal2_signal2(Subsystem_out1_signal1_signal2_signal2_signal2_signal2),
                         .PARA_OUT_signal2_signal1_signal1_signal1_signal1(Subsystem_out1_signal2_signal1_signal1_signal1_signal1),
                         .PARA_OUT_signal2_signal1_signal1_signal1_signal2(Subsystem_out1_signal2_signal1_signal1_signal1_signal2),
                         .PARA_OUT_signal2_signal1_signal1_signal2_signal1(Subsystem_out1_signal2_signal1_signal1_signal2_signal1),
                         .PARA_OUT_signal2_signal1_signal1_signal2_signal2(Subsystem_out1_signal2_signal1_signal1_signal2_signal2),
                         .PARA_OUT_signal2_signal1_signal2_signal1_signal1(Subsystem_out1_signal2_signal1_signal2_signal1_signal1),
                         .PARA_OUT_signal2_signal1_signal2_signal1_signal2(Subsystem_out1_signal2_signal1_signal2_signal1_signal2),
                         .PARA_OUT_signal2_signal1_signal2_signal2_signal1(Subsystem_out1_signal2_signal1_signal2_signal2_signal1),
                         .PARA_OUT_signal2_signal1_signal2_signal2_signal2(Subsystem_out1_signal2_signal1_signal2_signal2_signal2),
                         .PARA_OUT_signal2_signal2_signal1_signal1_signal1(Subsystem_out1_signal2_signal2_signal1_signal1_signal1),
                         .PARA_OUT_signal2_signal2_signal1_signal1_signal2(Subsystem_out1_signal2_signal2_signal1_signal1_signal2),
                         .PARA_OUT_signal2_signal2_signal1_signal2_signal1(Subsystem_out1_signal2_signal2_signal1_signal2_signal1),
                         .PARA_OUT_signal2_signal2_signal1_signal2_signal2(Subsystem_out1_signal2_signal2_signal1_signal2_signal2),
                         .PARA_OUT_signal2_signal2_signal2_signal1_signal1(Subsystem_out1_signal2_signal2_signal2_signal1_signal1),
                         .PARA_OUT_signal2_signal2_signal2_signal1_signal2(Subsystem_out1_signal2_signal2_signal2_signal1_signal2),
                         .PARA_OUT_signal2_signal2_signal2_signal2_signal1(Subsystem_out1_signal2_signal2_signal2_signal2_signal1),
                         .PARA_OUT_signal2_signal2_signal2_signal2_signal2(Subsystem_out1_signal2_signal2_signal2_signal2_signal2)
                         );

  assign PARA_OUT_L_signal1_signal1_signal1_signal1_signal1 = Subsystem_out1_signal1_signal1_signal1_signal1_signal1;

  assign PARA_OUT_L_signal1_signal1_signal1_signal1_signal2 = Subsystem_out1_signal1_signal1_signal1_signal1_signal2;

  assign PARA_OUT_L_signal1_signal1_signal1_signal2_signal1 = Subsystem_out1_signal1_signal1_signal1_signal2_signal1;

  assign PARA_OUT_L_signal1_signal1_signal1_signal2_signal2 = Subsystem_out1_signal1_signal1_signal1_signal2_signal2;

  assign PARA_OUT_L_signal1_signal1_signal2_signal1_signal1 = Subsystem_out1_signal1_signal1_signal2_signal1_signal1;

  assign PARA_OUT_L_signal1_signal1_signal2_signal1_signal2 = Subsystem_out1_signal1_signal1_signal2_signal1_signal2;

  assign PARA_OUT_L_signal1_signal1_signal2_signal2_signal1 = Subsystem_out1_signal1_signal1_signal2_signal2_signal1;

  assign PARA_OUT_L_signal1_signal1_signal2_signal2_signal2 = Subsystem_out1_signal1_signal1_signal2_signal2_signal2;

  assign PARA_OUT_L_signal1_signal2_signal1_signal1_signal1 = Subsystem_out1_signal1_signal2_signal1_signal1_signal1;

  assign PARA_OUT_L_signal1_signal2_signal1_signal1_signal2 = Subsystem_out1_signal1_signal2_signal1_signal1_signal2;

  assign PARA_OUT_L_signal1_signal2_signal1_signal2_signal1 = Subsystem_out1_signal1_signal2_signal1_signal2_signal1;

  assign PARA_OUT_L_signal1_signal2_signal1_signal2_signal2 = Subsystem_out1_signal1_signal2_signal1_signal2_signal2;

  assign PARA_OUT_L_signal1_signal2_signal2_signal1_signal1 = Subsystem_out1_signal1_signal2_signal2_signal1_signal1;

  assign PARA_OUT_L_signal1_signal2_signal2_signal1_signal2 = Subsystem_out1_signal1_signal2_signal2_signal1_signal2;

  assign PARA_OUT_L_signal1_signal2_signal2_signal2_signal1 = Subsystem_out1_signal1_signal2_signal2_signal2_signal1;

  assign PARA_OUT_L_signal1_signal2_signal2_signal2_signal2 = Subsystem_out1_signal1_signal2_signal2_signal2_signal2;

  assign PARA_OUT_L_signal2_signal1_signal1_signal1_signal1 = Subsystem_out1_signal2_signal1_signal1_signal1_signal1;

  assign PARA_OUT_L_signal2_signal1_signal1_signal1_signal2 = Subsystem_out1_signal2_signal1_signal1_signal1_signal2;

  assign PARA_OUT_L_signal2_signal1_signal1_signal2_signal1 = Subsystem_out1_signal2_signal1_signal1_signal2_signal1;

  assign PARA_OUT_L_signal2_signal1_signal1_signal2_signal2 = Subsystem_out1_signal2_signal1_signal1_signal2_signal2;

  assign PARA_OUT_L_signal2_signal1_signal2_signal1_signal1 = Subsystem_out1_signal2_signal1_signal2_signal1_signal1;

  assign PARA_OUT_L_signal2_signal1_signal2_signal1_signal2 = Subsystem_out1_signal2_signal1_signal2_signal1_signal2;

  assign PARA_OUT_L_signal2_signal1_signal2_signal2_signal1 = Subsystem_out1_signal2_signal1_signal2_signal2_signal1;

  assign PARA_OUT_L_signal2_signal1_signal2_signal2_signal2 = Subsystem_out1_signal2_signal1_signal2_signal2_signal2;

  assign PARA_OUT_L_signal2_signal2_signal1_signal1_signal1 = Subsystem_out1_signal2_signal2_signal1_signal1_signal1;

  assign PARA_OUT_L_signal2_signal2_signal1_signal1_signal2 = Subsystem_out1_signal2_signal2_signal1_signal1_signal2;

  assign PARA_OUT_L_signal2_signal2_signal1_signal2_signal1 = Subsystem_out1_signal2_signal2_signal1_signal2_signal1;

  assign PARA_OUT_L_signal2_signal2_signal1_signal2_signal2 = Subsystem_out1_signal2_signal2_signal1_signal2_signal2;

  assign PARA_OUT_L_signal2_signal2_signal2_signal1_signal1 = Subsystem_out1_signal2_signal2_signal2_signal1_signal1;

  assign PARA_OUT_L_signal2_signal2_signal2_signal1_signal2 = Subsystem_out1_signal2_signal2_signal2_signal1_signal2;

  assign PARA_OUT_L_signal2_signal2_signal2_signal2_signal1 = Subsystem_out1_signal2_signal2_signal2_signal2_signal1;

  assign PARA_OUT_L_signal2_signal2_signal2_signal2_signal2 = Subsystem_out1_signal2_signal2_signal2_signal2_signal2;

  Subsystem1 u_Subsystem1 (.clk(clk),
                           .reset(reset),
                           .enb(clk_enable),
                           .SERIAL_IN(Delay_out1),
                           .SHIFT_ENABLE(Logical_Operator_out1),
                           .DATA_OUT_ENABLE(LRCLK_IN),
                           .PARA_OUT_signal1_signal1_signal1_signal1_signal1(Subsystem1_out1_signal1_signal1_signal1_signal1_signal1),
                           .PARA_OUT_signal1_signal1_signal1_signal1_signal2(Subsystem1_out1_signal1_signal1_signal1_signal1_signal2),
                           .PARA_OUT_signal1_signal1_signal1_signal2_signal1(Subsystem1_out1_signal1_signal1_signal1_signal2_signal1),
                           .PARA_OUT_signal1_signal1_signal1_signal2_signal2(Subsystem1_out1_signal1_signal1_signal1_signal2_signal2),
                           .PARA_OUT_signal1_signal1_signal2_signal1_signal1(Subsystem1_out1_signal1_signal1_signal2_signal1_signal1),
                           .PARA_OUT_signal1_signal1_signal2_signal1_signal2(Subsystem1_out1_signal1_signal1_signal2_signal1_signal2),
                           .PARA_OUT_signal1_signal1_signal2_signal2_signal1(Subsystem1_out1_signal1_signal1_signal2_signal2_signal1),
                           .PARA_OUT_signal1_signal1_signal2_signal2_signal2(Subsystem1_out1_signal1_signal1_signal2_signal2_signal2),
                           .PARA_OUT_signal1_signal2_signal1_signal1_signal1(Subsystem1_out1_signal1_signal2_signal1_signal1_signal1),
                           .PARA_OUT_signal1_signal2_signal1_signal1_signal2(Subsystem1_out1_signal1_signal2_signal1_signal1_signal2),
                           .PARA_OUT_signal1_signal2_signal1_signal2_signal1(Subsystem1_out1_signal1_signal2_signal1_signal2_signal1),
                           .PARA_OUT_signal1_signal2_signal1_signal2_signal2(Subsystem1_out1_signal1_signal2_signal1_signal2_signal2),
                           .PARA_OUT_signal1_signal2_signal2_signal1_signal1(Subsystem1_out1_signal1_signal2_signal2_signal1_signal1),
                           .PARA_OUT_signal1_signal2_signal2_signal1_signal2(Subsystem1_out1_signal1_signal2_signal2_signal1_signal2),
                           .PARA_OUT_signal1_signal2_signal2_signal2_signal1(Subsystem1_out1_signal1_signal2_signal2_signal2_signal1),
                           .PARA_OUT_signal1_signal2_signal2_signal2_signal2(Subsystem1_out1_signal1_signal2_signal2_signal2_signal2),
                           .PARA_OUT_signal2_signal1_signal1_signal1_signal1(Subsystem1_out1_signal2_signal1_signal1_signal1_signal1),
                           .PARA_OUT_signal2_signal1_signal1_signal1_signal2(Subsystem1_out1_signal2_signal1_signal1_signal1_signal2),
                           .PARA_OUT_signal2_signal1_signal1_signal2_signal1(Subsystem1_out1_signal2_signal1_signal1_signal2_signal1),
                           .PARA_OUT_signal2_signal1_signal1_signal2_signal2(Subsystem1_out1_signal2_signal1_signal1_signal2_signal2),
                           .PARA_OUT_signal2_signal1_signal2_signal1_signal1(Subsystem1_out1_signal2_signal1_signal2_signal1_signal1),
                           .PARA_OUT_signal2_signal1_signal2_signal1_signal2(Subsystem1_out1_signal2_signal1_signal2_signal1_signal2),
                           .PARA_OUT_signal2_signal1_signal2_signal2_signal1(Subsystem1_out1_signal2_signal1_signal2_signal2_signal1),
                           .PARA_OUT_signal2_signal1_signal2_signal2_signal2(Subsystem1_out1_signal2_signal1_signal2_signal2_signal2),
                           .PARA_OUT_signal2_signal2_signal1_signal1_signal1(Subsystem1_out1_signal2_signal2_signal1_signal1_signal1),
                           .PARA_OUT_signal2_signal2_signal1_signal1_signal2(Subsystem1_out1_signal2_signal2_signal1_signal1_signal2),
                           .PARA_OUT_signal2_signal2_signal1_signal2_signal1(Subsystem1_out1_signal2_signal2_signal1_signal2_signal1),
                           .PARA_OUT_signal2_signal2_signal1_signal2_signal2(Subsystem1_out1_signal2_signal2_signal1_signal2_signal2),
                           .PARA_OUT_signal2_signal2_signal2_signal1_signal1(Subsystem1_out1_signal2_signal2_signal2_signal1_signal1),
                           .PARA_OUT_signal2_signal2_signal2_signal1_signal2(Subsystem1_out1_signal2_signal2_signal2_signal1_signal2),
                           .PARA_OUT_signal2_signal2_signal2_signal2_signal1(Subsystem1_out1_signal2_signal2_signal2_signal2_signal1),
                           .PARA_OUT_signal2_signal2_signal2_signal2_signal2(Subsystem1_out1_signal2_signal2_signal2_signal2_signal2)
                           );

  assign PARA_OUT_R_signal1_signal1_signal1_signal1_signal1 = Subsystem1_out1_signal1_signal1_signal1_signal1_signal1;

  assign PARA_OUT_R_signal1_signal1_signal1_signal1_signal2 = Subsystem1_out1_signal1_signal1_signal1_signal1_signal2;

  assign PARA_OUT_R_signal1_signal1_signal1_signal2_signal1 = Subsystem1_out1_signal1_signal1_signal1_signal2_signal1;

  assign PARA_OUT_R_signal1_signal1_signal1_signal2_signal2 = Subsystem1_out1_signal1_signal1_signal1_signal2_signal2;

  assign PARA_OUT_R_signal1_signal1_signal2_signal1_signal1 = Subsystem1_out1_signal1_signal1_signal2_signal1_signal1;

  assign PARA_OUT_R_signal1_signal1_signal2_signal1_signal2 = Subsystem1_out1_signal1_signal1_signal2_signal1_signal2;

  assign PARA_OUT_R_signal1_signal1_signal2_signal2_signal1 = Subsystem1_out1_signal1_signal1_signal2_signal2_signal1;

  assign PARA_OUT_R_signal1_signal1_signal2_signal2_signal2 = Subsystem1_out1_signal1_signal1_signal2_signal2_signal2;

  assign PARA_OUT_R_signal1_signal2_signal1_signal1_signal1 = Subsystem1_out1_signal1_signal2_signal1_signal1_signal1;

  assign PARA_OUT_R_signal1_signal2_signal1_signal1_signal2 = Subsystem1_out1_signal1_signal2_signal1_signal1_signal2;

  assign PARA_OUT_R_signal1_signal2_signal1_signal2_signal1 = Subsystem1_out1_signal1_signal2_signal1_signal2_signal1;

  assign PARA_OUT_R_signal1_signal2_signal1_signal2_signal2 = Subsystem1_out1_signal1_signal2_signal1_signal2_signal2;

  assign PARA_OUT_R_signal1_signal2_signal2_signal1_signal1 = Subsystem1_out1_signal1_signal2_signal2_signal1_signal1;

  assign PARA_OUT_R_signal1_signal2_signal2_signal1_signal2 = Subsystem1_out1_signal1_signal2_signal2_signal1_signal2;

  assign PARA_OUT_R_signal1_signal2_signal2_signal2_signal1 = Subsystem1_out1_signal1_signal2_signal2_signal2_signal1;

  assign PARA_OUT_R_signal1_signal2_signal2_signal2_signal2 = Subsystem1_out1_signal1_signal2_signal2_signal2_signal2;

  assign PARA_OUT_R_signal2_signal1_signal1_signal1_signal1 = Subsystem1_out1_signal2_signal1_signal1_signal1_signal1;

  assign PARA_OUT_R_signal2_signal1_signal1_signal1_signal2 = Subsystem1_out1_signal2_signal1_signal1_signal1_signal2;

  assign PARA_OUT_R_signal2_signal1_signal1_signal2_signal1 = Subsystem1_out1_signal2_signal1_signal1_signal2_signal1;

  assign PARA_OUT_R_signal2_signal1_signal1_signal2_signal2 = Subsystem1_out1_signal2_signal1_signal1_signal2_signal2;

  assign PARA_OUT_R_signal2_signal1_signal2_signal1_signal1 = Subsystem1_out1_signal2_signal1_signal2_signal1_signal1;

  assign PARA_OUT_R_signal2_signal1_signal2_signal1_signal2 = Subsystem1_out1_signal2_signal1_signal2_signal1_signal2;

  assign PARA_OUT_R_signal2_signal1_signal2_signal2_signal1 = Subsystem1_out1_signal2_signal1_signal2_signal2_signal1;

  assign PARA_OUT_R_signal2_signal1_signal2_signal2_signal2 = Subsystem1_out1_signal2_signal1_signal2_signal2_signal2;

  assign PARA_OUT_R_signal2_signal2_signal1_signal1_signal1 = Subsystem1_out1_signal2_signal2_signal1_signal1_signal1;

  assign PARA_OUT_R_signal2_signal2_signal1_signal1_signal2 = Subsystem1_out1_signal2_signal2_signal1_signal1_signal2;

  assign PARA_OUT_R_signal2_signal2_signal1_signal2_signal1 = Subsystem1_out1_signal2_signal2_signal1_signal2_signal1;

  assign PARA_OUT_R_signal2_signal2_signal1_signal2_signal2 = Subsystem1_out1_signal2_signal2_signal1_signal2_signal2;

  assign PARA_OUT_R_signal2_signal2_signal2_signal1_signal1 = Subsystem1_out1_signal2_signal2_signal2_signal1_signal1;

  assign PARA_OUT_R_signal2_signal2_signal2_signal1_signal2 = Subsystem1_out1_signal2_signal2_signal2_signal1_signal2;

  assign PARA_OUT_R_signal2_signal2_signal2_signal2_signal1 = Subsystem1_out1_signal2_signal2_signal2_signal2_signal1;

  assign PARA_OUT_R_signal2_signal2_signal2_signal2_signal2 = Subsystem1_out1_signal2_signal2_signal2_signal2_signal2;

  assign ce_out = clk_enable;

endmodule  // REC_I2S_NOFIFO
