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
-- Generated on "03/09/2026 11:46:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM8_vhd_vec_tst IS
END RAM8_vhd_vec_tst;
ARCHITECTURE RAM8_arch OF RAM8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL in_v : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL load : STD_LOGIC;
SIGNAL out_v : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT RAM8
	PORT (
	address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	in_v : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	load : IN STD_LOGIC;
	out_v : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RAM8
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clk => clk,
	in_v => in_v,
	load => load,
	out_v => out_v
	);
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 200000 ps;
	address(2) <= '1';
	WAIT FOR 200000 ps;
	address(2) <= '0';
	WAIT FOR 400000 ps;
	address(2) <= '1';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 200000 ps;
	address(1) <= '1';
	WAIT FOR 200000 ps;
	address(1) <= '0';
	WAIT FOR 400000 ps;
	address(1) <= '1';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '0';
	WAIT FOR 700000 ps;
	address(0) <= '1';
	WAIT FOR 100000 ps;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		clk <= '0';
		WAIT FOR 100000 ps;
		clk <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;
-- in_v[15]
t_prcs_in_v_15: PROCESS
BEGIN
	in_v(15) <= '0';
WAIT;
END PROCESS t_prcs_in_v_15;
-- in_v[14]
t_prcs_in_v_14: PROCESS
BEGIN
	in_v(14) <= '0';
WAIT;
END PROCESS t_prcs_in_v_14;
-- in_v[13]
t_prcs_in_v_13: PROCESS
BEGIN
	in_v(13) <= '0';
WAIT;
END PROCESS t_prcs_in_v_13;
-- in_v[12]
t_prcs_in_v_12: PROCESS
BEGIN
	in_v(12) <= '0';
WAIT;
END PROCESS t_prcs_in_v_12;
-- in_v[11]
t_prcs_in_v_11: PROCESS
BEGIN
	in_v(11) <= '0';
WAIT;
END PROCESS t_prcs_in_v_11;
-- in_v[10]
t_prcs_in_v_10: PROCESS
BEGIN
	in_v(10) <= '0';
WAIT;
END PROCESS t_prcs_in_v_10;
-- in_v[9]
t_prcs_in_v_9: PROCESS
BEGIN
	in_v(9) <= '0';
WAIT;
END PROCESS t_prcs_in_v_9;
-- in_v[8]
t_prcs_in_v_8: PROCESS
BEGIN
	in_v(8) <= '0';
WAIT;
END PROCESS t_prcs_in_v_8;
-- in_v[7]
t_prcs_in_v_7: PROCESS
BEGIN
	in_v(7) <= '0';
WAIT;
END PROCESS t_prcs_in_v_7;
-- in_v[6]
t_prcs_in_v_6: PROCESS
BEGIN
	in_v(6) <= '0';
WAIT;
END PROCESS t_prcs_in_v_6;
-- in_v[5]
t_prcs_in_v_5: PROCESS
BEGIN
	in_v(5) <= '0';
WAIT;
END PROCESS t_prcs_in_v_5;
-- in_v[4]
t_prcs_in_v_4: PROCESS
BEGIN
	in_v(4) <= '1';
	WAIT FOR 200000 ps;
	in_v(4) <= '0';
WAIT;
END PROCESS t_prcs_in_v_4;
-- in_v[3]
t_prcs_in_v_3: PROCESS
BEGIN
	in_v(3) <= '0';
	WAIT FOR 200000 ps;
	in_v(3) <= '1';
WAIT;
END PROCESS t_prcs_in_v_3;
-- in_v[2]
t_prcs_in_v_2: PROCESS
BEGIN
	in_v(2) <= '1';
	WAIT FOR 200000 ps;
	in_v(2) <= '0';
WAIT;
END PROCESS t_prcs_in_v_2;
-- in_v[1]
t_prcs_in_v_1: PROCESS
BEGIN
	in_v(1) <= '0';
WAIT;
END PROCESS t_prcs_in_v_1;
-- in_v[0]
t_prcs_in_v_0: PROCESS
BEGIN
	in_v(0) <= '0';
	WAIT FOR 200000 ps;
	in_v(0) <= '1';
WAIT;
END PROCESS t_prcs_in_v_0;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
	WAIT FOR 400000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
END RAM8_arch;
