// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\DDS\Filter.v
// Created: 2023-09-20 16:09:04
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Filter
// Source Path: DDS/Subsystem/Discrete FIR Filter/Filter
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Filter
          (clk,
           reset,
           enb,
           dataIn,
           validIn,
           syncReset,
           dataOut,
           validOut);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] dataIn;  // sfix16_En14
  input   validIn;
  input   syncReset;
  output  signed [15:0] dataOut;  // sfix16_En13
  output  validOut;


  reg  dinRegVld;
  reg signed [15:0] dinReg_0_re;  // sfix16_En14
  reg signed [15:0] dinReg2_0_re;  // sfix16_En14
  wire signed [15:0] CoefOut_0;  // sfix16_En17
  wire signed [15:0] CoefOut_1;  // sfix16_En17
  wire signed [15:0] CoefOut_2;  // sfix16_En17
  wire signed [15:0] CoefOut_3;  // sfix16_En17
  wire signed [15:0] CoefOut_4;  // sfix16_En17
  wire signed [15:0] CoefOut_5;  // sfix16_En17
  wire signed [15:0] CoefOut_6;  // sfix16_En17
  wire signed [15:0] CoefOut_7;  // sfix16_En17
  wire signed [15:0] CoefOut_8;  // sfix16_En17
  wire signed [15:0] CoefOut_9;  // sfix16_En17
  wire signed [15:0] CoefOut_10;  // sfix16_En17
  wire signed [15:0] CoefOut_11;  // sfix16_En17
  wire signed [15:0] CoefOut_12;  // sfix16_En17
  wire signed [15:0] CoefOut_13;  // sfix16_En17
  wire signed [15:0] CoefOut_14;  // sfix16_En17
  wire signed [15:0] CoefOut_15;  // sfix16_En17
  wire signed [15:0] CoefOut_16;  // sfix16_En17
  wire signed [15:0] CoefOut_17;  // sfix16_En17
  wire signed [15:0] CoefOut_18;  // sfix16_En17
  wire signed [15:0] CoefOut_19;  // sfix16_En17
  wire signed [15:0] CoefOut_20;  // sfix16_En17
  wire signed [15:0] CoefOut_21;  // sfix16_En17
  wire signed [15:0] CoefOut_22;  // sfix16_En17
  wire signed [15:0] CoefOut_23;  // sfix16_En17
  wire signed [15:0] CoefOut_24;  // sfix16_En17
  wire signed [15:0] CoefOut_25;  // sfix16_En17
  wire signed [15:0] CoefOut_26;  // sfix16_En17
  wire signed [15:0] CoefOut_27;  // sfix16_En17
  wire signed [15:0] CoefOut_28;  // sfix16_En17
  wire signed [15:0] CoefOut_29;  // sfix16_En17
  wire signed [15:0] CoefOut_30;  // sfix16_En17
  wire signed [15:0] CoefOut_31;  // sfix16_En17
  wire signed [15:0] CoefOut_32;  // sfix16_En17
  wire signed [15:0] CoefOut_33;  // sfix16_En17
  wire signed [15:0] CoefOut_34;  // sfix16_En17
  wire signed [15:0] CoefOut_35;  // sfix16_En17
  wire signed [15:0] CoefOut_36;  // sfix16_En17
  wire signed [15:0] CoefOut_37;  // sfix16_En17
  wire signed [15:0] CoefOut_38;  // sfix16_En17
  wire signed [15:0] CoefOut_39;  // sfix16_En17
  reg  dinReg2Vld;
  wire signed [15:0] dout_1_re;  // sfix16_En13
  wire doutVld;


  always @(posedge clk or posedge reset)
    begin : intdelay_process
      if (reset == 1'b1) begin
        dinRegVld <= 1'b0;
      end
      else begin
        if (enb) begin
          if (syncReset == 1'b1) begin
            dinRegVld <= 1'b0;
          end
          else begin
            dinRegVld <= validIn;
          end
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_1_process
      if (reset == 1'b1) begin
        dinReg_0_re <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          if (syncReset == 1'b1) begin
            dinReg_0_re <= 16'sb0000000000000000;
          end
          else begin
            if (validIn) begin
              dinReg_0_re <= dataIn;
            end
          end
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_2_process
      if (reset == 1'b1) begin
        dinReg2_0_re <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          if (syncReset == 1'b1) begin
            dinReg2_0_re <= 16'sb0000000000000000;
          end
          else begin
            if (dinRegVld) begin
              dinReg2_0_re <= dinReg_0_re;
            end
          end
        end
      end
    end



  FilterCoef u_CoefTable_1 (.CoefOut_0(CoefOut_0),  // sfix16_En17
                            .CoefOut_1(CoefOut_1),  // sfix16_En17
                            .CoefOut_2(CoefOut_2),  // sfix16_En17
                            .CoefOut_3(CoefOut_3),  // sfix16_En17
                            .CoefOut_4(CoefOut_4),  // sfix16_En17
                            .CoefOut_5(CoefOut_5),  // sfix16_En17
                            .CoefOut_6(CoefOut_6),  // sfix16_En17
                            .CoefOut_7(CoefOut_7),  // sfix16_En17
                            .CoefOut_8(CoefOut_8),  // sfix16_En17
                            .CoefOut_9(CoefOut_9),  // sfix16_En17
                            .CoefOut_10(CoefOut_10),  // sfix16_En17
                            .CoefOut_11(CoefOut_11),  // sfix16_En17
                            .CoefOut_12(CoefOut_12),  // sfix16_En17
                            .CoefOut_13(CoefOut_13),  // sfix16_En17
                            .CoefOut_14(CoefOut_14),  // sfix16_En17
                            .CoefOut_15(CoefOut_15),  // sfix16_En17
                            .CoefOut_16(CoefOut_16),  // sfix16_En17
                            .CoefOut_17(CoefOut_17),  // sfix16_En17
                            .CoefOut_18(CoefOut_18),  // sfix16_En17
                            .CoefOut_19(CoefOut_19),  // sfix16_En17
                            .CoefOut_20(CoefOut_20),  // sfix16_En17
                            .CoefOut_21(CoefOut_21),  // sfix16_En17
                            .CoefOut_22(CoefOut_22),  // sfix16_En17
                            .CoefOut_23(CoefOut_23),  // sfix16_En17
                            .CoefOut_24(CoefOut_24),  // sfix16_En17
                            .CoefOut_25(CoefOut_25),  // sfix16_En17
                            .CoefOut_26(CoefOut_26),  // sfix16_En17
                            .CoefOut_27(CoefOut_27),  // sfix16_En17
                            .CoefOut_28(CoefOut_28),  // sfix16_En17
                            .CoefOut_29(CoefOut_29),  // sfix16_En17
                            .CoefOut_30(CoefOut_30),  // sfix16_En17
                            .CoefOut_31(CoefOut_31),  // sfix16_En17
                            .CoefOut_32(CoefOut_32),  // sfix16_En17
                            .CoefOut_33(CoefOut_33),  // sfix16_En17
                            .CoefOut_34(CoefOut_34),  // sfix16_En17
                            .CoefOut_35(CoefOut_35),  // sfix16_En17
                            .CoefOut_36(CoefOut_36),  // sfix16_En17
                            .CoefOut_37(CoefOut_37),  // sfix16_En17
                            .CoefOut_38(CoefOut_38),  // sfix16_En17
                            .CoefOut_39(CoefOut_39)  // sfix16_En17
                            );

  always @(posedge clk or posedge reset)
    begin : intdelay_3_process
      if (reset == 1'b1) begin
        dinReg2Vld <= 1'b0;
      end
      else begin
        if (enb) begin
          if (syncReset == 1'b1) begin
            dinReg2Vld <= 1'b0;
          end
          else begin
            dinReg2Vld <= dinRegVld;
          end
        end
      end
    end



  subFilter u_subFilter_1_re (.clk(clk),
                              .reset(reset),
                              .enb(enb),
                              .dinReg2_0_re(dinReg2_0_re),  // sfix16_En14
                              .coefIn_0(CoefOut_0),  // sfix16_En17
                              .coefIn_1(CoefOut_1),  // sfix16_En17
                              .coefIn_2(CoefOut_2),  // sfix16_En17
                              .coefIn_3(CoefOut_3),  // sfix16_En17
                              .coefIn_4(CoefOut_4),  // sfix16_En17
                              .coefIn_5(CoefOut_5),  // sfix16_En17
                              .coefIn_6(CoefOut_6),  // sfix16_En17
                              .coefIn_7(CoefOut_7),  // sfix16_En17
                              .coefIn_8(CoefOut_8),  // sfix16_En17
                              .coefIn_9(CoefOut_9),  // sfix16_En17
                              .coefIn_10(CoefOut_10),  // sfix16_En17
                              .coefIn_11(CoefOut_11),  // sfix16_En17
                              .coefIn_12(CoefOut_12),  // sfix16_En17
                              .coefIn_13(CoefOut_13),  // sfix16_En17
                              .coefIn_14(CoefOut_14),  // sfix16_En17
                              .coefIn_15(CoefOut_15),  // sfix16_En17
                              .coefIn_16(CoefOut_16),  // sfix16_En17
                              .coefIn_17(CoefOut_17),  // sfix16_En17
                              .coefIn_18(CoefOut_18),  // sfix16_En17
                              .coefIn_19(CoefOut_19),  // sfix16_En17
                              .coefIn_20(CoefOut_20),  // sfix16_En17
                              .coefIn_21(CoefOut_21),  // sfix16_En17
                              .coefIn_22(CoefOut_22),  // sfix16_En17
                              .coefIn_23(CoefOut_23),  // sfix16_En17
                              .coefIn_24(CoefOut_24),  // sfix16_En17
                              .coefIn_25(CoefOut_25),  // sfix16_En17
                              .coefIn_26(CoefOut_26),  // sfix16_En17
                              .coefIn_27(CoefOut_27),  // sfix16_En17
                              .coefIn_28(CoefOut_28),  // sfix16_En17
                              .coefIn_29(CoefOut_29),  // sfix16_En17
                              .coefIn_30(CoefOut_30),  // sfix16_En17
                              .coefIn_31(CoefOut_31),  // sfix16_En17
                              .coefIn_32(CoefOut_32),  // sfix16_En17
                              .coefIn_33(CoefOut_33),  // sfix16_En17
                              .coefIn_34(CoefOut_34),  // sfix16_En17
                              .coefIn_35(CoefOut_35),  // sfix16_En17
                              .coefIn_36(CoefOut_36),  // sfix16_En17
                              .coefIn_37(CoefOut_37),  // sfix16_En17
                              .coefIn_38(CoefOut_38),  // sfix16_En17
                              .coefIn_39(CoefOut_39),  // sfix16_En17
                              .dinRegVld(dinReg2Vld),
                              .syncReset(syncReset),
                              .dout_1_re(dout_1_re),  // sfix16_En13
                              .doutVld(doutVld)
                              );

  assign dataOut = dout_1_re;

  assign validOut = doutVld;

endmodule  // Filter
