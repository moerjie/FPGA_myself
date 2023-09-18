// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\nco\NCO1.v
// Created: 2023-09-16 20:49:24
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: NCO1
// Source Path: nco/Subsystem/NCO1
// Hierarchy Level: 2
// 
// NCO
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module NCO1
          (clk,
           reset,
           enb,
           inc,
           validIn,
           sine,
           validOut);


  input   clk;
  input   reset;
  input   enb;
  input   [15:0] inc;  // uint16
  input   validIn;
  output  signed [15:0] sine;  // sfix16_En14
  output  validOut;


  reg  [0:4] outsel_reg_reg;  // ufix1 [5]
  wire [0:4] outsel_reg_reg_next;  // ufix1 [5]
  wire outsel;
  wire signed [15:0] outzero;  // sfix16_En14
  wire signed [15:0] const0;  // sfix16
  wire signed [15:0] pInc;  // sfix16
  wire signed [15:0] validPInc;  // sfix16
  reg signed [15:0] accphase_reg;  // sfix16
  wire signed [15:0] addpInc;  // sfix16
  wire signed [15:0] pOffset;  // sfix16
  wire signed [15:0] accoffset;  // sfix16
  reg signed [15:0] accoffsete_reg;  // sfix16
  wire [3:0] dither;  // ufix4
  wire signed [15:0] casteddither;  // sfix16
  reg signed [15:0] dither_reg;  // sfix16
  wire signed [15:0] accumulator;  // sfix16
  wire [11:0] accQuantized;  // ufix12_E4
  wire signed [15:0] outs;  // sfix16_En14
  wire signed [15:0] validouts;  // sfix16_En14
  reg signed [15:0] sine_1;  // sfix16_En14
  reg  validOut_1;


  always @(posedge clk or posedge reset)
    begin : outsel_reg_process
      if (reset == 1'b1) begin
        outsel_reg_reg[0] <= 1'b0;
        outsel_reg_reg[1] <= 1'b0;
        outsel_reg_reg[2] <= 1'b0;
        outsel_reg_reg[3] <= 1'b0;
        outsel_reg_reg[4] <= 1'b0;
      end
      else begin
        if (enb) begin
          outsel_reg_reg[0] <= outsel_reg_reg_next[0];
          outsel_reg_reg[1] <= outsel_reg_reg_next[1];
          outsel_reg_reg[2] <= outsel_reg_reg_next[2];
          outsel_reg_reg[3] <= outsel_reg_reg_next[3];
          outsel_reg_reg[4] <= outsel_reg_reg_next[4];
        end
      end
    end

  assign outsel = outsel_reg_reg[4];
  assign outsel_reg_reg_next[0] = validIn;
  assign outsel_reg_reg_next[1] = outsel_reg_reg[0];
  assign outsel_reg_reg_next[2] = outsel_reg_reg[1];
  assign outsel_reg_reg_next[3] = outsel_reg_reg[2];
  assign outsel_reg_reg_next[4] = outsel_reg_reg[3];



  assign outzero = 16'sb0000000000000000;



  // Constant Zero
  assign const0 = 16'sb0000000000000000;



  assign pInc = inc;



  assign validPInc = (validIn == 1'b0 ? const0 :
              pInc);



  // Add phase increment
  assign addpInc = accphase_reg + validPInc;



  // Phase increment accumulator register
  always @(posedge clk or posedge reset)
    begin : AccPhaseRegister_process
      if (reset == 1'b1) begin
        accphase_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          accphase_reg <= addpInc;
        end
      end
    end



  assign pOffset = 16'sb0000000000000000;



  // Add phase offset
  assign accoffset = accphase_reg + pOffset;



  // Phase offset accumulator register
  always @(posedge clk or posedge reset)
    begin : AccOffsetRegister_process
      if (reset == 1'b1) begin
        accoffsete_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          accoffsete_reg <= accoffset;
        end
      end
    end



  DitherGen u_dither_inst (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .validIn(validIn),
                           .dither(dither)  // ufix4
                           );

  assign casteddither = {12'b0, dither};



  // Dither input register
  always @(posedge clk or posedge reset)
    begin : DitherRegister_process
      if (reset == 1'b1) begin
        dither_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          dither_reg <= casteddither;
        end
      end
    end



  // Add dither
  assign accumulator = accoffsete_reg + dither_reg;



  // Phase quantization
  assign accQuantized = accumulator[15:4];



  WaveformGen u_Wave_inst (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .phaseIdx(accQuantized),  // ufix12_E4
                           .sine(outs)  // sfix16_En14
                           );

  assign validouts = (outsel == 1'b0 ? outzero :
              outs);



  // Output register
  always @(posedge clk or posedge reset)
    begin : OutputRegister_process
      if (reset == 1'b1) begin
        sine_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          sine_1 <= validouts;
        end
      end
    end



  // validOut register
  always @(posedge clk or posedge reset)
    begin : validOut_reg_process
      if (reset == 1'b1) begin
        validOut_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          validOut_1 <= outsel;
        end
      end
    end



  assign sine = sine_1;

  assign validOut = validOut_1;

endmodule  // NCO1
