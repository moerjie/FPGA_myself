// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\I2S\Subsystem_block1.v
// Created: 2023-10-15 10:43:32
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Subsystem_block1
// Source Path: I2S/Subsystem/PISO_SHIFT_REG_RIGHT/Subsystem
// Hierarchy Level: 2
// Model version: 1.56
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Subsystem_block1
          (clk,
           reset,
           enb,
           CLR,
           LOAD,
           CLK_1,
           In1,
           In2,
           In3,
           In4,
           In5,
           In6,
           In7,
           In8,
           In9,
           In10,
           In11,
           In12,
           In13,
           In14,
           In15,
           In16,
           In17,
           In18,
           In19,
           In20,
           In21,
           In22,
           In23,
           In24,
           In25,
           In26,
           In27,
           In28,
           In29,
           In30,
           In31,
           In32,
           SERIAL_OUT);


  input   clk;
  input   reset;
  input   enb;
  input   CLR;
  input   LOAD;
  input   CLK_1;
  input   In1;
  input   In2;
  input   In3;
  input   In4;
  input   In5;
  input   In6;
  input   In7;
  input   In8;
  input   In9;
  input   In10;
  input   In11;
  input   In12;
  input   In13;
  input   In14;
  input   In15;
  input   In16;
  input   In17;
  input   In18;
  input   In19;
  input   In20;
  input   In21;
  input   In22;
  input   In23;
  input   In24;
  input   In25;
  input   In26;
  input   In27;
  input   In28;
  input   In29;
  input   In30;
  input   In31;
  input   In32;
  output  SERIAL_OUT;


  wire Constant5_out1;
  wire MUX_out1;
  reg  Delay_bypass;  // ufix1
  reg  Delay_reg;  // ufix1
  wire Delay_bypass_next;  // ufix1
  wire Delay_delay_out;  // ufix1
  wire Delay_out1;
  wire MUX1_out1;
  reg  Delay1_bypass;  // ufix1
  reg  Delay1_reg;  // ufix1
  wire Delay1_bypass_next;  // ufix1
  wire Delay1_delay_out;  // ufix1
  wire Delay1_out1;
  wire MUX2_out1;
  reg  Delay2_bypass;  // ufix1
  reg  Delay2_reg;  // ufix1
  wire Delay2_bypass_next;  // ufix1
  wire Delay2_delay_out;  // ufix1
  wire Delay2_out1;
  wire MUX3_out1;
  reg  Delay3_bypass;  // ufix1
  reg  Delay3_reg;  // ufix1
  wire Delay3_bypass_next;  // ufix1
  wire Delay3_delay_out;  // ufix1
  wire Delay3_out1;
  wire MUX4_out1;
  reg  Delay4_bypass;  // ufix1
  reg  Delay4_reg;  // ufix1
  wire Delay4_bypass_next;  // ufix1
  wire Delay4_delay_out;  // ufix1
  wire Delay4_out1;
  wire MUX5_out1;
  reg  Delay5_bypass;  // ufix1
  reg  Delay5_reg;  // ufix1
  wire Delay5_bypass_next;  // ufix1
  wire Delay5_delay_out;  // ufix1
  wire Delay5_out1;
  wire MUX6_out1;
  reg  Delay6_bypass;  // ufix1
  reg  Delay6_reg;  // ufix1
  wire Delay6_bypass_next;  // ufix1
  wire Delay6_delay_out;  // ufix1
  wire Delay6_out1;
  wire MUX7_out1;
  reg  Delay7_bypass;  // ufix1
  reg  Delay7_reg;  // ufix1
  wire Delay7_bypass_next;  // ufix1
  wire Delay7_delay_out;  // ufix1
  wire Delay7_out1;
  wire MUX8_out1;
  reg  Delay8_bypass;  // ufix1
  reg  Delay8_reg;  // ufix1
  wire Delay8_bypass_next;  // ufix1
  wire Delay8_delay_out;  // ufix1
  wire Delay8_out1;
  wire MUX9_out1;
  reg  Delay9_bypass;  // ufix1
  reg  Delay9_reg;  // ufix1
  wire Delay9_bypass_next;  // ufix1
  wire Delay9_delay_out;  // ufix1
  wire Delay9_out1;
  wire MUX10_out1;
  reg  Delay10_bypass;  // ufix1
  reg  Delay10_reg;  // ufix1
  wire Delay10_bypass_next;  // ufix1
  wire Delay10_delay_out;  // ufix1
  wire Delay10_out1;
  wire MUX11_out1;
  reg  Delay11_bypass;  // ufix1
  reg  Delay11_reg;  // ufix1
  wire Delay11_bypass_next;  // ufix1
  wire Delay11_delay_out;  // ufix1
  wire Delay11_out1;
  wire MUX12_out1;
  reg  Delay12_bypass;  // ufix1
  reg  Delay12_reg;  // ufix1
  wire Delay12_bypass_next;  // ufix1
  wire Delay12_delay_out;  // ufix1
  wire Delay12_out1;
  wire MUX13_out1;
  reg  Delay13_bypass;  // ufix1
  reg  Delay13_reg;  // ufix1
  wire Delay13_bypass_next;  // ufix1
  wire Delay13_delay_out;  // ufix1
  wire Delay13_out1;
  wire MUX14_out1;
  reg  Delay14_bypass;  // ufix1
  reg  Delay14_reg;  // ufix1
  wire Delay14_bypass_next;  // ufix1
  wire Delay14_delay_out;  // ufix1
  wire Delay14_out1;
  wire MUX15_out1;
  reg  Delay15_bypass;  // ufix1
  reg  Delay15_reg;  // ufix1
  wire Delay15_bypass_next;  // ufix1
  wire Delay15_delay_out;  // ufix1
  wire Delay15_out1;
  wire MUX16_out1;
  reg  Delay17_bypass;  // ufix1
  reg  Delay17_reg;  // ufix1
  wire Delay17_bypass_next;  // ufix1
  wire Delay17_delay_out;  // ufix1
  wire Delay17_out1;
  wire MUX17_out1;
  reg  Delay18_bypass;  // ufix1
  reg  Delay18_reg;  // ufix1
  wire Delay18_bypass_next;  // ufix1
  wire Delay18_delay_out;  // ufix1
  wire Delay18_out1;
  wire MUX24_out1;
  reg  Delay26_bypass;  // ufix1
  reg  Delay26_reg;  // ufix1
  wire Delay26_bypass_next;  // ufix1
  wire Delay26_delay_out;  // ufix1
  wire Delay26_out1;
  wire MUX25_out1;
  reg  Delay27_bypass;  // ufix1
  reg  Delay27_reg;  // ufix1
  wire Delay27_bypass_next;  // ufix1
  wire Delay27_delay_out;  // ufix1
  wire Delay27_out1;
  wire MUX26_out1;
  reg  Delay28_bypass;  // ufix1
  reg  Delay28_reg;  // ufix1
  wire Delay28_bypass_next;  // ufix1
  wire Delay28_delay_out;  // ufix1
  wire Delay28_out1;
  wire MUX27_out1;
  reg  Delay29_bypass;  // ufix1
  reg  Delay29_reg;  // ufix1
  wire Delay29_bypass_next;  // ufix1
  wire Delay29_delay_out;  // ufix1
  wire Delay29_out1;
  wire MUX28_out1;
  reg  Delay30_bypass;  // ufix1
  reg  Delay30_reg;  // ufix1
  wire Delay30_bypass_next;  // ufix1
  wire Delay30_delay_out;  // ufix1
  wire Delay30_out1;
  wire MUX29_out1;
  reg  Delay31_bypass;  // ufix1
  reg  Delay31_reg;  // ufix1
  wire Delay31_bypass_next;  // ufix1
  wire Delay31_delay_out;  // ufix1
  wire Delay31_out1;
  wire MUX30_out1;
  reg  Delay32_bypass;  // ufix1
  reg  Delay32_reg;  // ufix1
  wire Delay32_bypass_next;  // ufix1
  wire Delay32_delay_out;  // ufix1
  wire Delay32_out1;
  wire MUX31_out1;
  reg  Delay33_bypass;  // ufix1
  reg  Delay33_reg;  // ufix1
  wire Delay33_bypass_next;  // ufix1
  wire Delay33_delay_out;  // ufix1
  wire Delay33_out1;
  wire MUX18_out1;
  reg  Delay19_bypass;  // ufix1
  reg  Delay19_reg;  // ufix1
  wire Delay19_bypass_next;  // ufix1
  wire Delay19_delay_out;  // ufix1
  wire Delay19_out1;
  wire MUX19_out1;
  reg  Delay20_bypass;  // ufix1
  reg  Delay20_reg;  // ufix1
  wire Delay20_bypass_next;  // ufix1
  wire Delay20_delay_out;  // ufix1
  wire Delay20_out1;
  wire MUX20_out1;
  reg  Delay21_bypass;  // ufix1
  reg  Delay21_reg;  // ufix1
  wire Delay21_bypass_next;  // ufix1
  wire Delay21_delay_out;  // ufix1
  wire Delay21_out1;
  wire MUX21_out1;
  reg  Delay22_bypass;  // ufix1
  reg  Delay22_reg;  // ufix1
  wire Delay22_bypass_next;  // ufix1
  wire Delay22_delay_out;  // ufix1
  wire Delay22_out1;
  wire MUX22_out1;
  reg  Delay23_bypass;  // ufix1
  reg  Delay23_reg;  // ufix1
  wire Delay23_bypass_next;  // ufix1
  wire Delay23_delay_out;  // ufix1
  wire Delay23_out1;
  wire MUX23_out1;
  reg  Delay24_bypass;  // ufix1
  reg  Delay24_reg;  // ufix1
  wire Delay24_bypass_next;  // ufix1
  wire Delay24_delay_out;  // ufix1
  wire Delay24_out1;


  assign Constant5_out1 = 1'b0;



  MUX_block u_MUX (.In1(In1),
                   .In2(Constant5_out1),
                   .SEL(LOAD),
                   .Out1(MUX_out1)
                   );

  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_bypass <= 1'b0;
        Delay_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay_bypass <= 1'b0;
              Delay_reg <= 1'b0;
            end
            else begin
              Delay_bypass <= Delay_bypass_next;
              Delay_reg <= MUX_out1;
            end
          end
        end
      end
    end

  assign Delay_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay_reg);
  assign Delay_out1 = (CLK_1 == 1'b1 ? Delay_delay_out :
              Delay_bypass);
  assign Delay_bypass_next = Delay_delay_out;



  MUX1_block u_MUX1 (.In1(In2),
                     .In2(Delay_out1),
                     .SEL(LOAD),
                     .Out1(MUX1_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_bypass <= 1'b0;
        Delay1_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay1_bypass <= 1'b0;
              Delay1_reg <= 1'b0;
            end
            else begin
              Delay1_bypass <= Delay1_bypass_next;
              Delay1_reg <= MUX1_out1;
            end
          end
        end
      end
    end

  assign Delay1_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay1_reg);
  assign Delay1_out1 = (CLK_1 == 1'b1 ? Delay1_delay_out :
              Delay1_bypass);
  assign Delay1_bypass_next = Delay1_delay_out;



  MUX2_block u_MUX2 (.In1(In3),
                     .In2(Delay1_out1),
                     .SEL(LOAD),
                     .Out1(MUX2_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_bypass <= 1'b0;
        Delay2_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay2_bypass <= 1'b0;
              Delay2_reg <= 1'b0;
            end
            else begin
              Delay2_bypass <= Delay2_bypass_next;
              Delay2_reg <= MUX2_out1;
            end
          end
        end
      end
    end

  assign Delay2_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay2_reg);
  assign Delay2_out1 = (CLK_1 == 1'b1 ? Delay2_delay_out :
              Delay2_bypass);
  assign Delay2_bypass_next = Delay2_delay_out;



  MUX3_block u_MUX3 (.In1(In4),
                     .In2(Delay2_out1),
                     .SEL(LOAD),
                     .Out1(MUX3_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Delay3_bypass <= 1'b0;
        Delay3_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay3_bypass <= 1'b0;
              Delay3_reg <= 1'b0;
            end
            else begin
              Delay3_bypass <= Delay3_bypass_next;
              Delay3_reg <= MUX3_out1;
            end
          end
        end
      end
    end

  assign Delay3_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay3_reg);
  assign Delay3_out1 = (CLK_1 == 1'b1 ? Delay3_delay_out :
              Delay3_bypass);
  assign Delay3_bypass_next = Delay3_delay_out;



  MUX4_block u_MUX4 (.In1(In5),
                     .In2(Delay3_out1),
                     .SEL(LOAD),
                     .Out1(MUX4_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay4_process
      if (reset == 1'b1) begin
        Delay4_bypass <= 1'b0;
        Delay4_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay4_bypass <= 1'b0;
              Delay4_reg <= 1'b0;
            end
            else begin
              Delay4_bypass <= Delay4_bypass_next;
              Delay4_reg <= MUX4_out1;
            end
          end
        end
      end
    end

  assign Delay4_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay4_reg);
  assign Delay4_out1 = (CLK_1 == 1'b1 ? Delay4_delay_out :
              Delay4_bypass);
  assign Delay4_bypass_next = Delay4_delay_out;



  MUX5_block u_MUX5 (.In1(In6),
                     .In2(Delay4_out1),
                     .SEL(LOAD),
                     .Out1(MUX5_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay5_process
      if (reset == 1'b1) begin
        Delay5_bypass <= 1'b0;
        Delay5_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay5_bypass <= 1'b0;
              Delay5_reg <= 1'b0;
            end
            else begin
              Delay5_bypass <= Delay5_bypass_next;
              Delay5_reg <= MUX5_out1;
            end
          end
        end
      end
    end

  assign Delay5_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay5_reg);
  assign Delay5_out1 = (CLK_1 == 1'b1 ? Delay5_delay_out :
              Delay5_bypass);
  assign Delay5_bypass_next = Delay5_delay_out;



  MUX6_block u_MUX6 (.In1(In7),
                     .In2(Delay5_out1),
                     .SEL(LOAD),
                     .Out1(MUX6_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay6_process
      if (reset == 1'b1) begin
        Delay6_bypass <= 1'b0;
        Delay6_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay6_bypass <= 1'b0;
              Delay6_reg <= 1'b0;
            end
            else begin
              Delay6_bypass <= Delay6_bypass_next;
              Delay6_reg <= MUX6_out1;
            end
          end
        end
      end
    end

  assign Delay6_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay6_reg);
  assign Delay6_out1 = (CLK_1 == 1'b1 ? Delay6_delay_out :
              Delay6_bypass);
  assign Delay6_bypass_next = Delay6_delay_out;



  MUX7_block u_MUX7 (.In1(In8),
                     .In2(Delay6_out1),
                     .SEL(LOAD),
                     .Out1(MUX7_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay7_process
      if (reset == 1'b1) begin
        Delay7_bypass <= 1'b0;
        Delay7_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay7_bypass <= 1'b0;
              Delay7_reg <= 1'b0;
            end
            else begin
              Delay7_bypass <= Delay7_bypass_next;
              Delay7_reg <= MUX7_out1;
            end
          end
        end
      end
    end

  assign Delay7_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay7_reg);
  assign Delay7_out1 = (CLK_1 == 1'b1 ? Delay7_delay_out :
              Delay7_bypass);
  assign Delay7_bypass_next = Delay7_delay_out;



  MUX8_block u_MUX8 (.In1(In9),
                     .In2(Delay7_out1),
                     .SEL(LOAD),
                     .Out1(MUX8_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay8_process
      if (reset == 1'b1) begin
        Delay8_bypass <= 1'b0;
        Delay8_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay8_bypass <= 1'b0;
              Delay8_reg <= 1'b0;
            end
            else begin
              Delay8_bypass <= Delay8_bypass_next;
              Delay8_reg <= MUX8_out1;
            end
          end
        end
      end
    end

  assign Delay8_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay8_reg);
  assign Delay8_out1 = (CLK_1 == 1'b1 ? Delay8_delay_out :
              Delay8_bypass);
  assign Delay8_bypass_next = Delay8_delay_out;



  MUX9_block u_MUX9 (.In1(In10),
                     .In2(Delay8_out1),
                     .SEL(LOAD),
                     .Out1(MUX9_out1)
                     );

  always @(posedge clk or posedge reset)
    begin : Delay9_process
      if (reset == 1'b1) begin
        Delay9_bypass <= 1'b0;
        Delay9_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay9_bypass <= 1'b0;
              Delay9_reg <= 1'b0;
            end
            else begin
              Delay9_bypass <= Delay9_bypass_next;
              Delay9_reg <= MUX9_out1;
            end
          end
        end
      end
    end

  assign Delay9_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay9_reg);
  assign Delay9_out1 = (CLK_1 == 1'b1 ? Delay9_delay_out :
              Delay9_bypass);
  assign Delay9_bypass_next = Delay9_delay_out;



  MUX10_block u_MUX10 (.In1(In11),
                       .In2(Delay9_out1),
                       .SEL(LOAD),
                       .Out1(MUX10_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay10_process
      if (reset == 1'b1) begin
        Delay10_bypass <= 1'b0;
        Delay10_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay10_bypass <= 1'b0;
              Delay10_reg <= 1'b0;
            end
            else begin
              Delay10_bypass <= Delay10_bypass_next;
              Delay10_reg <= MUX10_out1;
            end
          end
        end
      end
    end

  assign Delay10_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay10_reg);
  assign Delay10_out1 = (CLK_1 == 1'b1 ? Delay10_delay_out :
              Delay10_bypass);
  assign Delay10_bypass_next = Delay10_delay_out;



  MUX11_block u_MUX11 (.In1(In12),
                       .In2(Delay10_out1),
                       .SEL(LOAD),
                       .Out1(MUX11_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay11_process
      if (reset == 1'b1) begin
        Delay11_bypass <= 1'b0;
        Delay11_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay11_bypass <= 1'b0;
              Delay11_reg <= 1'b0;
            end
            else begin
              Delay11_bypass <= Delay11_bypass_next;
              Delay11_reg <= MUX11_out1;
            end
          end
        end
      end
    end

  assign Delay11_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay11_reg);
  assign Delay11_out1 = (CLK_1 == 1'b1 ? Delay11_delay_out :
              Delay11_bypass);
  assign Delay11_bypass_next = Delay11_delay_out;



  MUX12_block u_MUX12 (.In1(In13),
                       .In2(Delay11_out1),
                       .SEL(LOAD),
                       .Out1(MUX12_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay12_process
      if (reset == 1'b1) begin
        Delay12_bypass <= 1'b0;
        Delay12_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay12_bypass <= 1'b0;
              Delay12_reg <= 1'b0;
            end
            else begin
              Delay12_bypass <= Delay12_bypass_next;
              Delay12_reg <= MUX12_out1;
            end
          end
        end
      end
    end

  assign Delay12_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay12_reg);
  assign Delay12_out1 = (CLK_1 == 1'b1 ? Delay12_delay_out :
              Delay12_bypass);
  assign Delay12_bypass_next = Delay12_delay_out;



  MUX13_block u_MUX13 (.In1(In14),
                       .In2(Delay12_out1),
                       .SEL(LOAD),
                       .Out1(MUX13_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay13_process
      if (reset == 1'b1) begin
        Delay13_bypass <= 1'b0;
        Delay13_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay13_bypass <= 1'b0;
              Delay13_reg <= 1'b0;
            end
            else begin
              Delay13_bypass <= Delay13_bypass_next;
              Delay13_reg <= MUX13_out1;
            end
          end
        end
      end
    end

  assign Delay13_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay13_reg);
  assign Delay13_out1 = (CLK_1 == 1'b1 ? Delay13_delay_out :
              Delay13_bypass);
  assign Delay13_bypass_next = Delay13_delay_out;



  MUX14_block u_MUX14 (.In1(In15),
                       .In2(Delay13_out1),
                       .SEL(LOAD),
                       .Out1(MUX14_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay14_process
      if (reset == 1'b1) begin
        Delay14_bypass <= 1'b0;
        Delay14_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay14_bypass <= 1'b0;
              Delay14_reg <= 1'b0;
            end
            else begin
              Delay14_bypass <= Delay14_bypass_next;
              Delay14_reg <= MUX14_out1;
            end
          end
        end
      end
    end

  assign Delay14_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay14_reg);
  assign Delay14_out1 = (CLK_1 == 1'b1 ? Delay14_delay_out :
              Delay14_bypass);
  assign Delay14_bypass_next = Delay14_delay_out;



  MUX15_block1 u_MUX15 (.In1(In16),
                        .In2(Delay14_out1),
                        .SEL(LOAD),
                        .Out1(MUX15_out1)
                        );

  always @(posedge clk or posedge reset)
    begin : Delay15_process
      if (reset == 1'b1) begin
        Delay15_bypass <= 1'b0;
        Delay15_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay15_bypass <= 1'b0;
              Delay15_reg <= 1'b0;
            end
            else begin
              Delay15_bypass <= Delay15_bypass_next;
              Delay15_reg <= MUX15_out1;
            end
          end
        end
      end
    end

  assign Delay15_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay15_reg);
  assign Delay15_out1 = (CLK_1 == 1'b1 ? Delay15_delay_out :
              Delay15_bypass);
  assign Delay15_bypass_next = Delay15_delay_out;



  MUX16_block u_MUX16 (.In1(In17),
                       .In2(Delay15_out1),
                       .SEL(LOAD),
                       .Out1(MUX16_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay17_process
      if (reset == 1'b1) begin
        Delay17_bypass <= 1'b0;
        Delay17_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay17_bypass <= 1'b0;
              Delay17_reg <= 1'b0;
            end
            else begin
              Delay17_bypass <= Delay17_bypass_next;
              Delay17_reg <= MUX16_out1;
            end
          end
        end
      end
    end

  assign Delay17_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay17_reg);
  assign Delay17_out1 = (CLK_1 == 1'b1 ? Delay17_delay_out :
              Delay17_bypass);
  assign Delay17_bypass_next = Delay17_delay_out;



  MUX17_block u_MUX17 (.In1(In18),
                       .In2(Delay17_out1),
                       .SEL(LOAD),
                       .Out1(MUX17_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay18_process
      if (reset == 1'b1) begin
        Delay18_bypass <= 1'b0;
        Delay18_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay18_bypass <= 1'b0;
              Delay18_reg <= 1'b0;
            end
            else begin
              Delay18_bypass <= Delay18_bypass_next;
              Delay18_reg <= MUX17_out1;
            end
          end
        end
      end
    end

  assign Delay18_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay18_reg);
  assign Delay18_out1 = (CLK_1 == 1'b1 ? Delay18_delay_out :
              Delay18_bypass);
  assign Delay18_bypass_next = Delay18_delay_out;



  MUX24_block u_MUX24 (.In1(In19),
                       .In2(Delay18_out1),
                       .SEL(LOAD),
                       .Out1(MUX24_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay26_process
      if (reset == 1'b1) begin
        Delay26_bypass <= 1'b0;
        Delay26_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay26_bypass <= 1'b0;
              Delay26_reg <= 1'b0;
            end
            else begin
              Delay26_bypass <= Delay26_bypass_next;
              Delay26_reg <= MUX24_out1;
            end
          end
        end
      end
    end

  assign Delay26_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay26_reg);
  assign Delay26_out1 = (CLK_1 == 1'b1 ? Delay26_delay_out :
              Delay26_bypass);
  assign Delay26_bypass_next = Delay26_delay_out;



  MUX25_block u_MUX25 (.In1(In20),
                       .In2(Delay26_out1),
                       .SEL(LOAD),
                       .Out1(MUX25_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay27_process
      if (reset == 1'b1) begin
        Delay27_bypass <= 1'b0;
        Delay27_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay27_bypass <= 1'b0;
              Delay27_reg <= 1'b0;
            end
            else begin
              Delay27_bypass <= Delay27_bypass_next;
              Delay27_reg <= MUX25_out1;
            end
          end
        end
      end
    end

  assign Delay27_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay27_reg);
  assign Delay27_out1 = (CLK_1 == 1'b1 ? Delay27_delay_out :
              Delay27_bypass);
  assign Delay27_bypass_next = Delay27_delay_out;



  MUX26_block u_MUX26 (.In1(In21),
                       .In2(Delay27_out1),
                       .SEL(LOAD),
                       .Out1(MUX26_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay28_process
      if (reset == 1'b1) begin
        Delay28_bypass <= 1'b0;
        Delay28_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay28_bypass <= 1'b0;
              Delay28_reg <= 1'b0;
            end
            else begin
              Delay28_bypass <= Delay28_bypass_next;
              Delay28_reg <= MUX26_out1;
            end
          end
        end
      end
    end

  assign Delay28_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay28_reg);
  assign Delay28_out1 = (CLK_1 == 1'b1 ? Delay28_delay_out :
              Delay28_bypass);
  assign Delay28_bypass_next = Delay28_delay_out;



  MUX27_block u_MUX27 (.In1(In22),
                       .In2(Delay28_out1),
                       .SEL(LOAD),
                       .Out1(MUX27_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay29_process
      if (reset == 1'b1) begin
        Delay29_bypass <= 1'b0;
        Delay29_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay29_bypass <= 1'b0;
              Delay29_reg <= 1'b0;
            end
            else begin
              Delay29_bypass <= Delay29_bypass_next;
              Delay29_reg <= MUX27_out1;
            end
          end
        end
      end
    end

  assign Delay29_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay29_reg);
  assign Delay29_out1 = (CLK_1 == 1'b1 ? Delay29_delay_out :
              Delay29_bypass);
  assign Delay29_bypass_next = Delay29_delay_out;



  MUX28_block u_MUX28 (.In1(In23),
                       .In2(Delay29_out1),
                       .SEL(LOAD),
                       .Out1(MUX28_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay30_process
      if (reset == 1'b1) begin
        Delay30_bypass <= 1'b0;
        Delay30_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay30_bypass <= 1'b0;
              Delay30_reg <= 1'b0;
            end
            else begin
              Delay30_bypass <= Delay30_bypass_next;
              Delay30_reg <= MUX28_out1;
            end
          end
        end
      end
    end

  assign Delay30_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay30_reg);
  assign Delay30_out1 = (CLK_1 == 1'b1 ? Delay30_delay_out :
              Delay30_bypass);
  assign Delay30_bypass_next = Delay30_delay_out;



  MUX29_block u_MUX29 (.In1(In24),
                       .In2(Delay30_out1),
                       .SEL(LOAD),
                       .Out1(MUX29_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay31_process
      if (reset == 1'b1) begin
        Delay31_bypass <= 1'b0;
        Delay31_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay31_bypass <= 1'b0;
              Delay31_reg <= 1'b0;
            end
            else begin
              Delay31_bypass <= Delay31_bypass_next;
              Delay31_reg <= MUX29_out1;
            end
          end
        end
      end
    end

  assign Delay31_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay31_reg);
  assign Delay31_out1 = (CLK_1 == 1'b1 ? Delay31_delay_out :
              Delay31_bypass);
  assign Delay31_bypass_next = Delay31_delay_out;



  MUX30_block u_MUX30 (.In1(In25),
                       .In2(Delay31_out1),
                       .SEL(LOAD),
                       .Out1(MUX30_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay32_process
      if (reset == 1'b1) begin
        Delay32_bypass <= 1'b0;
        Delay32_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay32_bypass <= 1'b0;
              Delay32_reg <= 1'b0;
            end
            else begin
              Delay32_bypass <= Delay32_bypass_next;
              Delay32_reg <= MUX30_out1;
            end
          end
        end
      end
    end

  assign Delay32_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay32_reg);
  assign Delay32_out1 = (CLK_1 == 1'b1 ? Delay32_delay_out :
              Delay32_bypass);
  assign Delay32_bypass_next = Delay32_delay_out;



  MUX31_block u_MUX31 (.In1(In26),
                       .In2(Delay32_out1),
                       .SEL(LOAD),
                       .Out1(MUX31_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay33_process
      if (reset == 1'b1) begin
        Delay33_bypass <= 1'b0;
        Delay33_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay33_bypass <= 1'b0;
              Delay33_reg <= 1'b0;
            end
            else begin
              Delay33_bypass <= Delay33_bypass_next;
              Delay33_reg <= MUX31_out1;
            end
          end
        end
      end
    end

  assign Delay33_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay33_reg);
  assign Delay33_out1 = (CLK_1 == 1'b1 ? Delay33_delay_out :
              Delay33_bypass);
  assign Delay33_bypass_next = Delay33_delay_out;



  MUX18_block u_MUX18 (.In1(In27),
                       .In2(Delay33_out1),
                       .SEL(LOAD),
                       .Out1(MUX18_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay19_process
      if (reset == 1'b1) begin
        Delay19_bypass <= 1'b0;
        Delay19_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay19_bypass <= 1'b0;
              Delay19_reg <= 1'b0;
            end
            else begin
              Delay19_bypass <= Delay19_bypass_next;
              Delay19_reg <= MUX18_out1;
            end
          end
        end
      end
    end

  assign Delay19_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay19_reg);
  assign Delay19_out1 = (CLK_1 == 1'b1 ? Delay19_delay_out :
              Delay19_bypass);
  assign Delay19_bypass_next = Delay19_delay_out;



  MUX19_block u_MUX19 (.In1(In28),
                       .In2(Delay19_out1),
                       .SEL(LOAD),
                       .Out1(MUX19_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay20_process
      if (reset == 1'b1) begin
        Delay20_bypass <= 1'b0;
        Delay20_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay20_bypass <= 1'b0;
              Delay20_reg <= 1'b0;
            end
            else begin
              Delay20_bypass <= Delay20_bypass_next;
              Delay20_reg <= MUX19_out1;
            end
          end
        end
      end
    end

  assign Delay20_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay20_reg);
  assign Delay20_out1 = (CLK_1 == 1'b1 ? Delay20_delay_out :
              Delay20_bypass);
  assign Delay20_bypass_next = Delay20_delay_out;



  MUX20_block u_MUX20 (.In1(In29),
                       .In2(Delay20_out1),
                       .SEL(LOAD),
                       .Out1(MUX20_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay21_process
      if (reset == 1'b1) begin
        Delay21_bypass <= 1'b0;
        Delay21_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay21_bypass <= 1'b0;
              Delay21_reg <= 1'b0;
            end
            else begin
              Delay21_bypass <= Delay21_bypass_next;
              Delay21_reg <= MUX20_out1;
            end
          end
        end
      end
    end

  assign Delay21_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay21_reg);
  assign Delay21_out1 = (CLK_1 == 1'b1 ? Delay21_delay_out :
              Delay21_bypass);
  assign Delay21_bypass_next = Delay21_delay_out;



  MUX21_block u_MUX21 (.In1(In30),
                       .In2(Delay21_out1),
                       .SEL(LOAD),
                       .Out1(MUX21_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay22_process
      if (reset == 1'b1) begin
        Delay22_bypass <= 1'b0;
        Delay22_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay22_bypass <= 1'b0;
              Delay22_reg <= 1'b0;
            end
            else begin
              Delay22_bypass <= Delay22_bypass_next;
              Delay22_reg <= MUX21_out1;
            end
          end
        end
      end
    end

  assign Delay22_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay22_reg);
  assign Delay22_out1 = (CLK_1 == 1'b1 ? Delay22_delay_out :
              Delay22_bypass);
  assign Delay22_bypass_next = Delay22_delay_out;



  MUX22_block u_MUX22 (.In1(In31),
                       .In2(Delay22_out1),
                       .SEL(LOAD),
                       .Out1(MUX22_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay23_process
      if (reset == 1'b1) begin
        Delay23_bypass <= 1'b0;
        Delay23_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay23_bypass <= 1'b0;
              Delay23_reg <= 1'b0;
            end
            else begin
              Delay23_bypass <= Delay23_bypass_next;
              Delay23_reg <= MUX22_out1;
            end
          end
        end
      end
    end

  assign Delay23_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay23_reg);
  assign Delay23_out1 = (CLK_1 == 1'b1 ? Delay23_delay_out :
              Delay23_bypass);
  assign Delay23_bypass_next = Delay23_delay_out;



  MUX23_block u_MUX23 (.In1(In32),
                       .In2(Delay23_out1),
                       .SEL(LOAD),
                       .Out1(MUX23_out1)
                       );

  always @(posedge clk or posedge reset)
    begin : Delay24_process
      if (reset == 1'b1) begin
        Delay24_bypass <= 1'b0;
        Delay24_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          if (CLK_1) begin
            if (CLR == 1'b1) begin
              Delay24_bypass <= 1'b0;
              Delay24_reg <= 1'b0;
            end
            else begin
              Delay24_bypass <= Delay24_bypass_next;
              Delay24_reg <= MUX23_out1;
            end
          end
        end
      end
    end

  assign Delay24_delay_out = (CLR == 1'b1 ? 1'b0 :
              Delay24_reg);
  assign Delay24_out1 = (CLK_1 == 1'b1 ? Delay24_delay_out :
              Delay24_bypass);
  assign Delay24_bypass_next = Delay24_delay_out;



  assign SERIAL_OUT = Delay24_out1;

endmodule  // Subsystem_block1

