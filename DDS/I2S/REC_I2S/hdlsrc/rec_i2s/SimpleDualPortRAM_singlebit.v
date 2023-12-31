// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\I2S\REC_I2S\hdlsrc\rec_i2s\SimpleDualPortRAM_singlebit.v
// Created: 2023-10-27 21:14:54
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SimpleDualPortRAM_singlebit
// Source Path: rec_i2s/REC_I2S/HDL_FIFO_L/SimpleDualPortRAM_singlebit
// Hierarchy Level: 3
// Model version: 1.39
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SimpleDualPortRAM_singlebit
          (clk,
           enb,
           wr_din,
           wr_addr,
           wr_en,
           rd_addr,
           dout);

  parameter integer AddrWidth  = 1;
  parameter integer DataWidth  = 1;

  input   clk;
  input   enb;
  input   wr_din;
  input   [AddrWidth - 1:0] wr_addr;  // parameterized width
  input   wr_en;  // ufix1
  input   [AddrWidth - 1:0] rd_addr;  // parameterized width
  output  dout;


  reg   ram [2**AddrWidth - 1:0];
  reg   data_int;
  integer i;

  initial begin
    for (i=0; i<=2**AddrWidth - 1; i=i+1) begin
      ram[i] = 0;
    end
    data_int = 0;
  end


  always @(posedge clk)
    begin : SimpleDualPortRAM_singlebit_process
      if (enb == 1'b1) begin
        if (wr_en == 1'b1) begin
          ram[wr_addr] <= wr_din;
        end
        data_int <= ram[rd_addr];
      end
    end

  assign dout = data_int;

endmodule  // SimpleDualPortRAM_singlebit

