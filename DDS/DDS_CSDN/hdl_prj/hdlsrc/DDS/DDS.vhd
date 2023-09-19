-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\DDS\DDS.vhd
-- Created: 2023-09-19 11:24:16
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 1
-- Target subsystem base rate: 1
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        1
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- Out1                          ce_out        1
-- Out2                          ce_out        1
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DDS
-- Source Path: DDS
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY DDS IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        In1                               :   IN    std_logic_vector(15 DOWNTO 0);  -- uint16
        ce_out                            :   OUT   std_logic;
        Out1                              :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        Out2                              :   OUT   std_logic
        );
END DDS;


ARCHITECTURE rtl OF DDS IS

  ATTRIBUTE multstyle : string;

  -- Component Declarations
  COMPONENT NCO
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inc                             :   IN    std_logic_vector(15 DOWNTO 0);  -- uint16
          validIn                         :   IN    std_logic;
          sine                            :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : NCO
    USE ENTITY work.NCO(rtl);

  -- Signals
  SIGNAL Constant_out1                    : std_logic;
  SIGNAL NCO_out1                         : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL NCO_out2                         : std_logic;

BEGIN
  u_NCO : NCO
    PORT MAP( clk => clk,
              reset => reset,
              enb => clk_enable,
              inc => In1,  -- uint16
              validIn => Constant_out1,
              sine => NCO_out1,  -- sfix16_En14
              validOut => NCO_out2
              );

  Constant_out1 <= '1';

  ce_out <= clk_enable;

  Out1 <= NCO_out1;

  Out2 <= NCO_out2;

END rtl;
