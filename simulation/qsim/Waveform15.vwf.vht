-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/09/2026 09:16:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bit_Register
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bit_Register_vhd_vec_tst IS
END Bit_Register_vhd_vec_tst;
ARCHITECTURE Bit_Register_arch OF Bit_Register_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL in_v : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL out_v : STD_LOGIC;
COMPONENT Bit_Register
	PORT (
	clk : IN STD_LOGIC;
	in_v : IN STD_LOGIC;
	load : IN STD_LOGIC;
	out_v : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Bit_Register
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	in_v => in_v,
	load => load,
	out_v => out_v
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- in_v
t_prcs_in_v: PROCESS
BEGIN
	in_v <= '1';
WAIT;
END PROCESS t_prcs_in_v;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
	WAIT FOR 200000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
END Bit_Register_arch;
