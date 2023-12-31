-- -------------------------------------------------------------
-- 
-- File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\DDS_32BIT\hdlsrc\NCO\Filter.vhd
-- Created: 2023-09-22 17:10:45
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Filter
-- Source Path: NCO/Subsystem/Discrete FIR Filter/Filter
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.NCO_pkg.ALL;

ENTITY Filter IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        validIn                           :   IN    std_logic;
        syncReset                         :   IN    std_logic;
        dataOut                           :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        validOut                          :   OUT   std_logic
        );
END Filter;


ARCHITECTURE rtl OF Filter IS

  -- Component Declarations
  COMPONENT FilterCoef
    PORT( CoefOut                         :   OUT   vector_of_std_logic_vector16(0 TO 79)  -- sfix16_En17 [80]
          );
  END COMPONENT;

  COMPONENT subFilter
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          dinReg2_0_re                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          coefIn                          :   IN    vector_of_std_logic_vector16(0 TO 79);  -- sfix16_En17 [80]
          dinRegVld                       :   IN    std_logic;
          syncReset                       :   IN    std_logic;
          dout_1_re                       :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
          doutVld                         :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : FilterCoef
    USE ENTITY work.FilterCoef(rtl);

  FOR ALL : subFilter
    USE ENTITY work.subFilter(rtl);

  -- Signals
  SIGNAL dinRegVld                        : std_logic;
  SIGNAL dataIn_signed                    : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL dinReg_0_re                      : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL dinReg2_0_re                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL CoefOut                          : vector_of_std_logic_vector16(0 TO 79);  -- ufix16 [80]
  SIGNAL dinReg2Vld                       : std_logic;
  SIGNAL dout_1_re                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL doutVld                          : std_logic;

BEGIN
  u_CoefTable_1 : FilterCoef
    PORT MAP( CoefOut => CoefOut  -- sfix16_En17 [80]
              );

  u_subFilter_1_re : subFilter
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              dinReg2_0_re => std_logic_vector(dinReg2_0_re),  -- sfix16_En14
              coefIn => CoefOut,  -- sfix16_En17 [80]
              dinRegVld => dinReg2Vld,
              syncReset => syncReset,
              dout_1_re => dout_1_re,  -- sfix16_En13
              doutVld => doutVld
              );

  intdelay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      dinRegVld <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF syncReset = '1' THEN
          dinRegVld <= '0';
        ELSE 
          dinRegVld <= validIn;
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_process;


  dataIn_signed <= signed(dataIn);

  intdelay_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      dinReg_0_re <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF syncReset = '1' THEN
          dinReg_0_re <= to_signed(16#0000#, 16);
        ELSIF validIn = '1' THEN
          dinReg_0_re <= dataIn_signed;
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_1_process;


  intdelay_2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      dinReg2_0_re <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF syncReset = '1' THEN
          dinReg2_0_re <= to_signed(16#0000#, 16);
        ELSIF dinRegVld = '1' THEN
          dinReg2_0_re <= dinReg_0_re;
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_2_process;


  intdelay_3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      dinReg2Vld <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF syncReset = '1' THEN
          dinReg2Vld <= '0';
        ELSE 
          dinReg2Vld <= dinRegVld;
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_3_process;


  dataOut <= dout_1_re;

  validOut <= doutVld;

END rtl;

