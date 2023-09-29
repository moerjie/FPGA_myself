-- -------------------------------------------------------------
-- 
-- File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\DDS_32BIT\hdlsrc\NCO\Discrete_FIR_Filter.vhd
-- Created: 2023-09-22 17:10:45
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Discrete_FIR_Filter
-- Source Path: NCO/Subsystem/Discrete FIR Filter
-- Hierarchy Level: 2
-- 
-- Discrete FIR Filter
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Discrete_FIR_Filter IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        validIn                           :   IN    std_logic;
        dataOut                           :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        validOut                          :   OUT   std_logic
        );
END Discrete_FIR_Filter;


ARCHITECTURE rtl OF Discrete_FIR_Filter IS

  -- Component Declarations
  COMPONENT Filter
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          dataIn                          :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          validIn                         :   IN    std_logic;
          syncReset                       :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Filter
    USE ENTITY work.Filter(rtl);

  -- Signals
  SIGNAL syncReset                        : std_logic;
  SIGNAL dataOut_tmp                      : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_FilterBank : Filter
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              dataIn => dataIn,  -- sfix16_En14
              validIn => validIn,
              syncReset => syncReset,
              dataOut => dataOut_tmp,  -- sfix16_En13
              validOut => validOut
              );

  syncReset <= '0';

  dataOut <= dataOut_tmp;

END rtl;
