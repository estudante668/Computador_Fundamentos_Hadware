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
-- Generated on "03/08/2026 16:38:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_vec_tst IS
END ALU_vhd_vec_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC;
SIGNAL ng : STD_LOGIC;
SIGNAL no : STD_LOGIC;
SIGNAL nx : STD_LOGIC;
SIGNAL ny : STD_LOGIC;
SIGNAL q_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL zr : STD_LOGIC;
SIGNAL zx : STD_LOGIC;
SIGNAL zy : STD_LOGIC;
COMPONENT ALU
	PORT (
	f : IN STD_LOGIC;
	ng : OUT STD_LOGIC;
	no : IN STD_LOGIC;
	nx : IN STD_LOGIC;
	ny : IN STD_LOGIC;
	q_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	zr : OUT STD_LOGIC;
	zx : IN STD_LOGIC;
	zy : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	ng => ng,
	no => no,
	nx => nx,
	ny => ny,
	q_out => q_out,
	x => x,
	y => y,
	zr => zr,
	zx => zx,
	zy => zy
	);

-- f
t_prcs_f: PROCESS
BEGIN
	f <= '1';
WAIT;
END PROCESS t_prcs_f;

-- no
t_prcs_no: PROCESS
BEGIN
	no <= '1';
WAIT;
END PROCESS t_prcs_no;

-- nx
t_prcs_nx: PROCESS
BEGIN
	nx <= '1';
WAIT;
END PROCESS t_prcs_nx;

-- ny
t_prcs_ny: PROCESS
BEGIN
	ny <= '0';
WAIT;
END PROCESS t_prcs_ny;
-- x[15]
t_prcs_x_15: PROCESS
BEGIN
	x(15) <= '0';
WAIT;
END PROCESS t_prcs_x_15;
-- x[14]
t_prcs_x_14: PROCESS
BEGIN
	x(14) <= '0';
WAIT;
END PROCESS t_prcs_x_14;
-- x[13]
t_prcs_x_13: PROCESS
BEGIN
	x(13) <= '0';
WAIT;
END PROCESS t_prcs_x_13;
-- x[12]
t_prcs_x_12: PROCESS
BEGIN
	x(12) <= '0';
WAIT;
END PROCESS t_prcs_x_12;
-- x[11]
t_prcs_x_11: PROCESS
BEGIN
	x(11) <= '0';
WAIT;
END PROCESS t_prcs_x_11;
-- x[10]
t_prcs_x_10: PROCESS
BEGIN
	x(10) <= '0';
WAIT;
END PROCESS t_prcs_x_10;
-- x[9]
t_prcs_x_9: PROCESS
BEGIN
	x(9) <= '0';
WAIT;
END PROCESS t_prcs_x_9;
-- x[8]
t_prcs_x_8: PROCESS
BEGIN
	x(8) <= '0';
WAIT;
END PROCESS t_prcs_x_8;
-- x[7]
t_prcs_x_7: PROCESS
BEGIN
	x(7) <= '0';
WAIT;
END PROCESS t_prcs_x_7;
-- x[6]
t_prcs_x_6: PROCESS
BEGIN
	x(6) <= '0';
WAIT;
END PROCESS t_prcs_x_6;
-- x[5]
t_prcs_x_5: PROCESS
BEGIN
	x(5) <= '0';
WAIT;
END PROCESS t_prcs_x_5;
-- x[4]
t_prcs_x_4: PROCESS
BEGIN
	x(4) <= '0';
WAIT;
END PROCESS t_prcs_x_4;
-- x[3]
t_prcs_x_3: PROCESS
BEGIN
	x(3) <= '0';
WAIT;
END PROCESS t_prcs_x_3;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
	x(2) <= '1';
WAIT;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
	x(1) <= '1';
WAIT;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
	x(0) <= '1';
WAIT;
END PROCESS t_prcs_x_0;
-- y[15]
t_prcs_y_15: PROCESS
BEGIN
	y(15) <= '0';
WAIT;
END PROCESS t_prcs_y_15;
-- y[14]
t_prcs_y_14: PROCESS
BEGIN
	y(14) <= '0';
WAIT;
END PROCESS t_prcs_y_14;
-- y[13]
t_prcs_y_13: PROCESS
BEGIN
	y(13) <= '0';
WAIT;
END PROCESS t_prcs_y_13;
-- y[12]
t_prcs_y_12: PROCESS
BEGIN
	y(12) <= '0';
WAIT;
END PROCESS t_prcs_y_12;
-- y[11]
t_prcs_y_11: PROCESS
BEGIN
	y(11) <= '0';
WAIT;
END PROCESS t_prcs_y_11;
-- y[10]
t_prcs_y_10: PROCESS
BEGIN
	y(10) <= '0';
WAIT;
END PROCESS t_prcs_y_10;
-- y[9]
t_prcs_y_9: PROCESS
BEGIN
	y(9) <= '0';
WAIT;
END PROCESS t_prcs_y_9;
-- y[8]
t_prcs_y_8: PROCESS
BEGIN
	y(8) <= '0';
WAIT;
END PROCESS t_prcs_y_8;
-- y[7]
t_prcs_y_7: PROCESS
BEGIN
	y(7) <= '0';
WAIT;
END PROCESS t_prcs_y_7;
-- y[6]
t_prcs_y_6: PROCESS
BEGIN
	y(6) <= '0';
WAIT;
END PROCESS t_prcs_y_6;
-- y[5]
t_prcs_y_5: PROCESS
BEGIN
	y(5) <= '0';
WAIT;
END PROCESS t_prcs_y_5;
-- y[4]
t_prcs_y_4: PROCESS
BEGIN
	y(4) <= '0';
WAIT;
END PROCESS t_prcs_y_4;
-- y[3]
t_prcs_y_3: PROCESS
BEGIN
	y(3) <= '0';
WAIT;
END PROCESS t_prcs_y_3;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
	y(2) <= '1';
WAIT;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
	y(1) <= '0';
WAIT;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
	y(0) <= '0';
WAIT;
END PROCESS t_prcs_y_0;

-- zx
t_prcs_zx: PROCESS
BEGIN
	zx <= '0';
WAIT;
END PROCESS t_prcs_zx;

-- zy
t_prcs_zy: PROCESS
BEGIN
	zy <= '0';
WAIT;
END PROCESS t_prcs_zy;
END ALU_arch;
