// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\I2S\PISO_SHIFT_REG_RIGHT.v
// Created: 2023-10-15 12:27:23
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: PISO_SHIFT_REG_RIGHT
// Source Path: I2S/I2S/PISO_SHIFT_REG_RIGHT
// Hierarchy Level: 1
// Model version: 1.81
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module PISO_SHIFT_REG_RIGHT
          (clk,
           reset,
           enb,
           CLR,
           LOAD,
           CLK_1,
           PARA_IN_0,
           PARA_IN_1,
           PARA_IN_2,
           PARA_IN_3,
           PARA_IN_4,
           PARA_IN_5,
           PARA_IN_6,
           PARA_IN_7,
           PARA_IN_8,
           PARA_IN_9,
           PARA_IN_10,
           PARA_IN_11,
           PARA_IN_12,
           PARA_IN_13,
           PARA_IN_14,
           PARA_IN_15,
           PARA_IN_16,
           PARA_IN_17,
           PARA_IN_18,
           PARA_IN_19,
           PARA_IN_20,
           PARA_IN_21,
           PARA_IN_22,
           PARA_IN_23,
           PARA_IN_24,
           PARA_IN_25,
           PARA_IN_26,
           PARA_IN_27,
           PARA_IN_28,
           PARA_IN_29,
           PARA_IN_30,
           PARA_IN_31,
           SERIAL_OUT);


  input   clk;
  input   reset;
  input   enb;
  input   CLR;
  input   LOAD;
  input   CLK_1;
  input   [31:0] PARA_IN_0;  // uint32
  input   [31:0] PARA_IN_1;  // uint32
  input   [31:0] PARA_IN_2;  // uint32
  input   [31:0] PARA_IN_3;  // uint32
  input   [31:0] PARA_IN_4;  // uint32
  input   [31:0] PARA_IN_5;  // uint32
  input   [31:0] PARA_IN_6;  // uint32
  input   [31:0] PARA_IN_7;  // uint32
  input   [31:0] PARA_IN_8;  // uint32
  input   [31:0] PARA_IN_9;  // uint32
  input   [31:0] PARA_IN_10;  // uint32
  input   [31:0] PARA_IN_11;  // uint32
  input   [31:0] PARA_IN_12;  // uint32
  input   [31:0] PARA_IN_13;  // uint32
  input   [31:0] PARA_IN_14;  // uint32
  input   [31:0] PARA_IN_15;  // uint32
  input   [31:0] PARA_IN_16;  // uint32
  input   [31:0] PARA_IN_17;  // uint32
  input   [31:0] PARA_IN_18;  // uint32
  input   [31:0] PARA_IN_19;  // uint32
  input   [31:0] PARA_IN_20;  // uint32
  input   [31:0] PARA_IN_21;  // uint32
  input   [31:0] PARA_IN_22;  // uint32
  input   [31:0] PARA_IN_23;  // uint32
  input   [31:0] PARA_IN_24;  // uint32
  input   [31:0] PARA_IN_25;  // uint32
  input   [31:0] PARA_IN_26;  // uint32
  input   [31:0] PARA_IN_27;  // uint32
  input   [31:0] PARA_IN_28;  // uint32
  input   [31:0] PARA_IN_29;  // uint32
  input   [31:0] PARA_IN_30;  // uint32
  input   [31:0] PARA_IN_31;  // uint32
  output  SERIAL_OUT;


  wire [31:0] PARA_IN [0:31];  // uint32 [32]
  reg  [31:0] Data_Type_Conversion_out1;  // boolean [32]
  wire Subsystem_out1;
  reg signed [31:0] Data_Type_Conversion_ii;  // int32
  reg  Data_Type_Conversion_y;  // ufix1

  // LOAD=0写入数据
  // LOAD=1 移位
  // 边沿清零


  assign PARA_IN[0] = PARA_IN_0;
  assign PARA_IN[1] = PARA_IN_1;
  assign PARA_IN[2] = PARA_IN_2;
  assign PARA_IN[3] = PARA_IN_3;
  assign PARA_IN[4] = PARA_IN_4;
  assign PARA_IN[5] = PARA_IN_5;
  assign PARA_IN[6] = PARA_IN_6;
  assign PARA_IN[7] = PARA_IN_7;
  assign PARA_IN[8] = PARA_IN_8;
  assign PARA_IN[9] = PARA_IN_9;
  assign PARA_IN[10] = PARA_IN_10;
  assign PARA_IN[11] = PARA_IN_11;
  assign PARA_IN[12] = PARA_IN_12;
  assign PARA_IN[13] = PARA_IN_13;
  assign PARA_IN[14] = PARA_IN_14;
  assign PARA_IN[15] = PARA_IN_15;
  assign PARA_IN[16] = PARA_IN_16;
  assign PARA_IN[17] = PARA_IN_17;
  assign PARA_IN[18] = PARA_IN_18;
  assign PARA_IN[19] = PARA_IN_19;
  assign PARA_IN[20] = PARA_IN_20;
  assign PARA_IN[21] = PARA_IN_21;
  assign PARA_IN[22] = PARA_IN_22;
  assign PARA_IN[23] = PARA_IN_23;
  assign PARA_IN[24] = PARA_IN_24;
  assign PARA_IN[25] = PARA_IN_25;
  assign PARA_IN[26] = PARA_IN_26;
  assign PARA_IN[27] = PARA_IN_27;
  assign PARA_IN[28] = PARA_IN_28;
  assign PARA_IN[29] = PARA_IN_29;
  assign PARA_IN[30] = PARA_IN_30;
  assign PARA_IN[31] = PARA_IN_31;

  always @* begin
    Data_Type_Conversion_y = 1'b0;

    for(Data_Type_Conversion_ii = 32'sd0; Data_Type_Conversion_ii <= 32'sd31; Data_Type_Conversion_ii = Data_Type_Conversion_ii + 32'sd1) begin
      if (PARA_IN[Data_Type_Conversion_ii] != 32'b00000000000000000000000000000000) begin
        Data_Type_Conversion_y = 1'b1;
      end
      else begin
        Data_Type_Conversion_y = 1'b0;
      end
      Data_Type_Conversion_out1[Data_Type_Conversion_ii] = Data_Type_Conversion_y;
    end

  end



  Subsystem_block u_Subsystem (.clk(clk),
                               .reset(reset),
                               .enb(enb),
                               .CLR(CLR),
                               .LOAD(LOAD),
                               .CLK_1(CLK_1),
                               .In1(Data_Type_Conversion_out1[31]),
                               .In2(Data_Type_Conversion_out1[30]),
                               .In3(Data_Type_Conversion_out1[29]),
                               .In9(Data_Type_Conversion_out1[28]),
                               .In10(Data_Type_Conversion_out1[27]),
                               .In11(Data_Type_Conversion_out1[26]),
                               .In12(Data_Type_Conversion_out1[25]),
                               .In13(Data_Type_Conversion_out1[24]),
                               .In14(Data_Type_Conversion_out1[23]),
                               .In15(Data_Type_Conversion_out1[22]),
                               .In16(Data_Type_Conversion_out1[21]),
                               .In17(Data_Type_Conversion_out1[20]),
                               .In18(Data_Type_Conversion_out1[19]),
                               .In19(Data_Type_Conversion_out1[18]),
                               .In20(Data_Type_Conversion_out1[17]),
                               .In21(Data_Type_Conversion_out1[16]),
                               .In22(Data_Type_Conversion_out1[15]),
                               .In23(Data_Type_Conversion_out1[14]),
                               .In24(Data_Type_Conversion_out1[13]),
                               .In25(Data_Type_Conversion_out1[12]),
                               .In26(Data_Type_Conversion_out1[11]),
                               .In27(Data_Type_Conversion_out1[10]),
                               .In28(Data_Type_Conversion_out1[9]),
                               .In29(Data_Type_Conversion_out1[8]),
                               .In30(Data_Type_Conversion_out1[7]),
                               .In31(Data_Type_Conversion_out1[6]),
                               .In32(Data_Type_Conversion_out1[5]),
                               .In4(Data_Type_Conversion_out1[4]),
                               .In5(Data_Type_Conversion_out1[3]),
                               .In6(Data_Type_Conversion_out1[2]),
                               .In7(Data_Type_Conversion_out1[1]),
                               .In8(Data_Type_Conversion_out1[0]),
                               .SERIAL_OUT(Subsystem_out1)
                               );

  assign SERIAL_OUT = Subsystem_out1;

endmodule  // PISO_SHIFT_REG_RIGHT

