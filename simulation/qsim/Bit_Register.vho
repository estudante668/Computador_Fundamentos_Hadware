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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/09/2026 09:16:50"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Bit_Register IS
    PORT (
	clk : IN std_logic;
	in_v : IN std_logic;
	load : IN std_logic;
	out_v : OUT std_logic
	);
END Bit_Register;

ARCHITECTURE structure OF Bit_Register IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_in_v : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_out_v : std_logic;
SIGNAL \out_v~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \in_v~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \q_internal~0_combout\ : std_logic;
SIGNAL \q_internal~q\ : std_logic;
SIGNAL \ALT_INV_q_internal~q\ : std_logic;
SIGNAL \ALT_INV_in_v~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_in_v <= in_v;
ww_load <= load;
out_v <= ww_out_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_q_internal~q\ <= NOT \q_internal~q\;
\ALT_INV_in_v~input_o\ <= NOT \in_v~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;

\out_v~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q_internal~q\,
	devoe => ww_devoe,
	o => \out_v~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\in_v~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v,
	o => \in_v~input_o\);

\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

\q_internal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \q_internal~0_combout\ = (!\load~input_o\ & (\q_internal~q\)) # (\load~input_o\ & ((\in_v~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_q_internal~q\,
	datab => \ALT_INV_in_v~input_o\,
	datac => \ALT_INV_load~input_o\,
	combout => \q_internal~0_combout\);

q_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \q_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_internal~q\);

ww_out_v <= \out_v~output_o\;
END structure;


