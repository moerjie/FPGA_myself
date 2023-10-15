// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\I2S\MUX17_block.v
// Created: 2023-10-15 13:37:26
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: MUX17_block
// Source Path: I2S/I2S/PISO_SHIFT_REG_LEFT1/Subsystem/MUX17
// Hierarchy Level: 3
// Model version: 1.83
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module MUX17_block
          (In1_0,
           In1_1,
           In1_2,
           In1_3,
           In1_4,
           In1_5,
           In1_6,
           In1_7,
           In1_8,
           In1_9,
           In1_10,
           In1_11,
           In1_12,
           In1_13,
           In1_14,
           In1_15,
           In1_16,
           In1_17,
           In1_18,
           In1_19,
           In1_20,
           In1_21,
           In1_22,
           In1_23,
           In1_24,
           In1_25,
           In1_26,
           In1_27,
           In1_28,
           In1_29,
           In1_30,
           In1_31,
           In2_0,
           In2_1,
           In2_2,
           In2_3,
           In2_4,
           In2_5,
           In2_6,
           In2_7,
           In2_8,
           In2_9,
           In2_10,
           In2_11,
           In2_12,
           In2_13,
           In2_14,
           In2_15,
           In2_16,
           In2_17,
           In2_18,
           In2_19,
           In2_20,
           In2_21,
           In2_22,
           In2_23,
           In2_24,
           In2_25,
           In2_26,
           In2_27,
           In2_28,
           In2_29,
           In2_30,
           In2_31,
           SEL,
           Out1_0,
           Out1_1,
           Out1_2,
           Out1_3,
           Out1_4,
           Out1_5,
           Out1_6,
           Out1_7,
           Out1_8,
           Out1_9,
           Out1_10,
           Out1_11,
           Out1_12,
           Out1_13,
           Out1_14,
           Out1_15,
           Out1_16,
           Out1_17,
           Out1_18,
           Out1_19,
           Out1_20,
           Out1_21,
           Out1_22,
           Out1_23,
           Out1_24,
           Out1_25,
           Out1_26,
           Out1_27,
           Out1_28,
           Out1_29,
           Out1_30,
           Out1_31);


  input   In1_0;  // boolean
  input   In1_1;  // boolean
  input   In1_2;  // boolean
  input   In1_3;  // boolean
  input   In1_4;  // boolean
  input   In1_5;  // boolean
  input   In1_6;  // boolean
  input   In1_7;  // boolean
  input   In1_8;  // boolean
  input   In1_9;  // boolean
  input   In1_10;  // boolean
  input   In1_11;  // boolean
  input   In1_12;  // boolean
  input   In1_13;  // boolean
  input   In1_14;  // boolean
  input   In1_15;  // boolean
  input   In1_16;  // boolean
  input   In1_17;  // boolean
  input   In1_18;  // boolean
  input   In1_19;  // boolean
  input   In1_20;  // boolean
  input   In1_21;  // boolean
  input   In1_22;  // boolean
  input   In1_23;  // boolean
  input   In1_24;  // boolean
  input   In1_25;  // boolean
  input   In1_26;  // boolean
  input   In1_27;  // boolean
  input   In1_28;  // boolean
  input   In1_29;  // boolean
  input   In1_30;  // boolean
  input   In1_31;  // boolean
  input   In2_0;  // boolean
  input   In2_1;  // boolean
  input   In2_2;  // boolean
  input   In2_3;  // boolean
  input   In2_4;  // boolean
  input   In2_5;  // boolean
  input   In2_6;  // boolean
  input   In2_7;  // boolean
  input   In2_8;  // boolean
  input   In2_9;  // boolean
  input   In2_10;  // boolean
  input   In2_11;  // boolean
  input   In2_12;  // boolean
  input   In2_13;  // boolean
  input   In2_14;  // boolean
  input   In2_15;  // boolean
  input   In2_16;  // boolean
  input   In2_17;  // boolean
  input   In2_18;  // boolean
  input   In2_19;  // boolean
  input   In2_20;  // boolean
  input   In2_21;  // boolean
  input   In2_22;  // boolean
  input   In2_23;  // boolean
  input   In2_24;  // boolean
  input   In2_25;  // boolean
  input   In2_26;  // boolean
  input   In2_27;  // boolean
  input   In2_28;  // boolean
  input   In2_29;  // boolean
  input   In2_30;  // boolean
  input   In2_31;  // boolean
  input   SEL;
  output  Out1_0;  // boolean
  output  Out1_1;  // boolean
  output  Out1_2;  // boolean
  output  Out1_3;  // boolean
  output  Out1_4;  // boolean
  output  Out1_5;  // boolean
  output  Out1_6;  // boolean
  output  Out1_7;  // boolean
  output  Out1_8;  // boolean
  output  Out1_9;  // boolean
  output  Out1_10;  // boolean
  output  Out1_11;  // boolean
  output  Out1_12;  // boolean
  output  Out1_13;  // boolean
  output  Out1_14;  // boolean
  output  Out1_15;  // boolean
  output  Out1_16;  // boolean
  output  Out1_17;  // boolean
  output  Out1_18;  // boolean
  output  Out1_19;  // boolean
  output  Out1_20;  // boolean
  output  Out1_21;  // boolean
  output  Out1_22;  // boolean
  output  Out1_23;  // boolean
  output  Out1_24;  // boolean
  output  Out1_25;  // boolean
  output  Out1_26;  // boolean
  output  Out1_27;  // boolean
  output  Out1_28;  // boolean
  output  Out1_29;  // boolean
  output  Out1_30;  // boolean
  output  Out1_31;  // boolean


  wire Logical_Operator3_out1;
  wire In1_0_1;
  wire SEL_1;
  wire Logical_Operator_out1_0;
  wire In1_1_1;
  wire SEL_2;
  wire Logical_Operator_out1_1;
  wire In1_2_1;
  wire SEL_3;
  wire Logical_Operator_out1_2;
  wire In1_3_1;
  wire SEL_4;
  wire Logical_Operator_out1_3;
  wire In1_4_1;
  wire SEL_5;
  wire Logical_Operator_out1_4;
  wire In1_5_1;
  wire SEL_6;
  wire Logical_Operator_out1_5;
  wire In1_6_1;
  wire SEL_7;
  wire Logical_Operator_out1_6;
  wire In1_7_1;
  wire SEL_8;
  wire Logical_Operator_out1_7;
  wire In1_8_1;
  wire SEL_9;
  wire Logical_Operator_out1_8;
  wire In1_9_1;
  wire SEL_10;
  wire Logical_Operator_out1_9;
  wire In1_10_1;
  wire SEL_11;
  wire Logical_Operator_out1_10;
  wire In1_11_1;
  wire SEL_12;
  wire Logical_Operator_out1_11;
  wire In1_12_1;
  wire SEL_13;
  wire Logical_Operator_out1_12;
  wire In1_13_1;
  wire SEL_14;
  wire Logical_Operator_out1_13;
  wire In1_14_1;
  wire SEL_15;
  wire Logical_Operator_out1_14;
  wire In1_15_1;
  wire SEL_16;
  wire Logical_Operator_out1_15;
  wire In1_16_1;
  wire SEL_17;
  wire Logical_Operator_out1_16;
  wire In1_17_1;
  wire SEL_18;
  wire Logical_Operator_out1_17;
  wire In1_18_1;
  wire SEL_19;
  wire Logical_Operator_out1_18;
  wire In1_19_1;
  wire SEL_20;
  wire Logical_Operator_out1_19;
  wire In1_20_1;
  wire SEL_21;
  wire Logical_Operator_out1_20;
  wire In1_21_1;
  wire SEL_22;
  wire Logical_Operator_out1_21;
  wire In1_22_1;
  wire SEL_23;
  wire Logical_Operator_out1_22;
  wire In1_23_1;
  wire SEL_24;
  wire Logical_Operator_out1_23;
  wire In1_24_1;
  wire SEL_25;
  wire Logical_Operator_out1_24;
  wire In1_25_1;
  wire SEL_26;
  wire Logical_Operator_out1_25;
  wire In1_26_1;
  wire SEL_27;
  wire Logical_Operator_out1_26;
  wire In1_27_1;
  wire SEL_28;
  wire Logical_Operator_out1_27;
  wire In1_28_1;
  wire SEL_29;
  wire Logical_Operator_out1_28;
  wire In1_29_1;
  wire SEL_30;
  wire Logical_Operator_out1_29;
  wire In1_30_1;
  wire SEL_31;
  wire Logical_Operator_out1_30;
  wire In1_31_1;
  wire SEL_32;
  wire Logical_Operator_out1_31;

  // SEL=0  ==>  IN1


  assign Logical_Operator3_out1 =  ~ SEL;



  assign In1_0_1 = In1_0 & Logical_Operator3_out1;



  assign SEL_1 = SEL & In2_0;



  assign Logical_Operator_out1_0 = In1_0_1 | SEL_1;



  assign Out1_0 = Logical_Operator_out1_0;

  assign In1_1_1 = In1_1 & Logical_Operator3_out1;



  assign SEL_2 = SEL & In2_1;



  assign Logical_Operator_out1_1 = In1_1_1 | SEL_2;



  assign Out1_1 = Logical_Operator_out1_1;

  assign In1_2_1 = In1_2 & Logical_Operator3_out1;



  assign SEL_3 = SEL & In2_2;



  assign Logical_Operator_out1_2 = In1_2_1 | SEL_3;



  assign Out1_2 = Logical_Operator_out1_2;

  assign In1_3_1 = In1_3 & Logical_Operator3_out1;



  assign SEL_4 = SEL & In2_3;



  assign Logical_Operator_out1_3 = In1_3_1 | SEL_4;



  assign Out1_3 = Logical_Operator_out1_3;

  assign In1_4_1 = In1_4 & Logical_Operator3_out1;



  assign SEL_5 = SEL & In2_4;



  assign Logical_Operator_out1_4 = In1_4_1 | SEL_5;



  assign Out1_4 = Logical_Operator_out1_4;

  assign In1_5_1 = In1_5 & Logical_Operator3_out1;



  assign SEL_6 = SEL & In2_5;



  assign Logical_Operator_out1_5 = In1_5_1 | SEL_6;



  assign Out1_5 = Logical_Operator_out1_5;

  assign In1_6_1 = In1_6 & Logical_Operator3_out1;



  assign SEL_7 = SEL & In2_6;



  assign Logical_Operator_out1_6 = In1_6_1 | SEL_7;



  assign Out1_6 = Logical_Operator_out1_6;

  assign In1_7_1 = In1_7 & Logical_Operator3_out1;



  assign SEL_8 = SEL & In2_7;



  assign Logical_Operator_out1_7 = In1_7_1 | SEL_8;



  assign Out1_7 = Logical_Operator_out1_7;

  assign In1_8_1 = In1_8 & Logical_Operator3_out1;



  assign SEL_9 = SEL & In2_8;



  assign Logical_Operator_out1_8 = In1_8_1 | SEL_9;



  assign Out1_8 = Logical_Operator_out1_8;

  assign In1_9_1 = In1_9 & Logical_Operator3_out1;



  assign SEL_10 = SEL & In2_9;



  assign Logical_Operator_out1_9 = In1_9_1 | SEL_10;



  assign Out1_9 = Logical_Operator_out1_9;

  assign In1_10_1 = In1_10 & Logical_Operator3_out1;



  assign SEL_11 = SEL & In2_10;



  assign Logical_Operator_out1_10 = In1_10_1 | SEL_11;



  assign Out1_10 = Logical_Operator_out1_10;

  assign In1_11_1 = In1_11 & Logical_Operator3_out1;



  assign SEL_12 = SEL & In2_11;



  assign Logical_Operator_out1_11 = In1_11_1 | SEL_12;



  assign Out1_11 = Logical_Operator_out1_11;

  assign In1_12_1 = In1_12 & Logical_Operator3_out1;



  assign SEL_13 = SEL & In2_12;



  assign Logical_Operator_out1_12 = In1_12_1 | SEL_13;



  assign Out1_12 = Logical_Operator_out1_12;

  assign In1_13_1 = In1_13 & Logical_Operator3_out1;



  assign SEL_14 = SEL & In2_13;



  assign Logical_Operator_out1_13 = In1_13_1 | SEL_14;



  assign Out1_13 = Logical_Operator_out1_13;

  assign In1_14_1 = In1_14 & Logical_Operator3_out1;



  assign SEL_15 = SEL & In2_14;



  assign Logical_Operator_out1_14 = In1_14_1 | SEL_15;



  assign Out1_14 = Logical_Operator_out1_14;

  assign In1_15_1 = In1_15 & Logical_Operator3_out1;



  assign SEL_16 = SEL & In2_15;



  assign Logical_Operator_out1_15 = In1_15_1 | SEL_16;



  assign Out1_15 = Logical_Operator_out1_15;

  assign In1_16_1 = In1_16 & Logical_Operator3_out1;



  assign SEL_17 = SEL & In2_16;



  assign Logical_Operator_out1_16 = In1_16_1 | SEL_17;



  assign Out1_16 = Logical_Operator_out1_16;

  assign In1_17_1 = In1_17 & Logical_Operator3_out1;



  assign SEL_18 = SEL & In2_17;



  assign Logical_Operator_out1_17 = In1_17_1 | SEL_18;



  assign Out1_17 = Logical_Operator_out1_17;

  assign In1_18_1 = In1_18 & Logical_Operator3_out1;



  assign SEL_19 = SEL & In2_18;



  assign Logical_Operator_out1_18 = In1_18_1 | SEL_19;



  assign Out1_18 = Logical_Operator_out1_18;

  assign In1_19_1 = In1_19 & Logical_Operator3_out1;



  assign SEL_20 = SEL & In2_19;



  assign Logical_Operator_out1_19 = In1_19_1 | SEL_20;



  assign Out1_19 = Logical_Operator_out1_19;

  assign In1_20_1 = In1_20 & Logical_Operator3_out1;



  assign SEL_21 = SEL & In2_20;



  assign Logical_Operator_out1_20 = In1_20_1 | SEL_21;



  assign Out1_20 = Logical_Operator_out1_20;

  assign In1_21_1 = In1_21 & Logical_Operator3_out1;



  assign SEL_22 = SEL & In2_21;



  assign Logical_Operator_out1_21 = In1_21_1 | SEL_22;



  assign Out1_21 = Logical_Operator_out1_21;

  assign In1_22_1 = In1_22 & Logical_Operator3_out1;



  assign SEL_23 = SEL & In2_22;



  assign Logical_Operator_out1_22 = In1_22_1 | SEL_23;



  assign Out1_22 = Logical_Operator_out1_22;

  assign In1_23_1 = In1_23 & Logical_Operator3_out1;



  assign SEL_24 = SEL & In2_23;



  assign Logical_Operator_out1_23 = In1_23_1 | SEL_24;



  assign Out1_23 = Logical_Operator_out1_23;

  assign In1_24_1 = In1_24 & Logical_Operator3_out1;



  assign SEL_25 = SEL & In2_24;



  assign Logical_Operator_out1_24 = In1_24_1 | SEL_25;



  assign Out1_24 = Logical_Operator_out1_24;

  assign In1_25_1 = In1_25 & Logical_Operator3_out1;



  assign SEL_26 = SEL & In2_25;



  assign Logical_Operator_out1_25 = In1_25_1 | SEL_26;



  assign Out1_25 = Logical_Operator_out1_25;

  assign In1_26_1 = In1_26 & Logical_Operator3_out1;



  assign SEL_27 = SEL & In2_26;



  assign Logical_Operator_out1_26 = In1_26_1 | SEL_27;



  assign Out1_26 = Logical_Operator_out1_26;

  assign In1_27_1 = In1_27 & Logical_Operator3_out1;



  assign SEL_28 = SEL & In2_27;



  assign Logical_Operator_out1_27 = In1_27_1 | SEL_28;



  assign Out1_27 = Logical_Operator_out1_27;

  assign In1_28_1 = In1_28 & Logical_Operator3_out1;



  assign SEL_29 = SEL & In2_28;



  assign Logical_Operator_out1_28 = In1_28_1 | SEL_29;



  assign Out1_28 = Logical_Operator_out1_28;

  assign In1_29_1 = In1_29 & Logical_Operator3_out1;



  assign SEL_30 = SEL & In2_29;



  assign Logical_Operator_out1_29 = In1_29_1 | SEL_30;



  assign Out1_29 = Logical_Operator_out1_29;

  assign In1_30_1 = In1_30 & Logical_Operator3_out1;



  assign SEL_31 = SEL & In2_30;



  assign Logical_Operator_out1_30 = In1_30_1 | SEL_31;



  assign Out1_30 = Logical_Operator_out1_30;

  assign In1_31_1 = In1_31 & Logical_Operator3_out1;



  assign SEL_32 = SEL & In2_31;



  assign Logical_Operator_out1_31 = In1_31_1 | SEL_32;



  assign Out1_31 = Logical_Operator_out1_31;

endmodule  // MUX17_block

