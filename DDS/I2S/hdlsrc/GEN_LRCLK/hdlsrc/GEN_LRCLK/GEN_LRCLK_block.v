// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\I2S\hdlsrc\GEN_LRCLK\hdlsrc\GEN_LRCLK\GEN_LRCLK_block.v
// Created: 2023-10-15 21:07:58
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: GEN_LRCLK_block
// Source Path: GEN_LRCLK/GEN_LRCLK
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module GEN_LRCLK_block
          (clk,
           reset,
           enb,
           enb_1,
           LRCK_OUT);


  input   clk;
  input   reset;
  input   enb;
  input   enb_1;
  output  LRCK_OUT;


  wire [15:0] count_step;  // uint16
  wire [15:0] count_from;  // uint16
  reg [15:0] HDL_Counter_out1;  // uint16
  wire [15:0] count;  // uint16
  wire need_to_wrap;
  wire [15:0] count_value;  // uint16
  wire [15:0] count_1;  // uint16
  wire [15:0] Constant2_out1;  // uint16
  wire LRCLK_relop1;


  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 511
  assign count_step = 16'b0000000000000001;



  assign count_from = 16'b0000000000000000;



  assign count = HDL_Counter_out1 + count_step;



  assign need_to_wrap = HDL_Counter_out1 == 16'b0000000111111111;



  assign count_value = (need_to_wrap == 1'b0 ? count :
              count_from);



  assign count_1 = (enb_1 == 1'b0 ? HDL_Counter_out1 :
              count_value);



  always @(posedge clk or posedge reset)
    begin : HDL_Counter_process
      if (reset == 1'b1) begin
        HDL_Counter_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          HDL_Counter_out1 <= count_1;
        end
      end
    end



  assign Constant2_out1 = 16'b0000000100000000;



  assign LRCLK_relop1 = HDL_Counter_out1 >= Constant2_out1;



  assign LRCK_OUT = LRCLK_relop1;

endmodule  // GEN_LRCLK_block

