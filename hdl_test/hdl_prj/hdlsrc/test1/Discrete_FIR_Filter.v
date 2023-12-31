// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\test1\Discrete_FIR_Filter.v
// Created: 2023-10-04 18:26:37
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Discrete_FIR_Filter
// Source Path: test1/myCNT09/Discrete FIR Filter
// Hierarchy Level: 1
// Model version: 1.17
// 
// Discrete FIR Filter
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Discrete_FIR_Filter
          (clk,
           reset,
           enb,
           dataIn,
           validIn,
           dataOut,
           validOut,
           ready);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] dataIn;  // sfix16_En15
  input   validIn;
  output  signed [15:0] dataOut;  // sfix16_En14
  output  validOut;
  output  ready;


  wire signed [15:0] coeff;  // sfix16_En15
  wire haltProcess;
  wire readyS;
  wire signed [15:0] dinSM;  // sfix16_En15
  wire dinVldSM;
  reg [3:0] nextDelayLineRdAddrReverse;  // ufix4
  reg [3:0] rdCountReverse_1;  // ufix4
  reg [3:0] nextDelayLineWrAddr;  // ufix4
  reg [3:0] wrCount_1;  // ufix4
  reg [3:0] nextDelayLineRdAddr;  // ufix4
  reg [3:0] rdCount_1;  // ufix4
  reg [3:0] nextSharingCount;  // ufix4
  reg [3:0] sharingCount_1;  // ufix4
  reg  delayLineValidInP;
  reg  lastPhaseStrobe;
  reg  delayLineShiftEnP;
  reg  delayLineShiftEn1_1;
  wire syncResetRst;
  reg  delayLineShiftEn2_1;
  reg  delayLineShiftEn3_1;
  reg  [6:0] validOutLookahead_reg;  // ufix1 [7]
  wire validOutLookahead_1;
  reg  vldOut_1;
  wire notValid;
  reg [3:0] rdAddr0_1;  // ufix4
  reg [3:0] rdAddr1;  // ufix4
  reg [3:0] rdAddr2;  // ufix4
  reg [3:0] rdAddr3;  // ufix4
  wire rdAddrEndNonZero;
  wire rdAddrEndZero;
  reg  [4:0] finalSumValidPipe_reg;  // ufix1 [5]
  wire accumulate;
  wire signed [34:0] accDataOut;  // sfix35_En33
  reg [3:0] wrAddrP;  // ufix4
  reg [3:0] rdAddrDelayLine0;  // ufix4
  wire signed [15:0] delayLineEnd0;  // sfix16_En15
  wire signed [15:0] delayLineDataOut0;  // sfix16_En15
  reg signed [15:0] delayLineDataIn1_1;  // sfix16_En15
  reg [3:0] wrAddr1;  // ufix4
  reg [3:0] rdAddrDelayLine1;  // ufix4
  wire signed [15:0] delayLineEnd1;  // sfix16_En15
  wire signed [15:0] delayLineDataOut1;  // sfix16_En15
  reg signed [15:0] delayLineDataIn2_1;  // sfix16_En15
  reg [3:0] wrAddr2;  // ufix4
  reg [3:0] rdAddrDelayLine2;  // ufix4
  wire signed [15:0] delayLineEnd2;  // sfix16_En15
  wire signed [15:0] delayLineDataOut2;  // sfix16_En15
  reg signed [15:0] delayLineDataIn3_1;  // sfix16_En15
  reg [3:0] wrAddr3;  // ufix4
  reg [3:0] rdAddReverse1;  // ufix4
  reg [3:0] rdAddReverse2;  // ufix4
  reg [3:0] rdAddReverse3;  // ufix4
  wire signed [15:0] delayLineEnd3;  // sfix16_En15
  wire signed [15:0] delayLineDataOut3;  // sfix16_En15
  reg signed [15:0] coeffTableOut2;  // sfix16_En18
  reg signed [15:0] coeffTableRegP2_1;  // sfix16_En18
  reg signed [15:0] coeffTableReg2_1;  // sfix16_En18
  wire signed [15:0] delayLineEnd4;  // sfix16_En15
  wire signed [15:0] delayLineDataOut4;  // sfix16_En15
  reg signed [15:0] coeffTableOut1;  // sfix16_En18
  reg signed [15:0] coeffTableRegP1_1;  // sfix16_En18
  reg signed [15:0] coeffTableReg1_1;  // sfix16_En18
  wire signed [15:0] delayLineEnd5deadOut;  // sfix16_En15
  wire signed [15:0] delayLineDataOut5;  // sfix16_En15
  reg signed [15:0] coeffTableOut0;  // sfix16_En18
  reg signed [15:0] coeffTableRegP0_1;  // sfix16_En18
  reg signed [15:0] coeffTableReg0_1;  // sfix16_En18
  wire signed [34:0] sumIn;  // sfix35_En33
  wire signed [34:0] sumOut;  // sfix35_En33
  wire signed [34:0] sumOut_0;  // sfix35_En33
  wire signed [34:0] sumOut_1;  // sfix35_En33
  reg signed [34:0] sumOutReg_1;  // sfix35_En33
  reg signed [34:0] accDataOut_1;  // sfix35_En33
  wire signed [34:0] accSwitchOut;  // sfix35_En33
  wire signed [34:0] accAdderOut;  // sfix35_En33
  wire signed [15:0] converterOut;  // sfix16_En14
  reg signed [15:0] dataOutRegIn;  // sfix16_En14
  reg signed [15:0] dout_re_1;  // sfix16_En14
  wire signed [15:0] dataZero;  // sfix16_En14
  reg [3:0] InputControl_out4_0;  // ufix4

  initial begin
    coeffTableRegP2_1 = 16'sb0000000000000000;
    coeffTableRegP1_1 = 16'sb0000000000000000;
    coeffTableRegP0_1 = 16'sb0000000000000000;
  end

  assign coeff = 16'sb0000000000000000;



  assign haltProcess = 1'b0;



  FirRdyLogic u_firRdyLogic (.clk(clk),
                             .reset(reset),
                             .enb(enb),
                             .dinSwitch(dataIn),  // sfix16_En15
                             .dinVldSwitch(validIn),
                             .coeff(coeff),  // sfix16_En15
                             .haltProcess(haltProcess),
                             .readySM(readyS),
                             .dinSM(dinSM),  // sfix16_En15
                             .dinVldSM(dinVldSM)
                             );

  always @(posedge clk or posedge reset)
    begin : rdCountReverse_process
      if (reset == 1'b1) begin
        rdCountReverse_1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdCountReverse_1 <= nextDelayLineRdAddrReverse;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : wrCount_process
      if (reset == 1'b1) begin
        wrCount_1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          wrCount_1 <= nextDelayLineWrAddr;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdCount_process
      if (reset == 1'b1) begin
        rdCount_1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdCount_1 <= nextDelayLineRdAddr;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : sharingCount_process
      if (reset == 1'b1) begin
        sharingCount_1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          sharingCount_1 <= nextSharingCount;
        end
      end
    end



  // Input control counter combinatorial logic
  always @(dinVldSM, rdCountReverse_1, rdCount_1, sharingCount_1, wrCount_1) begin
    delayLineValidInP = (sharingCount_1 == 4'b0000) && (dinVldSM == 1'b1);
    lastPhaseStrobe = sharingCount_1 == 4'b1001;
    if ((dinVldSM == 1'b1) || (sharingCount_1 > 4'b0000)) begin
      if (sharingCount_1 == 4'b1001) begin
        nextSharingCount = 4'b0000;
      end
      else begin
        nextSharingCount = sharingCount_1 + 4'b0001;
      end
    end
    else begin
      nextSharingCount = sharingCount_1;
    end
    if (dinVldSM == 1'b1) begin
      if (wrCount_1 == 4'b1001) begin
        InputControl_out4_0 = 4'b0000;
      end
      else begin
        InputControl_out4_0 = wrCount_1 + 4'b0001;
      end
    end
    else begin
      InputControl_out4_0 = wrCount_1;
    end
    if ((rdCount_1 != InputControl_out4_0) || (dinVldSM == 1'b1)) begin
      if (rdCount_1 == 4'b0000) begin
        nextDelayLineRdAddr = 4'b1001;
      end
      else begin
        nextDelayLineRdAddr = rdCount_1 - 4'b0001;
      end
    end
    else begin
      nextDelayLineRdAddr = rdCount_1;
    end
    if ((sharingCount_1 > 4'b0000) || (dinVldSM == 1'b1)) begin
      if (sharingCount_1 == 4'b1001) begin
        if (wrCount_1 == 4'b1001) begin
          nextDelayLineRdAddrReverse = 4'b0000;
        end
        else begin
          nextDelayLineRdAddrReverse = wrCount_1 + 4'b0001;
        end
      end
      else if (rdCountReverse_1 == 4'b1001) begin
        nextDelayLineRdAddrReverse = 4'b0000;
      end
      else begin
        nextDelayLineRdAddrReverse = rdCountReverse_1 + 4'b0001;
      end
    end
    else begin
      nextDelayLineRdAddrReverse = rdCountReverse_1;
    end
    nextDelayLineWrAddr = InputControl_out4_0;
  end



  always @(posedge clk or posedge reset)
    begin : delayLineShiftEn0_process
      if (reset == 1'b1) begin
        delayLineShiftEnP <= 1'b0;
      end
      else begin
        if (enb) begin
          delayLineShiftEnP <= lastPhaseStrobe;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : delayLineShiftEn1_process
      if (reset == 1'b1) begin
        delayLineShiftEn1_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          delayLineShiftEn1_1 <= delayLineShiftEnP;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : delayLineShiftEn2_process
      if (reset == 1'b1) begin
        delayLineShiftEn2_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          if (syncResetRst == 1'b1) begin
            delayLineShiftEn2_1 <= 1'b0;
          end
          else begin
            delayLineShiftEn2_1 <= delayLineShiftEn1_1;
          end
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : delayLineShiftEn3_process
      if (reset == 1'b1) begin
        delayLineShiftEn3_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          if (syncResetRst == 1'b1) begin
            delayLineShiftEn3_1 <= 1'b0;
          end
          else begin
            delayLineShiftEn3_1 <= delayLineShiftEn2_1;
          end
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : validOutLookahead_process
      if (reset == 1'b1) begin
        validOutLookahead_reg <= {7{1'b0}};
      end
      else begin
        if (enb) begin
          validOutLookahead_reg[0] <= delayLineShiftEn3_1;
          validOutLookahead_reg[32'sd6:32'sd1] <= validOutLookahead_reg[32'sd5:32'sd0];
        end
      end
    end

  assign validOutLookahead_1 = validOutLookahead_reg[6];



  always @(posedge clk or posedge reset)
    begin : vldOut_process
      if (reset == 1'b1) begin
        vldOut_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          vldOut_1 <= validOutLookahead_1;
        end
      end
    end



  assign notValid =  ~ vldOut_1;



  always @(posedge clk or posedge reset)
    begin : rdAddr0_process
      if (reset == 1'b1) begin
        rdAddr0_1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddr0_1 <= sharingCount_1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddr0_2_process
      if (reset == 1'b1) begin
        rdAddr1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddr1 <= rdAddr0_1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddr1_1_process
      if (reset == 1'b1) begin
        rdAddr2 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddr2 <= rdAddr1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddr2_1_process
      if (reset == 1'b1) begin
        rdAddr3 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddr3 <= rdAddr2;
        end
      end
    end



  assign rdAddrEndNonZero = rdAddr3 != 4'b0000;



  assign rdAddrEndZero =  ~ rdAddrEndNonZero;



  always @(posedge clk or posedge reset)
    begin : finalSumValidPipe_process
      if (reset == 1'b1) begin
        finalSumValidPipe_reg <= {5{1'b0}};
      end
      else begin
        if (enb) begin
          finalSumValidPipe_reg[0] <= rdAddrEndZero;
          finalSumValidPipe_reg[32'sd4:32'sd1] <= finalSumValidPipe_reg[32'sd3:32'sd0];
        end
      end
    end

  assign accumulate = finalSumValidPipe_reg[4];



  assign accDataOut = 35'sh000000000;



  always @(posedge clk or posedge reset)
    begin : wrAddr_process
      if (reset == 1'b1) begin
        wrAddrP <= 4'b0000;
      end
      else begin
        if (enb) begin
          wrAddrP <= wrCount_1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddrDelayLine_process
      if (reset == 1'b1) begin
        rdAddrDelayLine0 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddrDelayLine0 <= rdCount_1;
        end
      end
    end



  Addressable_Delay_Line u_delayLine0 (.clk(clk),
                                       .reset(reset),
                                       .enb(enb),
                                       .dataIn(dinSM),  // sfix16_En15
                                       .wrEn(delayLineValidInP),
                                       .wrAddr(wrAddrP),  // ufix4
                                       .rdAddr(rdAddrDelayLine0),  // ufix4
                                       .delayLineEnd(delayLineEnd0),  // sfix16_En15
                                       .dataOut(delayLineDataOut0)  // sfix16_En15
                                       );

  always @(posedge clk or posedge reset)
    begin : delayLineDataIn1_process
      if (reset == 1'b1) begin
        delayLineDataIn1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayLineDataIn1_1 <= delayLineEnd0;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : wrAddr0_process
      if (reset == 1'b1) begin
        wrAddr1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          wrAddr1 <= wrAddrP;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddrDelayLine0_1_process
      if (reset == 1'b1) begin
        rdAddrDelayLine1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddrDelayLine1 <= rdAddrDelayLine0;
        end
      end
    end



  Addressable_Delay_Line u_delayLine1 (.clk(clk),
                                       .reset(reset),
                                       .enb(enb),
                                       .dataIn(delayLineDataIn1_1),  // sfix16_En15
                                       .wrEn(delayLineShiftEn1_1),
                                       .wrAddr(wrAddr1),  // ufix4
                                       .rdAddr(rdAddrDelayLine1),  // ufix4
                                       .delayLineEnd(delayLineEnd1),  // sfix16_En15
                                       .dataOut(delayLineDataOut1)  // sfix16_En15
                                       );

  always @(posedge clk or posedge reset)
    begin : delayLineDataIn2_process
      if (reset == 1'b1) begin
        delayLineDataIn2_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayLineDataIn2_1 <= delayLineEnd1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : wrAddr1_1_process
      if (reset == 1'b1) begin
        wrAddr2 <= 4'b0000;
      end
      else begin
        if (enb) begin
          wrAddr2 <= wrAddr1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddrDelayLine1_1_process
      if (reset == 1'b1) begin
        rdAddrDelayLine2 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddrDelayLine2 <= rdAddrDelayLine1;
        end
      end
    end



  Addressable_Delay_Line u_delayLine2 (.clk(clk),
                                       .reset(reset),
                                       .enb(enb),
                                       .dataIn(delayLineDataIn2_1),  // sfix16_En15
                                       .wrEn(delayLineShiftEn2_1),
                                       .wrAddr(wrAddr2),  // ufix4
                                       .rdAddr(rdAddrDelayLine2),  // ufix4
                                       .delayLineEnd(delayLineEnd2),  // sfix16_En15
                                       .dataOut(delayLineDataOut2)  // sfix16_En15
                                       );

  always @(posedge clk or posedge reset)
    begin : delayLineDataIn3_process
      if (reset == 1'b1) begin
        delayLineDataIn3_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayLineDataIn3_1 <= delayLineEnd2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : wrAddr2_1_process
      if (reset == 1'b1) begin
        wrAddr3 <= 4'b0000;
      end
      else begin
        if (enb) begin
          wrAddr3 <= wrAddr2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddrReverse0_process
      if (reset == 1'b1) begin
        rdAddReverse1 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddReverse1 <= rdCountReverse_1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddReverse1_1_process
      if (reset == 1'b1) begin
        rdAddReverse2 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddReverse2 <= rdAddReverse1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : rdAddReverse2_1_process
      if (reset == 1'b1) begin
        rdAddReverse3 <= 4'b0000;
      end
      else begin
        if (enb) begin
          rdAddReverse3 <= rdAddReverse2;
        end
      end
    end



  Addressable_Delay_Line_block u_delayLine3 (.clk(clk),
                                             .reset(reset),
                                             .enb(enb),
                                             .dataIn(delayLineDataIn3_1),  // sfix16_En15
                                             .validIn(delayLineShiftEn3_1),
                                             .wrAddr(wrAddr3),  // ufix4
                                             .rdAddr(rdAddReverse3),  // ufix4
                                             .delayLineEnd(delayLineEnd3),  // sfix16_En15
                                             .dataOut(delayLineDataOut3)  // sfix16_En15
                                             );

  // Coefficient table for multiplier2
  always @(rdAddr2) begin
    case ( rdAddr2)
      4'b0000 :
        begin
          coeffTableOut2 = 16'sb0000010001000100;
        end
      4'b0001 :
        begin
          coeffTableOut2 = 16'sb0000110111111101;
        end
      4'b0010 :
        begin
          coeffTableOut2 = 16'sb0001100111000101;
        end
      4'b0011 :
        begin
          coeffTableOut2 = 16'sb0010011100010000;
        end
      4'b0100 :
        begin
          coeffTableOut2 = 16'sb0011010100010110;
        end
      4'b0101 :
        begin
          coeffTableOut2 = 16'sb0100001011101100;
        end
      4'b0110 :
        begin
          coeffTableOut2 = 16'sb0100111110010010;
        end
      4'b0111 :
        begin
          coeffTableOut2 = 16'sb0101101000010001;
        end
      4'b1000 :
        begin
          coeffTableOut2 = 16'sb0110000110010101;
        end
      4'b1001 :
        begin
          coeffTableOut2 = 16'sb0110010110000001;
        end
      default :
        begin
          coeffTableOut2 = 16'sb0000000000000000;
        end
    endcase
  end



  always @(posedge clk)
    begin : coeffTableRegP2_process
      if (enb) begin
        coeffTableRegP2_1 <= coeffTableOut2;
      end
    end



  always @(posedge clk or posedge reset)
    begin : coeffTableReg2_process
      if (reset == 1'b1) begin
        coeffTableReg2_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          coeffTableReg2_1 <= coeffTableRegP2_1;
        end
      end
    end



  Addressable_Delay_Line_block u_delayLine4 (.clk(clk),
                                             .reset(reset),
                                             .enb(enb),
                                             .dataIn(delayLineEnd3),  // sfix16_En15
                                             .validIn(delayLineShiftEn2_1),
                                             .wrAddr(wrAddr2),  // ufix4
                                             .rdAddr(rdAddReverse2),  // ufix4
                                             .delayLineEnd(delayLineEnd4),  // sfix16_En15
                                             .dataOut(delayLineDataOut4)  // sfix16_En15
                                             );

  // Coefficient table for multiplier1
  always @(rdAddr1) begin
    case ( rdAddr1)
      4'b0000 :
        begin
          coeffTableOut1 = 16'sb1111111101000010;
        end
      4'b0001 :
        begin
          coeffTableOut1 = 16'sb1111110110010111;
        end
      4'b0010 :
        begin
          coeffTableOut1 = 16'sb1111101110000011;
        end
      4'b0011 :
        begin
          coeffTableOut1 = 16'sb1111100100111001;
        end
      4'b0100 :
        begin
          coeffTableOut1 = 16'sb1111011100000101;
        end
      4'b0101 :
        begin
          coeffTableOut1 = 16'sb1111010101010010;
        end
      4'b0110 :
        begin
          coeffTableOut1 = 16'sb1111010010010111;
        end
      4'b0111 :
        begin
          coeffTableOut1 = 16'sb1111010101010101;
        end
      4'b1000 :
        begin
          coeffTableOut1 = 16'sb1111011111111110;
        end
      4'b1001 :
        begin
          coeffTableOut1 = 16'sb1111110011101011;
        end
      default :
        begin
          coeffTableOut1 = 16'sb0000000000000000;
        end
    endcase
  end



  always @(posedge clk)
    begin : coeffTableRegP1_process
      if (enb) begin
        coeffTableRegP1_1 <= coeffTableOut1;
      end
    end



  always @(posedge clk or posedge reset)
    begin : coeffTableReg1_process
      if (reset == 1'b1) begin
        coeffTableReg1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          coeffTableReg1_1 <= coeffTableRegP1_1;
        end
      end
    end



  Addressable_Delay_Line_block u_delayLine5 (.clk(clk),
                                             .reset(reset),
                                             .enb(enb),
                                             .dataIn(delayLineEnd4),  // sfix16_En15
                                             .validIn(delayLineShiftEn1_1),
                                             .wrAddr(wrAddr1),  // ufix4
                                             .rdAddr(rdAddReverse1),  // ufix4
                                             .delayLineEnd(delayLineEnd5deadOut),  // sfix16_En15
                                             .dataOut(delayLineDataOut5)  // sfix16_En15
                                             );

  // Coefficient table for multiplier0
  always @(rdAddr0_1) begin
    case ( rdAddr0_1)
      4'b0000 :
        begin
          coeffTableOut0 = 16'sb0000000000010111;
        end
      4'b0001 :
        begin
          coeffTableOut0 = 16'sb0000000001000010;
        end
      4'b0010 :
        begin
          coeffTableOut0 = 16'sb0000000001110110;
        end
      4'b0011 :
        begin
          coeffTableOut0 = 16'sb0000000010110101;
        end
      4'b0100 :
        begin
          coeffTableOut0 = 16'sb0000000011111100;
        end
      4'b0101 :
        begin
          coeffTableOut0 = 16'sb0000000101000000;
        end
      4'b0110 :
        begin
          coeffTableOut0 = 16'sb0000000101101111;
        end
      4'b0111 :
        begin
          coeffTableOut0 = 16'sb0000000101101111;
        end
      4'b1000 :
        begin
          coeffTableOut0 = 16'sb0000000100100011;
        end
      4'b1001 :
        begin
          coeffTableOut0 = 16'sb0000000001110000;
        end
      default :
        begin
          coeffTableOut0 = 16'sb0000000000000000;
        end
    endcase
  end



  always @(posedge clk)
    begin : coeffTableRegP0_process
      if (enb) begin
        coeffTableRegP0_1 <= coeffTableOut0;
      end
    end



  always @(posedge clk or posedge reset)
    begin : coeffTableReg0_process
      if (reset == 1'b1) begin
        coeffTableReg0_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          coeffTableReg0_1 <= coeffTableRegP0_1;
        end
      end
    end



  assign sumIn = 35'sh000000000;



  FilterTapSystolicPreAdd u_filterTap0 (.clk(clk),
                                        .enb(enb),
                                        .din_re(delayLineDataOut0),  // sfix16_En15
                                        .preAddIn(delayLineDataOut5),  // sfix16_En15
                                        .coeff(coeffTableReg0_1),  // sfix16_En18
                                        .sumIn(sumIn),  // sfix35_En33
                                        .sumOut(sumOut)  // sfix35_En33
                                        );

  FilterTapSystolicPreAdd u_filterTap1 (.clk(clk),
                                        .enb(enb),
                                        .din_re(delayLineDataOut1),  // sfix16_En15
                                        .preAddIn(delayLineDataOut4),  // sfix16_En15
                                        .coeff(coeffTableReg1_1),  // sfix16_En18
                                        .sumIn(sumOut),  // sfix35_En33
                                        .sumOut(sumOut_0)  // sfix35_En33
                                        );

  FilterTapSystolicPreAdd u_filterTap2 (.clk(clk),
                                        .enb(enb),
                                        .din_re(delayLineDataOut2),  // sfix16_En15
                                        .preAddIn(delayLineDataOut3),  // sfix16_En15
                                        .coeff(coeffTableReg2_1),  // sfix16_En18
                                        .sumIn(sumOut_0),  // sfix35_En33
                                        .sumOut(sumOut_1)  // sfix35_En33
                                        );

  always @(posedge clk or posedge reset)
    begin : sumOutReg_process
      if (reset == 1'b1) begin
        sumOutReg_1 <= 35'sh000000000;
      end
      else begin
        if (enb) begin
          sumOutReg_1 <= sumOut_1;
        end
      end
    end



  assign accSwitchOut = (accumulate == 1'b0 ? accDataOut_1 :
              accDataOut);



  assign accAdderOut = accSwitchOut + sumOutReg_1;



  always @(posedge clk or posedge reset)
    begin : accDataOut_2_process
      if (reset == 1'b1) begin
        accDataOut_1 <= 35'sh000000000;
      end
      else begin
        if (enb) begin
          accDataOut_1 <= accAdderOut;
        end
      end
    end



  assign converterOut = accDataOut_1[34:19];



  always @(posedge clk or posedge reset)
    begin : converterOutReg_process
      if (reset == 1'b1) begin
        dataOutRegIn <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          dataOutRegIn <= converterOut;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : dout_re_process
      if (reset == 1'b1) begin
        dout_re_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb && validOutLookahead_1) begin
          dout_re_1 <= dataOutRegIn;
        end
      end
    end



  assign dataZero = 16'sb0000000000000000;



  assign dataOut = (notValid == 1'b0 ? dout_re_1 :
              dataZero);



  assign validOut = vldOut_1;

  assign ready = readyS;

endmodule  // Discrete_FIR_Filter

