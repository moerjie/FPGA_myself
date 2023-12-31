-- -------------------------------------------------------------
-- 
-- File Name: F:\Git_Repository\FPGA_myself\DDS\DDS_CSDN\DDS_32BIT\hdlsrc\NCO\NCO_pkg.vhd
-- Created: 2023-09-22 17:10:45
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE NCO_pkg IS
  TYPE vector_of_std_logic_vector16 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(15 DOWNTO 0);
  TYPE vector_of_signed16 IS ARRAY (NATURAL RANGE <>) OF signed(15 DOWNTO 0);
  TYPE vector_of_unsigned10 IS ARRAY (NATURAL RANGE <>) OF unsigned(9 DOWNTO 0);
END NCO_pkg;

