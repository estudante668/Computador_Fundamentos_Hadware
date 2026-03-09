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

-- DATE "03/09/2026 10:06:08"

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

ENTITY 	REGISTER16 IS
    PORT (
	in_v : IN std_logic_vector(15 DOWNTO 0);
	load : IN std_logic;
	clk : IN std_logic;
	out_v : OUT std_logic_vector(15 DOWNTO 0)
	);
END REGISTER16;

ARCHITECTURE structure OF REGISTER16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_v : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_out_v : std_logic_vector(15 DOWNTO 0);
SIGNAL \out_v[0]~output_o\ : std_logic;
SIGNAL \out_v[1]~output_o\ : std_logic;
SIGNAL \out_v[2]~output_o\ : std_logic;
SIGNAL \out_v[3]~output_o\ : std_logic;
SIGNAL \out_v[4]~output_o\ : std_logic;
SIGNAL \out_v[5]~output_o\ : std_logic;
SIGNAL \out_v[6]~output_o\ : std_logic;
SIGNAL \out_v[7]~output_o\ : std_logic;
SIGNAL \out_v[8]~output_o\ : std_logic;
SIGNAL \out_v[9]~output_o\ : std_logic;
SIGNAL \out_v[10]~output_o\ : std_logic;
SIGNAL \out_v[11]~output_o\ : std_logic;
SIGNAL \out_v[12]~output_o\ : std_logic;
SIGNAL \out_v[13]~output_o\ : std_logic;
SIGNAL \out_v[14]~output_o\ : std_logic;
SIGNAL \out_v[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \in_v[0]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[1]~input_o\ : std_logic;
SIGNAL \GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[2]~input_o\ : std_logic;
SIGNAL \GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[3]~input_o\ : std_logic;
SIGNAL \GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[4]~input_o\ : std_logic;
SIGNAL \GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[5]~input_o\ : std_logic;
SIGNAL \GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[6]~input_o\ : std_logic;
SIGNAL \GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[7]~input_o\ : std_logic;
SIGNAL \GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[8]~input_o\ : std_logic;
SIGNAL \GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[9]~input_o\ : std_logic;
SIGNAL \GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[10]~input_o\ : std_logic;
SIGNAL \GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[11]~input_o\ : std_logic;
SIGNAL \GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[12]~input_o\ : std_logic;
SIGNAL \GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[13]~input_o\ : std_logic;
SIGNAL \GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[14]~input_o\ : std_logic;
SIGNAL \GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \in_v[15]~input_o\ : std_logic;
SIGNAL \GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;

BEGIN

ww_in_v <= in_v;
ww_load <= load;
ww_clk <= clk;
out_v <= ww_out_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_v[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:0:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[0]~output_o\);

\out_v[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:1:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[1]~output_o\);

\out_v[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:2:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[2]~output_o\);

\out_v[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:3:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[3]~output_o\);

\out_v[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:4:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[4]~output_o\);

\out_v[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:5:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[5]~output_o\);

\out_v[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:6:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[6]~output_o\);

\out_v[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:7:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[7]~output_o\);

\out_v[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:8:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[8]~output_o\);

\out_v[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:9:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[9]~output_o\);

\out_v[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:10:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[10]~output_o\);

\out_v[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:11:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[11]~output_o\);

\out_v[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:12:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[12]~output_o\);

\out_v[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:13:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[13]~output_o\);

\out_v[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:14:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[14]~output_o\);

\out_v[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:15:REG_BIT|q_internal~q\,
	devoe => ww_devoe,
	o => \out_v[15]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\in_v[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(0),
	o => \in_v[0]~input_o\);

\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

\GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:0:REG_BIT|q_internal~q\);

\in_v[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(1),
	o => \in_v[1]~input_o\);

\GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:1:REG_BIT|q_internal~q\);

\in_v[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(2),
	o => \in_v[2]~input_o\);

\GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:2:REG_BIT|q_internal~q\);

\in_v[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(3),
	o => \in_v[3]~input_o\);

\GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:3:REG_BIT|q_internal~q\);

\in_v[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(4),
	o => \in_v[4]~input_o\);

\GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:4:REG_BIT|q_internal~q\);

\in_v[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(5),
	o => \in_v[5]~input_o\);

\GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:5:REG_BIT|q_internal~q\);

\in_v[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(6),
	o => \in_v[6]~input_o\);

\GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:6:REG_BIT|q_internal~q\);

\in_v[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(7),
	o => \in_v[7]~input_o\);

\GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:7:REG_BIT|q_internal~q\);

\in_v[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(8),
	o => \in_v[8]~input_o\);

\GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:8:REG_BIT|q_internal~q\);

\in_v[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(9),
	o => \in_v[9]~input_o\);

\GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:9:REG_BIT|q_internal~q\);

\in_v[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(10),
	o => \in_v[10]~input_o\);

\GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:10:REG_BIT|q_internal~q\);

\in_v[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(11),
	o => \in_v[11]~input_o\);

\GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:11:REG_BIT|q_internal~q\);

\in_v[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(12),
	o => \in_v[12]~input_o\);

\GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:12:REG_BIT|q_internal~q\);

\in_v[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(13),
	o => \in_v[13]~input_o\);

\GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:13:REG_BIT|q_internal~q\);

\in_v[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(14),
	o => \in_v[14]~input_o\);

\GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:14:REG_BIT|q_internal~q\);

\in_v[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(15),
	o => \in_v[15]~input_o\);

\GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:15:REG_BIT|q_internal~q\);

ww_out_v(0) <= \out_v[0]~output_o\;

ww_out_v(1) <= \out_v[1]~output_o\;

ww_out_v(2) <= \out_v[2]~output_o\;

ww_out_v(3) <= \out_v[3]~output_o\;

ww_out_v(4) <= \out_v[4]~output_o\;

ww_out_v(5) <= \out_v[5]~output_o\;

ww_out_v(6) <= \out_v[6]~output_o\;

ww_out_v(7) <= \out_v[7]~output_o\;

ww_out_v(8) <= \out_v[8]~output_o\;

ww_out_v(9) <= \out_v[9]~output_o\;

ww_out_v(10) <= \out_v[10]~output_o\;

ww_out_v(11) <= \out_v[11]~output_o\;

ww_out_v(12) <= \out_v[12]~output_o\;

ww_out_v(13) <= \out_v[13]~output_o\;

ww_out_v(14) <= \out_v[14]~output_o\;

ww_out_v(15) <= \out_v[15]~output_o\;
END structure;


