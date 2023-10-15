-- -------------------------------------------------------------
-- 
-- File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\DDS_32BIT\hdlsrc\NCO\DitherGen.vhd
-- Created: 2023-09-22 17:10:45
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DitherGen
-- Source Path: NCO/Subsystem/NCO/DitherGen
-- Hierarchy Level: 3
-- 
-- Internal Dither Generation Component
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY DitherGen IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        validIn                           :   IN    std_logic;
        dither                            :   OUT   std_logic_vector(3 DOWNTO 0)  -- ufix4
        );
END DitherGen;


ARCHITECTURE rtl OF DitherGen IS

  -- Signals
  SIGNAL pn_newvalue3                     : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL pn_newvaluesf3                   : unsigned(17 DOWNTO 0);  -- ufix18
  SIGNAL bit0_3                           : std_logic;  -- ufix1
  SIGNAL bit14_3                          : std_logic;  -- ufix1
  SIGNAL bit17_3                          : std_logic;  -- ufix1
  SIGNAL pn_newvalue2                     : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL pn_newvaluesf2                   : unsigned(17 DOWNTO 0);  -- ufix18
  SIGNAL bit0_2                           : std_logic;  -- ufix1
  SIGNAL bit14_2                          : std_logic;  -- ufix1
  SIGNAL bit17_2                          : std_logic;  -- ufix1
  SIGNAL pn_newvalue1                     : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL pn_newvaluesf1                   : unsigned(17 DOWNTO 0);  -- ufix18
  SIGNAL bit0_1                           : std_logic;  -- ufix1
  SIGNAL bit14_1                          : std_logic;  -- ufix1
  SIGNAL bit17_1                          : std_logic;  -- ufix1
  SIGNAL pn_reg                           : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL pn_newvaluesf0                   : unsigned(17 DOWNTO 0);  -- ufix18
  SIGNAL bit14_0                          : std_logic;  -- ufix1
  SIGNAL bit17_0                          : std_logic;  -- ufix1
  SIGNAL bit18_0                          : std_logic;  -- ufix1
  SIGNAL bit0_0                           : std_logic;  -- ufix1
  SIGNAL xorout0                          : std_logic;  -- ufix1
  SIGNAL bit18_1                          : std_logic;  -- ufix1
  SIGNAL xorout1                          : std_logic;  -- ufix1
  SIGNAL bit18_2                          : std_logic;  -- ufix1
  SIGNAL xorout2                          : std_logic;  -- ufix1
  SIGNAL bit18_3                          : std_logic;  -- ufix1
  SIGNAL xorout3                          : std_logic;  -- ufix1
  SIGNAL pn_newvalue4                     : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL dither_tmp                       : unsigned(3 DOWNTO 0);  -- ufix4

BEGIN
  pn_newvaluesf3 <= pn_newvalue3(18 DOWNTO 1);

  bit0_3 <= pn_newvalue3(0);

  bit14_3 <= pn_newvalue3(14);

  bit17_3 <= pn_newvalue3(17);

  pn_newvaluesf2 <= pn_newvalue2(18 DOWNTO 1);

  bit0_2 <= pn_newvalue2(0);

  bit14_2 <= pn_newvalue2(14);

  bit17_2 <= pn_newvalue2(17);

  pn_newvaluesf1 <= pn_newvalue1(18 DOWNTO 1);

  bit0_1 <= pn_newvalue1(0);

  bit14_1 <= pn_newvalue1(14);

  bit17_1 <= pn_newvalue1(17);

  pn_newvaluesf0 <= pn_reg(18 DOWNTO 1);

  bit14_0 <= pn_reg(14);

  bit17_0 <= pn_reg(17);

  bit18_0 <= pn_reg(18);

  -- Stage1: Compute register output and shift
  xorout0 <= bit0_0 XOR (bit14_0 XOR (bit18_0 XOR bit17_0));

  pn_newvalue1 <= xorout0 & pn_newvaluesf0;

  bit18_1 <= pn_newvalue1(18);

  -- Stage2: Compute register output and shift
  xorout1 <= bit0_1 XOR (bit14_1 XOR (bit18_1 XOR bit17_1));

  pn_newvalue2 <= xorout1 & pn_newvaluesf1;

  bit18_2 <= pn_newvalue2(18);

  -- Stage3: Compute register output and shift
  xorout2 <= bit0_2 XOR (bit14_2 XOR (bit18_2 XOR bit17_2));

  pn_newvalue3 <= xorout2 & pn_newvaluesf2;

  bit18_3 <= pn_newvalue3(18);

  -- Stage4: Compute register output and shift
  xorout3 <= bit0_3 XOR (bit14_3 XOR (bit18_3 XOR bit17_3));

  pn_newvalue4 <= xorout3 & pn_newvaluesf3;

  -- PNgen register
  PNgenRegister_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      pn_reg <= to_unsigned(16#00001#, 19);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND validIn = '1' THEN
        pn_reg <= pn_newvalue4;
      END IF;
    END IF;
  END PROCESS PNgenRegister_process;


  bit0_0 <= pn_reg(0);

  -- Dither Output
  dither_tmp <= unsigned'(bit0_0 & bit0_1 & bit0_2 & bit0_3);

  dither <= std_logic_vector(dither_tmp);

END rtl;

