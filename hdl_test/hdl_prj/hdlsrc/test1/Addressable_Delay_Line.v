// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\test1\Addressable_Delay_Line.v
// Created: 2023-10-04 18:26:37
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Addressable_Delay_Line
// Source Path: test1/myCNT09/Discrete FIR Filter/Addressable_Delay_Line
// Hierarchy Level: 2
// Model version: 1.17
// 
// Addressable Delay Line
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Addressable_Delay_Line
          (clk,
           reset,
           enb,
           dataIn,
           wrEn,
           wrAddr,
           rdAddr,
           delayLineEnd,
           dataOut);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] dataIn;  // sfix16_En15
  input   wrEn;
  input   [3:0] wrAddr;  // ufix4
  input   [3:0] rdAddr;  // ufix4
  output  signed [15:0] delayLineEnd;  // sfix16_En15
  output  signed [15:0] dataOut;  // sfix16_En15


  wire relop_relop1;
  reg  dataEndEn;
  wire wrEnN;
  wire dataEndEnS;
  wire signed [15:0] delayedSignals;  // sfix16_En15
  reg signed [15:0] delayLineEnd_1;  // sfix16_En15


  assign relop_relop1 = wrAddr == rdAddr;



  always @(posedge clk or posedge reset)
    begin : dataOutReg_process
      if (reset == 1'b1) begin
        dataEndEn <= 1'b0;
      end
      else begin
        if (enb) begin
          dataEndEn <= relop_relop1;
        end
      end
    end



  assign wrEnN =  ~ dataEndEn;



  assign dataEndEnS = relop_relop1 & wrEnN;



  SimpleDualPortRAM_generic #(.AddrWidth(4),
                              .DataWidth(16)
                              )
                            u_simpleDualPortRam_generic (.clk(clk),
                                                         .enb(enb),
                                                         .wr_din(dataIn),
                                                         .wr_addr(wrAddr),
                                                         .wr_en(wrEn),
                                                         .rd_addr(rdAddr),
                                                         .dout(delayedSignals)
                                                         );

  always @(posedge clk or posedge reset)
    begin : dataOutReg_1_process
      if (reset == 1'b1) begin
        delayLineEnd_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb && dataEndEnS) begin
          delayLineEnd_1 <= delayedSignals;
        end
      end
    end



  assign dataOut = delayedSignals;

  assign delayLineEnd = delayLineEnd_1;

endmodule  // Addressable_Delay_Line
