-- -------------------------------------------------------------
-- 
-- File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\DDS_32BIT\hdlsrc\NCO\WaveformGen.vhd
-- Created: 2023-09-22 17:10:45
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: WaveformGen
-- Source Path: NCO/Subsystem/NCO/WaveformGen
-- Hierarchy Level: 3
-- 
-- Wave form Generation Component
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY WaveformGen IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        phaseIdx                          :   IN    std_logic_vector(11 DOWNTO 0);  -- ufix12_E20
        sine                              :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END WaveformGen;


ARCHITECTURE rtl OF WaveformGen IS

  -- Component Declarations
  COMPONENT LookUpTableGen
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          lutaddr                         :   IN    std_logic_vector(9 DOWNTO 0);  -- ufix10
          lutoutput                       :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : LookUpTableGen
    USE ENTITY work.LookUpTableGen(rtl);

  -- Signals
  SIGNAL phaseIdx_unsigned                : unsigned(11 DOWNTO 0);  -- ufix12_E20
  SIGNAL phaseIdxReg                      : unsigned(11 DOWNTO 0);  -- ufix12_E20
  SIGNAL selsign                          : std_logic;  -- ufix1
  SIGNAL SelsignRegister_reg              : std_logic_vector(0 TO 2);  -- ufix1 [3]
  SIGNAL selsignreg                       : std_logic;  -- ufix1
  SIGNAL lutaddrexd                       : unsigned(10 DOWNTO 0);  -- ufix11
  SIGNAL addrOverFsin                     : std_logic;  -- ufix1
  SIGNAL seladdr                          : std_logic;  -- ufix1
  SIGNAL lutaddr1                         : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL lutaddrmax                       : unsigned(10 DOWNTO 0);  -- ufix11
  SIGNAL lutaddr2                         : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL lutaddrsin                       : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL AddrOverFsinRegister_reg         : std_logic_vector(0 TO 2);  -- ufix1 [3]
  SIGNAL addrOverFsinreg                  : std_logic;  -- ufix1
  SIGNAL lutoutsin                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL lutoutsin_signed                 : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL ampOne                           : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL lutoutsin_ampOne                 : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL uminus_cast                      : signed(16 DOWNTO 0);  -- sfix17_En14
  SIGNAL uminus_cast_1                    : signed(16 DOWNTO 0);  -- sfix17_En14
  SIGNAL lutoutsin_ampOne_inv             : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL sine_tmp                         : signed(15 DOWNTO 0);  -- sfix16_En14

BEGIN
  u_SineWave_inst : LookUpTableGen
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              lutaddr => std_logic_vector(lutaddrsin),  -- ufix10
              lutoutput => lutoutsin  -- sfix16_En14
              );

  phaseIdx_unsigned <= unsigned(phaseIdx);

  phaseIdxRegister_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      phaseIdxReg <= to_unsigned(16#000#, 12);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        phaseIdxReg <= phaseIdx_unsigned;
      END IF;
    END IF;
  END PROCESS phaseIdxRegister_process;


  -- Sine sign selection signal
  selsign <= phaseIdxReg(11);

  SelsignRegister_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SelsignRegister_reg <= (OTHERS => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        SelsignRegister_reg(0) <= selsign;
        SelsignRegister_reg(1 TO 2) <= SelsignRegister_reg(0 TO 1);
      END IF;
    END IF;
  END PROCESS SelsignRegister_process;

  selsignreg <= SelsignRegister_reg(2);

  -- Get extended LUT address for overflow handling
  lutaddrexd <= phaseIdxReg(10 DOWNTO 0);

  -- Detect sine overflow
  
  addrOverFsin <= '1' WHEN lutaddrexd = to_unsigned(16#400#, 11) ELSE
      '0';

  seladdr <= phaseIdxReg(10);

  lutaddr1 <= phaseIdxReg(9 DOWNTO 0);

  -- Map LUT address in correct phase
  lutaddrmax <= to_unsigned(16#400#, 11);

  lutaddr2 <= resize(resize(lutaddrmax, 12) - resize(lutaddr1, 12), 10);

  
  lutaddrsin <= lutaddr1 WHEN seladdr = '0' ELSE
      lutaddr2;

  AddrOverFsinRegister_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      AddrOverFsinRegister_reg <= (OTHERS => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        AddrOverFsinRegister_reg(0) <= addrOverFsin;
        AddrOverFsinRegister_reg(1 TO 2) <= AddrOverFsinRegister_reg(0 TO 1);
      END IF;
    END IF;
  END PROCESS AddrOverFsinRegister_process;

  addrOverFsinreg <= AddrOverFsinRegister_reg(2);

  lutoutsin_signed <= signed(lutoutsin);

  ampOne <= to_signed(16#4000#, 16);

  -- Assign sine amplitude One
  
  lutoutsin_ampOne <= lutoutsin_signed WHEN addrOverFsinreg = '0' ELSE
      ampOne;

  uminus_cast <= resize(lutoutsin_ampOne, 17);
  uminus_cast_1 <=  - (uminus_cast);
  lutoutsin_ampOne_inv <= uminus_cast_1(15 DOWNTO 0);

  -- Select sign of Sine output
  
  sine_tmp <= lutoutsin_ampOne WHEN selsignreg = '0' ELSE
      lutoutsin_ampOne_inv;

  sine <= std_logic_vector(sine_tmp);

END rtl;

