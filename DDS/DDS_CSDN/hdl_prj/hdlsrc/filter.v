// -------------------------------------------------------------
//
// Module: filter
// Generated by MATLAB(R) 9.14 and Filter Design HDL Coder 3.1.13.
// Generated on: 2023-09-19 21:04:07
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// TargetDirectory: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\hdl_prj\hdlsrc
// TargetLanguage: Verilog
// TestBenchStimulus: impulse step ramp chirp noise 

// -------------------------------------------------------------
// HDL Implementation    : Fully parallel
// Folding Factor        : 1
// -------------------------------------------------------------




`timescale 1 ns / 1 ns

module filter
               (
                clk,
                clk_enable,
                reset,
                filter_in,
                filter_out
                );

  input   clk; 
  input   clk_enable; 
  input   reset; 
  input   [63:0] filter_in; //double
  output  [63:0] filter_out; //double

////////////////////////////////////////////////////////////////
//Module Architecture: filter
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter coeff1 = 5.5218196184392503E-08; //double
  parameter coeff2 = 1.0804419897535434E-07; //double
  parameter coeff3 = -3.3932636791993698E-07; //double
  parameter coeff4 = -5.5631931521628494E-07; //double
  parameter coeff5 = 1.2704268342188283E-06; //double
  parameter coeff6 = 1.9326547185590536E-06; //double
  parameter coeff7 = -3.7514232407541018E-06; //double
  parameter coeff8 = -5.4219947300591069E-06; //double
  parameter coeff9 = 9.4982388872618646E-06; //double
  parameter coeff10 = 1.3212378211432811E-05; //double
  parameter coeff11 = -2.1516514244832225E-05; //double
  parameter coeff12 = -2.9031392818975790E-05; //double
  parameter coeff13 = 4.4717371103524970E-05; //double
  parameter coeff14 = 5.8830509905951532E-05; //double
  parameter coeff15 = -8.6671315063022815E-05; //double
  parameter coeff16 = -1.1160092337062421E-04; //double
  parameter coeff17 = 1.5847513385225165E-04; //double
  parameter coeff18 = 2.0029099537748217E-04; //double
  parameter coeff19 = -2.7569359288383288E-04; //double
  parameter coeff20 = -3.4278403140494207E-04; //double
  parameter coeff21 = 4.5933342024384875E-04; //double
  parameter coeff22 = 5.6289918917561002E-04; //double
  parameter coeff23 = -7.3682378140194180E-04; //double
  parameter coeff24 = -8.9140880814595456E-04; //double
  parameter coeff25 = 1.1430278799112001E-03; //double
  parameter coeff26 = 1.3671388573068147E-03; //double
  parameter coeff27 = -1.7214159978559641E-03; //double
  parameter coeff28 = -2.0383627837555181E-03; //double
  parameter coeff29 = 2.5257255980514421E-03; //double
  parameter coeff30 = 2.9649616536519883E-03; //double
  parameter coeff31 = -3.6227917393931142E-03; //double
  parameter coeff32 = -4.2223124851073239E-03; //double
  parameter coeff33 = 5.0979110935187250E-03; //double
  parameter coeff34 = 5.9088310139167001E-03; //double
  parameter coeff35 = -7.0655011900199235E-03; //double
  parameter coeff36 = -8.1611737161279303E-03; //double
  parameter coeff37 = 9.6909844817002801E-03; //double
  parameter coeff38 = 1.1186072133631830E-02; //double
  parameter coeff39 = -1.3237848061949388E-02; //double
  parameter coeff40 = -1.5331152174818209E-02; //double
  parameter coeff41 = 1.8176952907546666E-02; //double
  parameter coeff42 = 2.1258720424719071E-02; //double
  parameter coeff43 = -2.5473733208448170E-02; //double
  parameter coeff44 = -3.0443390997594036E-02; //double
  parameter coeff45 = 3.7504665391566744E-02; //double
  parameter coeff46 = 4.6999004953250247E-02; //double
  parameter coeff47 = -6.2117042452832477E-02; //double
  parameter coeff48 = -8.8274304284641475E-02; //double
  parameter coeff49 = 1.4916158413250008E-01; //double
  parameter coeff50 = 4.4971843247479915E-01; //double
  parameter coeff51 = 4.4971843247479915E-01; //double
  parameter coeff52 = 1.4916158413250008E-01; //double
  parameter coeff53 = -8.8274304284641475E-02; //double
  parameter coeff54 = -6.2117042452832477E-02; //double
  parameter coeff55 = 4.6999004953250247E-02; //double
  parameter coeff56 = 3.7504665391566744E-02; //double
  parameter coeff57 = -3.0443390997594036E-02; //double
  parameter coeff58 = -2.5473733208448170E-02; //double
  parameter coeff59 = 2.1258720424719071E-02; //double
  parameter coeff60 = 1.8176952907546666E-02; //double
  parameter coeff61 = -1.5331152174818209E-02; //double
  parameter coeff62 = -1.3237848061949388E-02; //double
  parameter coeff63 = 1.1186072133631830E-02; //double
  parameter coeff64 = 9.6909844817002801E-03; //double
  parameter coeff65 = -8.1611737161279303E-03; //double
  parameter coeff66 = -7.0655011900199235E-03; //double
  parameter coeff67 = 5.9088310139167001E-03; //double
  parameter coeff68 = 5.0979110935187250E-03; //double
  parameter coeff69 = -4.2223124851073239E-03; //double
  parameter coeff70 = -3.6227917393931142E-03; //double
  parameter coeff71 = 2.9649616536519883E-03; //double
  parameter coeff72 = 2.5257255980514421E-03; //double
  parameter coeff73 = -2.0383627837555181E-03; //double
  parameter coeff74 = -1.7214159978559641E-03; //double
  parameter coeff75 = 1.3671388573068147E-03; //double
  parameter coeff76 = 1.1430278799112001E-03; //double
  parameter coeff77 = -8.9140880814595456E-04; //double
  parameter coeff78 = -7.3682378140194180E-04; //double
  parameter coeff79 = 5.6289918917561002E-04; //double
  parameter coeff80 = 4.5933342024384875E-04; //double
  parameter coeff81 = -3.4278403140494207E-04; //double
  parameter coeff82 = -2.7569359288383288E-04; //double
  parameter coeff83 = 2.0029099537748217E-04; //double
  parameter coeff84 = 1.5847513385225165E-04; //double
  parameter coeff85 = -1.1160092337062421E-04; //double
  parameter coeff86 = -8.6671315063022815E-05; //double
  parameter coeff87 = 5.8830509905951532E-05; //double
  parameter coeff88 = 4.4717371103524970E-05; //double
  parameter coeff89 = -2.9031392818975790E-05; //double
  parameter coeff90 = -2.1516514244832225E-05; //double
  parameter coeff91 = 1.3212378211432811E-05; //double
  parameter coeff92 = 9.4982388872618646E-06; //double
  parameter coeff93 = -5.4219947300591069E-06; //double
  parameter coeff94 = -3.7514232407541018E-06; //double
  parameter coeff95 = 1.9326547185590536E-06; //double
  parameter coeff96 = 1.2704268342188283E-06; //double
  parameter coeff97 = -5.5631931521628494E-07; //double
  parameter coeff98 = -3.3932636791993698E-07; //double
  parameter coeff99 = 1.0804419897535434E-07; //double
  parameter coeff100 = 5.5218196184392503E-08; //double

  // Signals
  real delay_pipeline [0:99] ; // double
  real product100; // double
  real product99; // double
  real product98; // double
  real product97; // double
  real product96; // double
  real product95; // double
  real product94; // double
  real product93; // double
  real product92; // double
  real product91; // double
  real product90; // double
  real product89; // double
  real product88; // double
  real product87; // double
  real product86; // double
  real product85; // double
  real product84; // double
  real product83; // double
  real product82; // double
  real product81; // double
  real product80; // double
  real product79; // double
  real product78; // double
  real product77; // double
  real product76; // double
  real product75; // double
  real product74; // double
  real product73; // double
  real product72; // double
  real product71; // double
  real product70; // double
  real product69; // double
  real product68; // double
  real product67; // double
  real product66; // double
  real product65; // double
  real product64; // double
  real product63; // double
  real product62; // double
  real product61; // double
  real product60; // double
  real product59; // double
  real product58; // double
  real product57; // double
  real product56; // double
  real product55; // double
  real product54; // double
  real product53; // double
  real product52; // double
  real product51; // double
  real product50; // double
  real product49; // double
  real product48; // double
  real product47; // double
  real product46; // double
  real product45; // double
  real product44; // double
  real product43; // double
  real product42; // double
  real product41; // double
  real product40; // double
  real product39; // double
  real product38; // double
  real product37; // double
  real product36; // double
  real product35; // double
  real product34; // double
  real product33; // double
  real product32; // double
  real product31; // double
  real product30; // double
  real product29; // double
  real product28; // double
  real product27; // double
  real product26; // double
  real product25; // double
  real product24; // double
  real product23; // double
  real product22; // double
  real product21; // double
  real product20; // double
  real product19; // double
  real product18; // double
  real product17; // double
  real product16; // double
  real product15; // double
  real product14; // double
  real product13; // double
  real product12; // double
  real product11; // double
  real product10; // double
  real product9; // double
  real product8; // double
  real product7; // double
  real product6; // double
  real product5; // double
  real product4; // double
  real product3; // double
  real product2; // double
  real product1_cast; // double
  real product1; // double
  real sum1; // double
  real sum2; // double
  real sum3; // double
  real sum4; // double
  real sum5; // double
  real sum6; // double
  real sum7; // double
  real sum8; // double
  real sum9; // double
  real sum10; // double
  real sum11; // double
  real sum12; // double
  real sum13; // double
  real sum14; // double
  real sum15; // double
  real sum16; // double
  real sum17; // double
  real sum18; // double
  real sum19; // double
  real sum20; // double
  real sum21; // double
  real sum22; // double
  real sum23; // double
  real sum24; // double
  real sum25; // double
  real sum26; // double
  real sum27; // double
  real sum28; // double
  real sum29; // double
  real sum30; // double
  real sum31; // double
  real sum32; // double
  real sum33; // double
  real sum34; // double
  real sum35; // double
  real sum36; // double
  real sum37; // double
  real sum38; // double
  real sum39; // double
  real sum40; // double
  real sum41; // double
  real sum42; // double
  real sum43; // double
  real sum44; // double
  real sum45; // double
  real sum46; // double
  real sum47; // double
  real sum48; // double
  real sum49; // double
  real sum50; // double
  real sum51; // double
  real sum52; // double
  real sum53; // double
  real sum54; // double
  real sum55; // double
  real sum56; // double
  real sum57; // double
  real sum58; // double
  real sum59; // double
  real sum60; // double
  real sum61; // double
  real sum62; // double
  real sum63; // double
  real sum64; // double
  real sum65; // double
  real sum66; // double
  real sum67; // double
  real sum68; // double
  real sum69; // double
  real sum70; // double
  real sum71; // double
  real sum72; // double
  real sum73; // double
  real sum74; // double
  real sum75; // double
  real sum76; // double
  real sum77; // double
  real sum78; // double
  real sum79; // double
  real sum80; // double
  real sum81; // double
  real sum82; // double
  real sum83; // double
  real sum84; // double
  real sum85; // double
  real sum86; // double
  real sum87; // double
  real sum88; // double
  real sum89; // double
  real sum90; // double
  real sum91; // double
  real sum92; // double
  real sum93; // double
  real sum94; // double
  real sum95; // double
  real sum96; // double
  real sum97; // double
  real sum98; // double
  real sum99; // double
  real output_typeconvert; // double
  real output_register; // double

  // Block Statements
  always @( posedge clk or posedge reset)
    begin: Delay_Pipeline_process
      if (reset == 1'b1) begin
        delay_pipeline[0] <= 0.0000000000000000E+00;
        delay_pipeline[1] <= 0.0000000000000000E+00;
        delay_pipeline[2] <= 0.0000000000000000E+00;
        delay_pipeline[3] <= 0.0000000000000000E+00;
        delay_pipeline[4] <= 0.0000000000000000E+00;
        delay_pipeline[5] <= 0.0000000000000000E+00;
        delay_pipeline[6] <= 0.0000000000000000E+00;
        delay_pipeline[7] <= 0.0000000000000000E+00;
        delay_pipeline[8] <= 0.0000000000000000E+00;
        delay_pipeline[9] <= 0.0000000000000000E+00;
        delay_pipeline[10] <= 0.0000000000000000E+00;
        delay_pipeline[11] <= 0.0000000000000000E+00;
        delay_pipeline[12] <= 0.0000000000000000E+00;
        delay_pipeline[13] <= 0.0000000000000000E+00;
        delay_pipeline[14] <= 0.0000000000000000E+00;
        delay_pipeline[15] <= 0.0000000000000000E+00;
        delay_pipeline[16] <= 0.0000000000000000E+00;
        delay_pipeline[17] <= 0.0000000000000000E+00;
        delay_pipeline[18] <= 0.0000000000000000E+00;
        delay_pipeline[19] <= 0.0000000000000000E+00;
        delay_pipeline[20] <= 0.0000000000000000E+00;
        delay_pipeline[21] <= 0.0000000000000000E+00;
        delay_pipeline[22] <= 0.0000000000000000E+00;
        delay_pipeline[23] <= 0.0000000000000000E+00;
        delay_pipeline[24] <= 0.0000000000000000E+00;
        delay_pipeline[25] <= 0.0000000000000000E+00;
        delay_pipeline[26] <= 0.0000000000000000E+00;
        delay_pipeline[27] <= 0.0000000000000000E+00;
        delay_pipeline[28] <= 0.0000000000000000E+00;
        delay_pipeline[29] <= 0.0000000000000000E+00;
        delay_pipeline[30] <= 0.0000000000000000E+00;
        delay_pipeline[31] <= 0.0000000000000000E+00;
        delay_pipeline[32] <= 0.0000000000000000E+00;
        delay_pipeline[33] <= 0.0000000000000000E+00;
        delay_pipeline[34] <= 0.0000000000000000E+00;
        delay_pipeline[35] <= 0.0000000000000000E+00;
        delay_pipeline[36] <= 0.0000000000000000E+00;
        delay_pipeline[37] <= 0.0000000000000000E+00;
        delay_pipeline[38] <= 0.0000000000000000E+00;
        delay_pipeline[39] <= 0.0000000000000000E+00;
        delay_pipeline[40] <= 0.0000000000000000E+00;
        delay_pipeline[41] <= 0.0000000000000000E+00;
        delay_pipeline[42] <= 0.0000000000000000E+00;
        delay_pipeline[43] <= 0.0000000000000000E+00;
        delay_pipeline[44] <= 0.0000000000000000E+00;
        delay_pipeline[45] <= 0.0000000000000000E+00;
        delay_pipeline[46] <= 0.0000000000000000E+00;
        delay_pipeline[47] <= 0.0000000000000000E+00;
        delay_pipeline[48] <= 0.0000000000000000E+00;
        delay_pipeline[49] <= 0.0000000000000000E+00;
        delay_pipeline[50] <= 0.0000000000000000E+00;
        delay_pipeline[51] <= 0.0000000000000000E+00;
        delay_pipeline[52] <= 0.0000000000000000E+00;
        delay_pipeline[53] <= 0.0000000000000000E+00;
        delay_pipeline[54] <= 0.0000000000000000E+00;
        delay_pipeline[55] <= 0.0000000000000000E+00;
        delay_pipeline[56] <= 0.0000000000000000E+00;
        delay_pipeline[57] <= 0.0000000000000000E+00;
        delay_pipeline[58] <= 0.0000000000000000E+00;
        delay_pipeline[59] <= 0.0000000000000000E+00;
        delay_pipeline[60] <= 0.0000000000000000E+00;
        delay_pipeline[61] <= 0.0000000000000000E+00;
        delay_pipeline[62] <= 0.0000000000000000E+00;
        delay_pipeline[63] <= 0.0000000000000000E+00;
        delay_pipeline[64] <= 0.0000000000000000E+00;
        delay_pipeline[65] <= 0.0000000000000000E+00;
        delay_pipeline[66] <= 0.0000000000000000E+00;
        delay_pipeline[67] <= 0.0000000000000000E+00;
        delay_pipeline[68] <= 0.0000000000000000E+00;
        delay_pipeline[69] <= 0.0000000000000000E+00;
        delay_pipeline[70] <= 0.0000000000000000E+00;
        delay_pipeline[71] <= 0.0000000000000000E+00;
        delay_pipeline[72] <= 0.0000000000000000E+00;
        delay_pipeline[73] <= 0.0000000000000000E+00;
        delay_pipeline[74] <= 0.0000000000000000E+00;
        delay_pipeline[75] <= 0.0000000000000000E+00;
        delay_pipeline[76] <= 0.0000000000000000E+00;
        delay_pipeline[77] <= 0.0000000000000000E+00;
        delay_pipeline[78] <= 0.0000000000000000E+00;
        delay_pipeline[79] <= 0.0000000000000000E+00;
        delay_pipeline[80] <= 0.0000000000000000E+00;
        delay_pipeline[81] <= 0.0000000000000000E+00;
        delay_pipeline[82] <= 0.0000000000000000E+00;
        delay_pipeline[83] <= 0.0000000000000000E+00;
        delay_pipeline[84] <= 0.0000000000000000E+00;
        delay_pipeline[85] <= 0.0000000000000000E+00;
        delay_pipeline[86] <= 0.0000000000000000E+00;
        delay_pipeline[87] <= 0.0000000000000000E+00;
        delay_pipeline[88] <= 0.0000000000000000E+00;
        delay_pipeline[89] <= 0.0000000000000000E+00;
        delay_pipeline[90] <= 0.0000000000000000E+00;
        delay_pipeline[91] <= 0.0000000000000000E+00;
        delay_pipeline[92] <= 0.0000000000000000E+00;
        delay_pipeline[93] <= 0.0000000000000000E+00;
        delay_pipeline[94] <= 0.0000000000000000E+00;
        delay_pipeline[95] <= 0.0000000000000000E+00;
        delay_pipeline[96] <= 0.0000000000000000E+00;
        delay_pipeline[97] <= 0.0000000000000000E+00;
        delay_pipeline[98] <= 0.0000000000000000E+00;
        delay_pipeline[99] <= 0.0000000000000000E+00;
      end
      else begin
        if (clk_enable == 1'b1) begin
          delay_pipeline[0] <= $bitstoreal(filter_in);
          delay_pipeline[1] <= delay_pipeline[0];
          delay_pipeline[2] <= delay_pipeline[1];
          delay_pipeline[3] <= delay_pipeline[2];
          delay_pipeline[4] <= delay_pipeline[3];
          delay_pipeline[5] <= delay_pipeline[4];
          delay_pipeline[6] <= delay_pipeline[5];
          delay_pipeline[7] <= delay_pipeline[6];
          delay_pipeline[8] <= delay_pipeline[7];
          delay_pipeline[9] <= delay_pipeline[8];
          delay_pipeline[10] <= delay_pipeline[9];
          delay_pipeline[11] <= delay_pipeline[10];
          delay_pipeline[12] <= delay_pipeline[11];
          delay_pipeline[13] <= delay_pipeline[12];
          delay_pipeline[14] <= delay_pipeline[13];
          delay_pipeline[15] <= delay_pipeline[14];
          delay_pipeline[16] <= delay_pipeline[15];
          delay_pipeline[17] <= delay_pipeline[16];
          delay_pipeline[18] <= delay_pipeline[17];
          delay_pipeline[19] <= delay_pipeline[18];
          delay_pipeline[20] <= delay_pipeline[19];
          delay_pipeline[21] <= delay_pipeline[20];
          delay_pipeline[22] <= delay_pipeline[21];
          delay_pipeline[23] <= delay_pipeline[22];
          delay_pipeline[24] <= delay_pipeline[23];
          delay_pipeline[25] <= delay_pipeline[24];
          delay_pipeline[26] <= delay_pipeline[25];
          delay_pipeline[27] <= delay_pipeline[26];
          delay_pipeline[28] <= delay_pipeline[27];
          delay_pipeline[29] <= delay_pipeline[28];
          delay_pipeline[30] <= delay_pipeline[29];
          delay_pipeline[31] <= delay_pipeline[30];
          delay_pipeline[32] <= delay_pipeline[31];
          delay_pipeline[33] <= delay_pipeline[32];
          delay_pipeline[34] <= delay_pipeline[33];
          delay_pipeline[35] <= delay_pipeline[34];
          delay_pipeline[36] <= delay_pipeline[35];
          delay_pipeline[37] <= delay_pipeline[36];
          delay_pipeline[38] <= delay_pipeline[37];
          delay_pipeline[39] <= delay_pipeline[38];
          delay_pipeline[40] <= delay_pipeline[39];
          delay_pipeline[41] <= delay_pipeline[40];
          delay_pipeline[42] <= delay_pipeline[41];
          delay_pipeline[43] <= delay_pipeline[42];
          delay_pipeline[44] <= delay_pipeline[43];
          delay_pipeline[45] <= delay_pipeline[44];
          delay_pipeline[46] <= delay_pipeline[45];
          delay_pipeline[47] <= delay_pipeline[46];
          delay_pipeline[48] <= delay_pipeline[47];
          delay_pipeline[49] <= delay_pipeline[48];
          delay_pipeline[50] <= delay_pipeline[49];
          delay_pipeline[51] <= delay_pipeline[50];
          delay_pipeline[52] <= delay_pipeline[51];
          delay_pipeline[53] <= delay_pipeline[52];
          delay_pipeline[54] <= delay_pipeline[53];
          delay_pipeline[55] <= delay_pipeline[54];
          delay_pipeline[56] <= delay_pipeline[55];
          delay_pipeline[57] <= delay_pipeline[56];
          delay_pipeline[58] <= delay_pipeline[57];
          delay_pipeline[59] <= delay_pipeline[58];
          delay_pipeline[60] <= delay_pipeline[59];
          delay_pipeline[61] <= delay_pipeline[60];
          delay_pipeline[62] <= delay_pipeline[61];
          delay_pipeline[63] <= delay_pipeline[62];
          delay_pipeline[64] <= delay_pipeline[63];
          delay_pipeline[65] <= delay_pipeline[64];
          delay_pipeline[66] <= delay_pipeline[65];
          delay_pipeline[67] <= delay_pipeline[66];
          delay_pipeline[68] <= delay_pipeline[67];
          delay_pipeline[69] <= delay_pipeline[68];
          delay_pipeline[70] <= delay_pipeline[69];
          delay_pipeline[71] <= delay_pipeline[70];
          delay_pipeline[72] <= delay_pipeline[71];
          delay_pipeline[73] <= delay_pipeline[72];
          delay_pipeline[74] <= delay_pipeline[73];
          delay_pipeline[75] <= delay_pipeline[74];
          delay_pipeline[76] <= delay_pipeline[75];
          delay_pipeline[77] <= delay_pipeline[76];
          delay_pipeline[78] <= delay_pipeline[77];
          delay_pipeline[79] <= delay_pipeline[78];
          delay_pipeline[80] <= delay_pipeline[79];
          delay_pipeline[81] <= delay_pipeline[80];
          delay_pipeline[82] <= delay_pipeline[81];
          delay_pipeline[83] <= delay_pipeline[82];
          delay_pipeline[84] <= delay_pipeline[83];
          delay_pipeline[85] <= delay_pipeline[84];
          delay_pipeline[86] <= delay_pipeline[85];
          delay_pipeline[87] <= delay_pipeline[86];
          delay_pipeline[88] <= delay_pipeline[87];
          delay_pipeline[89] <= delay_pipeline[88];
          delay_pipeline[90] <= delay_pipeline[89];
          delay_pipeline[91] <= delay_pipeline[90];
          delay_pipeline[92] <= delay_pipeline[91];
          delay_pipeline[93] <= delay_pipeline[92];
          delay_pipeline[94] <= delay_pipeline[93];
          delay_pipeline[95] <= delay_pipeline[94];
          delay_pipeline[96] <= delay_pipeline[95];
          delay_pipeline[97] <= delay_pipeline[96];
          delay_pipeline[98] <= delay_pipeline[97];
          delay_pipeline[99] <= delay_pipeline[98];
        end
      end
    end // Delay_Pipeline_process


  always @* product100 <= delay_pipeline[99] * coeff100;

  always @* product99 <= delay_pipeline[98] * coeff99;

  always @* product98 <= delay_pipeline[97] * coeff98;

  always @* product97 <= delay_pipeline[96] * coeff97;

  always @* product96 <= delay_pipeline[95] * coeff96;

  always @* product95 <= delay_pipeline[94] * coeff95;

  always @* product94 <= delay_pipeline[93] * coeff94;

  always @* product93 <= delay_pipeline[92] * coeff93;

  always @* product92 <= delay_pipeline[91] * coeff92;

  always @* product91 <= delay_pipeline[90] * coeff91;

  always @* product90 <= delay_pipeline[89] * coeff90;

  always @* product89 <= delay_pipeline[88] * coeff89;

  always @* product88 <= delay_pipeline[87] * coeff88;

  always @* product87 <= delay_pipeline[86] * coeff87;

  always @* product86 <= delay_pipeline[85] * coeff86;

  always @* product85 <= delay_pipeline[84] * coeff85;

  always @* product84 <= delay_pipeline[83] * coeff84;

  always @* product83 <= delay_pipeline[82] * coeff83;

  always @* product82 <= delay_pipeline[81] * coeff82;

  always @* product81 <= delay_pipeline[80] * coeff81;

  always @* product80 <= delay_pipeline[79] * coeff80;

  always @* product79 <= delay_pipeline[78] * coeff79;

  always @* product78 <= delay_pipeline[77] * coeff78;

  always @* product77 <= delay_pipeline[76] * coeff77;

  always @* product76 <= delay_pipeline[75] * coeff76;

  always @* product75 <= delay_pipeline[74] * coeff75;

  always @* product74 <= delay_pipeline[73] * coeff74;

  always @* product73 <= delay_pipeline[72] * coeff73;

  always @* product72 <= delay_pipeline[71] * coeff72;

  always @* product71 <= delay_pipeline[70] * coeff71;

  always @* product70 <= delay_pipeline[69] * coeff70;

  always @* product69 <= delay_pipeline[68] * coeff69;

  always @* product68 <= delay_pipeline[67] * coeff68;

  always @* product67 <= delay_pipeline[66] * coeff67;

  always @* product66 <= delay_pipeline[65] * coeff66;

  always @* product65 <= delay_pipeline[64] * coeff65;

  always @* product64 <= delay_pipeline[63] * coeff64;

  always @* product63 <= delay_pipeline[62] * coeff63;

  always @* product62 <= delay_pipeline[61] * coeff62;

  always @* product61 <= delay_pipeline[60] * coeff61;

  always @* product60 <= delay_pipeline[59] * coeff60;

  always @* product59 <= delay_pipeline[58] * coeff59;

  always @* product58 <= delay_pipeline[57] * coeff58;

  always @* product57 <= delay_pipeline[56] * coeff57;

  always @* product56 <= delay_pipeline[55] * coeff56;

  always @* product55 <= delay_pipeline[54] * coeff55;

  always @* product54 <= delay_pipeline[53] * coeff54;

  always @* product53 <= delay_pipeline[52] * coeff53;

  always @* product52 <= delay_pipeline[51] * coeff52;

  always @* product51 <= delay_pipeline[50] * coeff51;

  always @* product50 <= delay_pipeline[49] * coeff50;

  always @* product49 <= delay_pipeline[48] * coeff49;

  always @* product48 <= delay_pipeline[47] * coeff48;

  always @* product47 <= delay_pipeline[46] * coeff47;

  always @* product46 <= delay_pipeline[45] * coeff46;

  always @* product45 <= delay_pipeline[44] * coeff45;

  always @* product44 <= delay_pipeline[43] * coeff44;

  always @* product43 <= delay_pipeline[42] * coeff43;

  always @* product42 <= delay_pipeline[41] * coeff42;

  always @* product41 <= delay_pipeline[40] * coeff41;

  always @* product40 <= delay_pipeline[39] * coeff40;

  always @* product39 <= delay_pipeline[38] * coeff39;

  always @* product38 <= delay_pipeline[37] * coeff38;

  always @* product37 <= delay_pipeline[36] * coeff37;

  always @* product36 <= delay_pipeline[35] * coeff36;

  always @* product35 <= delay_pipeline[34] * coeff35;

  always @* product34 <= delay_pipeline[33] * coeff34;

  always @* product33 <= delay_pipeline[32] * coeff33;

  always @* product32 <= delay_pipeline[31] * coeff32;

  always @* product31 <= delay_pipeline[30] * coeff31;

  always @* product30 <= delay_pipeline[29] * coeff30;

  always @* product29 <= delay_pipeline[28] * coeff29;

  always @* product28 <= delay_pipeline[27] * coeff28;

  always @* product27 <= delay_pipeline[26] * coeff27;

  always @* product26 <= delay_pipeline[25] * coeff26;

  always @* product25 <= delay_pipeline[24] * coeff25;

  always @* product24 <= delay_pipeline[23] * coeff24;

  always @* product23 <= delay_pipeline[22] * coeff23;

  always @* product22 <= delay_pipeline[21] * coeff22;

  always @* product21 <= delay_pipeline[20] * coeff21;

  always @* product20 <= delay_pipeline[19] * coeff20;

  always @* product19 <= delay_pipeline[18] * coeff19;

  always @* product18 <= delay_pipeline[17] * coeff18;

  always @* product17 <= delay_pipeline[16] * coeff17;

  always @* product16 <= delay_pipeline[15] * coeff16;

  always @* product15 <= delay_pipeline[14] * coeff15;

  always @* product14 <= delay_pipeline[13] * coeff14;

  always @* product13 <= delay_pipeline[12] * coeff13;

  always @* product12 <= delay_pipeline[11] * coeff12;

  always @* product11 <= delay_pipeline[10] * coeff11;

  always @* product10 <= delay_pipeline[9] * coeff10;

  always @* product9 <= delay_pipeline[8] * coeff9;

  always @* product8 <= delay_pipeline[7] * coeff8;

  always @* product7 <= delay_pipeline[6] * coeff7;

  always @* product6 <= delay_pipeline[5] * coeff6;

  always @* product5 <= delay_pipeline[4] * coeff5;

  always @* product4 <= delay_pipeline[3] * coeff4;

  always @* product3 <= delay_pipeline[2] * coeff3;

  always @* product2 <= delay_pipeline[1] * coeff2;

  always @* product1_cast <= product1;


  always @* product1 <= delay_pipeline[0] * coeff1;

  always @* sum1 <= product1_cast + product2;

  always @* sum2 <= sum1 + product3;

  always @* sum3 <= sum2 + product4;

  always @* sum4 <= sum3 + product5;

  always @* sum5 <= sum4 + product6;

  always @* sum6 <= sum5 + product7;

  always @* sum7 <= sum6 + product8;

  always @* sum8 <= sum7 + product9;

  always @* sum9 <= sum8 + product10;

  always @* sum10 <= sum9 + product11;

  always @* sum11 <= sum10 + product12;

  always @* sum12 <= sum11 + product13;

  always @* sum13 <= sum12 + product14;

  always @* sum14 <= sum13 + product15;

  always @* sum15 <= sum14 + product16;

  always @* sum16 <= sum15 + product17;

  always @* sum17 <= sum16 + product18;

  always @* sum18 <= sum17 + product19;

  always @* sum19 <= sum18 + product20;

  always @* sum20 <= sum19 + product21;

  always @* sum21 <= sum20 + product22;

  always @* sum22 <= sum21 + product23;

  always @* sum23 <= sum22 + product24;

  always @* sum24 <= sum23 + product25;

  always @* sum25 <= sum24 + product26;

  always @* sum26 <= sum25 + product27;

  always @* sum27 <= sum26 + product28;

  always @* sum28 <= sum27 + product29;

  always @* sum29 <= sum28 + product30;

  always @* sum30 <= sum29 + product31;

  always @* sum31 <= sum30 + product32;

  always @* sum32 <= sum31 + product33;

  always @* sum33 <= sum32 + product34;

  always @* sum34 <= sum33 + product35;

  always @* sum35 <= sum34 + product36;

  always @* sum36 <= sum35 + product37;

  always @* sum37 <= sum36 + product38;

  always @* sum38 <= sum37 + product39;

  always @* sum39 <= sum38 + product40;

  always @* sum40 <= sum39 + product41;

  always @* sum41 <= sum40 + product42;

  always @* sum42 <= sum41 + product43;

  always @* sum43 <= sum42 + product44;

  always @* sum44 <= sum43 + product45;

  always @* sum45 <= sum44 + product46;

  always @* sum46 <= sum45 + product47;

  always @* sum47 <= sum46 + product48;

  always @* sum48 <= sum47 + product49;

  always @* sum49 <= sum48 + product50;

  always @* sum50 <= sum49 + product51;

  always @* sum51 <= sum50 + product52;

  always @* sum52 <= sum51 + product53;

  always @* sum53 <= sum52 + product54;

  always @* sum54 <= sum53 + product55;

  always @* sum55 <= sum54 + product56;

  always @* sum56 <= sum55 + product57;

  always @* sum57 <= sum56 + product58;

  always @* sum58 <= sum57 + product59;

  always @* sum59 <= sum58 + product60;

  always @* sum60 <= sum59 + product61;

  always @* sum61 <= sum60 + product62;

  always @* sum62 <= sum61 + product63;

  always @* sum63 <= sum62 + product64;

  always @* sum64 <= sum63 + product65;

  always @* sum65 <= sum64 + product66;

  always @* sum66 <= sum65 + product67;

  always @* sum67 <= sum66 + product68;

  always @* sum68 <= sum67 + product69;

  always @* sum69 <= sum68 + product70;

  always @* sum70 <= sum69 + product71;

  always @* sum71 <= sum70 + product72;

  always @* sum72 <= sum71 + product73;

  always @* sum73 <= sum72 + product74;

  always @* sum74 <= sum73 + product75;

  always @* sum75 <= sum74 + product76;

  always @* sum76 <= sum75 + product77;

  always @* sum77 <= sum76 + product78;

  always @* sum78 <= sum77 + product79;

  always @* sum79 <= sum78 + product80;

  always @* sum80 <= sum79 + product81;

  always @* sum81 <= sum80 + product82;

  always @* sum82 <= sum81 + product83;

  always @* sum83 <= sum82 + product84;

  always @* sum84 <= sum83 + product85;

  always @* sum85 <= sum84 + product86;

  always @* sum86 <= sum85 + product87;

  always @* sum87 <= sum86 + product88;

  always @* sum88 <= sum87 + product89;

  always @* sum89 <= sum88 + product90;

  always @* sum90 <= sum89 + product91;

  always @* sum91 <= sum90 + product92;

  always @* sum92 <= sum91 + product93;

  always @* sum93 <= sum92 + product94;

  always @* sum94 <= sum93 + product95;

  always @* sum95 <= sum94 + product96;

  always @* sum96 <= sum95 + product97;

  always @* sum97 <= sum96 + product98;

  always @* sum98 <= sum97 + product99;

  always @* sum99 <= sum98 + product100;

  always @* output_typeconvert <= sum99;


  always @ (posedge clk or posedge reset)
    begin: Output_Register_process
      if (reset == 1'b1) begin
        output_register <= 0.0000000000000000E+00;
      end
      else begin
        if (clk_enable == 1'b1) begin
          output_register <= output_typeconvert;
        end
      end
    end // Output_Register_process

  // Assignment Statements
  assign filter_out = $realtobits(output_register);
endmodule  // filter
