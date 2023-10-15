// -------------------------------------------------------------
// 
// File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\DDS_32BIT\hdlsrc\NCO\FilterCoef.v
// Created: 2023-09-22 18:18:53
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: FilterCoef
// Source Path: NCO/Subsystem/Discrete FIR Filter/Filter/FilterCoef
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module FilterCoef
          (CoefOut_0,
           CoefOut_1,
           CoefOut_2,
           CoefOut_3,
           CoefOut_4,
           CoefOut_5,
           CoefOut_6,
           CoefOut_7,
           CoefOut_8,
           CoefOut_9,
           CoefOut_10,
           CoefOut_11,
           CoefOut_12,
           CoefOut_13,
           CoefOut_14,
           CoefOut_15,
           CoefOut_16,
           CoefOut_17,
           CoefOut_18,
           CoefOut_19,
           CoefOut_20,
           CoefOut_21,
           CoefOut_22,
           CoefOut_23,
           CoefOut_24,
           CoefOut_25,
           CoefOut_26,
           CoefOut_27,
           CoefOut_28,
           CoefOut_29,
           CoefOut_30,
           CoefOut_31,
           CoefOut_32,
           CoefOut_33,
           CoefOut_34,
           CoefOut_35,
           CoefOut_36,
           CoefOut_37,
           CoefOut_38,
           CoefOut_39);


  output  signed [15:0] CoefOut_0;  // sfix16_En17
  output  signed [15:0] CoefOut_1;  // sfix16_En17
  output  signed [15:0] CoefOut_2;  // sfix16_En17
  output  signed [15:0] CoefOut_3;  // sfix16_En17
  output  signed [15:0] CoefOut_4;  // sfix16_En17
  output  signed [15:0] CoefOut_5;  // sfix16_En17
  output  signed [15:0] CoefOut_6;  // sfix16_En17
  output  signed [15:0] CoefOut_7;  // sfix16_En17
  output  signed [15:0] CoefOut_8;  // sfix16_En17
  output  signed [15:0] CoefOut_9;  // sfix16_En17
  output  signed [15:0] CoefOut_10;  // sfix16_En17
  output  signed [15:0] CoefOut_11;  // sfix16_En17
  output  signed [15:0] CoefOut_12;  // sfix16_En17
  output  signed [15:0] CoefOut_13;  // sfix16_En17
  output  signed [15:0] CoefOut_14;  // sfix16_En17
  output  signed [15:0] CoefOut_15;  // sfix16_En17
  output  signed [15:0] CoefOut_16;  // sfix16_En17
  output  signed [15:0] CoefOut_17;  // sfix16_En17
  output  signed [15:0] CoefOut_18;  // sfix16_En17
  output  signed [15:0] CoefOut_19;  // sfix16_En17
  output  signed [15:0] CoefOut_20;  // sfix16_En17
  output  signed [15:0] CoefOut_21;  // sfix16_En17
  output  signed [15:0] CoefOut_22;  // sfix16_En17
  output  signed [15:0] CoefOut_23;  // sfix16_En17
  output  signed [15:0] CoefOut_24;  // sfix16_En17
  output  signed [15:0] CoefOut_25;  // sfix16_En17
  output  signed [15:0] CoefOut_26;  // sfix16_En17
  output  signed [15:0] CoefOut_27;  // sfix16_En17
  output  signed [15:0] CoefOut_28;  // sfix16_En17
  output  signed [15:0] CoefOut_29;  // sfix16_En17
  output  signed [15:0] CoefOut_30;  // sfix16_En17
  output  signed [15:0] CoefOut_31;  // sfix16_En17
  output  signed [15:0] CoefOut_32;  // sfix16_En17
  output  signed [15:0] CoefOut_33;  // sfix16_En17
  output  signed [15:0] CoefOut_34;  // sfix16_En17
  output  signed [15:0] CoefOut_35;  // sfix16_En17
  output  signed [15:0] CoefOut_36;  // sfix16_En17
  output  signed [15:0] CoefOut_37;  // sfix16_En17
  output  signed [15:0] CoefOut_38;  // sfix16_En17
  output  signed [15:0] CoefOut_39;  // sfix16_En17


  wire signed [15:0] CoefData;  // sfix16_En17
  wire signed [15:0] CoefData_1;  // sfix16_En17
  wire signed [15:0] CoefData_2;  // sfix16_En17
  wire signed [15:0] CoefData_3;  // sfix16_En17
  wire signed [15:0] CoefData_4;  // sfix16_En17
  wire signed [15:0] CoefData_5;  // sfix16_En17
  wire signed [15:0] CoefData_6;  // sfix16_En17
  wire signed [15:0] CoefData_7;  // sfix16_En17
  wire signed [15:0] CoefData_8;  // sfix16_En17
  wire signed [15:0] CoefData_9;  // sfix16_En17
  wire signed [15:0] CoefData_10;  // sfix16_En17
  wire signed [15:0] CoefData_11;  // sfix16_En17
  wire signed [15:0] CoefData_12;  // sfix16_En17
  wire signed [15:0] CoefData_13;  // sfix16_En17
  wire signed [15:0] CoefData_14;  // sfix16_En17
  wire signed [15:0] CoefData_15;  // sfix16_En17
  wire signed [15:0] CoefData_16;  // sfix16_En17
  wire signed [15:0] CoefData_17;  // sfix16_En17
  wire signed [15:0] CoefData_18;  // sfix16_En17
  wire signed [15:0] CoefData_19;  // sfix16_En17
  wire signed [15:0] CoefData_20;  // sfix16_En17
  wire signed [15:0] CoefData_21;  // sfix16_En17
  wire signed [15:0] CoefData_22;  // sfix16_En17
  wire signed [15:0] CoefData_23;  // sfix16_En17
  wire signed [15:0] CoefData_24;  // sfix16_En17
  wire signed [15:0] CoefData_25;  // sfix16_En17
  wire signed [15:0] CoefData_26;  // sfix16_En17
  wire signed [15:0] CoefData_27;  // sfix16_En17
  wire signed [15:0] CoefData_28;  // sfix16_En17
  wire signed [15:0] CoefData_29;  // sfix16_En17
  wire signed [15:0] CoefData_30;  // sfix16_En17
  wire signed [15:0] CoefData_31;  // sfix16_En17
  wire signed [15:0] CoefData_32;  // sfix16_En17
  wire signed [15:0] CoefData_33;  // sfix16_En17
  wire signed [15:0] CoefData_34;  // sfix16_En17
  wire signed [15:0] CoefData_35;  // sfix16_En17
  wire signed [15:0] CoefData_36;  // sfix16_En17
  wire signed [15:0] CoefData_37;  // sfix16_En17
  wire signed [15:0] CoefData_38;  // sfix16_En17
  wire signed [15:0] CoefData_39;  // sfix16_En17


  // CoefReg_1
  assign CoefData = 16'sb1111111111110111;



  assign CoefOut_0 = CoefData;

  // CoefReg_2
  assign CoefData_1 = 16'sb1111111111101001;



  assign CoefOut_1 = CoefData_1;

  // CoefReg_3
  assign CoefData_2 = 16'sb1111111111100001;



  assign CoefOut_2 = CoefData_2;

  // CoefReg_4
  assign CoefData_3 = 16'sb1111111111100100;



  assign CoefOut_3 = CoefData_3;

  // CoefReg_5
  assign CoefData_4 = 16'sb1111111111110110;



  assign CoefOut_4 = CoefData_4;

  // CoefReg_6
  assign CoefData_5 = 16'sb0000000000010110;



  assign CoefOut_5 = CoefData_5;

  // CoefReg_7
  assign CoefData_6 = 16'sb0000000000111100;



  assign CoefOut_6 = CoefData_6;

  // CoefReg_8
  assign CoefData_7 = 16'sb0000000001011000;



  assign CoefOut_7 = CoefData_7;

  // CoefReg_9
  assign CoefData_8 = 16'sb0000000001010011;



  assign CoefOut_8 = CoefData_8;

  // CoefReg_10
  assign CoefData_9 = 16'sb0000000000100000;



  assign CoefOut_9 = CoefData_9;

  // CoefReg_11
  assign CoefData_10 = 16'sb1111111111000001;



  assign CoefOut_10 = CoefData_10;

  // CoefReg_12
  assign CoefData_11 = 16'sb1111111101010100;



  assign CoefOut_11 = CoefData_11;

  // CoefReg_13
  assign CoefData_12 = 16'sb1111111100001011;



  assign CoefOut_12 = CoefData_12;

  // CoefReg_14
  assign CoefData_13 = 16'sb1111111100011101;



  assign CoefOut_13 = CoefData_13;

  // CoefReg_15
  assign CoefData_14 = 16'sb1111111110101000;



  assign CoefOut_14 = CoefData_14;

  // CoefReg_16
  assign CoefData_15 = 16'sb0000000010011001;



  assign CoefOut_15 = CoefData_15;

  // CoefReg_17
  assign CoefData_16 = 16'sb0000000110100001;



  assign CoefOut_16 = CoefData_16;

  // CoefReg_18
  assign CoefData_17 = 16'sb0000001001000101;



  assign CoefOut_17 = CoefData_17;

  // CoefReg_19
  assign CoefData_18 = 16'sb0000001000010000;



  assign CoefOut_18 = CoefData_18;

  // CoefReg_20
  assign CoefData_19 = 16'sb0000000011001110;



  assign CoefOut_19 = CoefData_19;

  // CoefReg_21
  assign CoefData_20 = 16'sb1111111010111100;



  assign CoefOut_20 = CoefData_20;

  // CoefReg_22
  assign CoefData_21 = 16'sb1111110010001110;



  assign CoefOut_21 = CoefData_21;

  // CoefReg_23
  assign CoefData_22 = 16'sb1111101101000010;



  assign CoefOut_22 = CoefData_22;

  // CoefReg_24
  assign CoefData_23 = 16'sb1111101110111010;



  assign CoefOut_23 = CoefData_23;

  // CoefReg_25
  assign CoefData_24 = 16'sb1111111001001101;



  assign CoefOut_24 = CoefData_24;

  // CoefReg_26
  assign CoefData_25 = 16'sb0000001001110010;



  assign CoefOut_25 = CoefData_25;

  // CoefReg_27
  assign CoefData_26 = 16'sb0000011011000010;



  assign CoefOut_26 = CoefData_26;

  // CoefReg_28
  assign CoefData_27 = 16'sb0000100101010100;



  assign CoefOut_27 = CoefData_27;

  // CoefReg_29
  assign CoefData_28 = 16'sb0000100001111000;



  assign CoefOut_28 = CoefData_28;

  // CoefReg_30
  assign CoefData_29 = 16'sb0000001101111110;



  assign CoefOut_29 = CoefData_29;

  // CoefReg_31
  assign CoefData_30 = 16'sb1111101101001110;



  assign CoefOut_30 = CoefData_30;

  // CoefReg_32
  assign CoefData_31 = 16'sb1111001001111011;



  assign CoefOut_31 = CoefData_31;

  // CoefReg_33
  assign CoefData_32 = 16'sb1110110010110010;



  assign CoefOut_32 = CoefData_32;

  // CoefReg_34
  assign CoefData_33 = 16'sb1110110110100111;



  assign CoefOut_33 = CoefData_33;

  // CoefReg_35
  assign CoefData_34 = 16'sb1111011111000011;



  assign CoefOut_34 = CoefData_34;

  // CoefReg_36
  assign CoefData_35 = 16'sb0000101100011000;



  assign CoefOut_35 = CoefData_35;

  // CoefReg_37
  assign CoefData_36 = 16'sb0010010011110011;



  assign CoefOut_36 = CoefData_36;

  // CoefReg_38
  assign CoefData_37 = 16'sb0100000001011001;



  assign CoefOut_37 = CoefData_37;

  // CoefReg_39
  assign CoefData_38 = 16'sb0101011101000001;



  assign CoefOut_38 = CoefData_38;

  // CoefReg_40
  assign CoefData_39 = 16'sb0110010001001011;



  assign CoefOut_39 = CoefData_39;

endmodule  // FilterCoef

