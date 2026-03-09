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

-- DATE "03/08/2026 22:47:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Register16 IS
    PORT (
	clk : IN std_logic;
	inp : IN std_logic_vector(15 DOWNTO 0);
	load : IN std_logic;
	outp : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Register16;

-- Design Ports Information
-- outp[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[7]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[10]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[11]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[13]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[14]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[8]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[9]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[10]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[12]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[13]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[14]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Register16 IS
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
SIGNAL ww_inp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_outp : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inp[0]~input_o\ : std_logic;
SIGNAL \q[0]~feeder_combout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \inp[1]~input_o\ : std_logic;
SIGNAL \q[1]~feeder_combout\ : std_logic;
SIGNAL \inp[2]~input_o\ : std_logic;
SIGNAL \inp[3]~input_o\ : std_logic;
SIGNAL \q[3]~feeder_combout\ : std_logic;
SIGNAL \inp[4]~input_o\ : std_logic;
SIGNAL \inp[5]~input_o\ : std_logic;
SIGNAL \inp[6]~input_o\ : std_logic;
SIGNAL \q[6]~feeder_combout\ : std_logic;
SIGNAL \inp[7]~input_o\ : std_logic;
SIGNAL \inp[8]~input_o\ : std_logic;
SIGNAL \q[8]~feeder_combout\ : std_logic;
SIGNAL \inp[9]~input_o\ : std_logic;
SIGNAL \inp[10]~input_o\ : std_logic;
SIGNAL \inp[11]~input_o\ : std_logic;
SIGNAL \q[11]~feeder_combout\ : std_logic;
SIGNAL \inp[12]~input_o\ : std_logic;
SIGNAL \q[12]~feeder_combout\ : std_logic;
SIGNAL \inp[13]~input_o\ : std_logic;
SIGNAL \inp[14]~input_o\ : std_logic;
SIGNAL \inp[15]~input_o\ : std_logic;
SIGNAL q : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_inp[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inp[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inp[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inp[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inp[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inp[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inp[0]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_inp <= inp;
ww_load <= load;
outp <= ww_outp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inp[12]~input_o\ <= NOT \inp[12]~input_o\;
\ALT_INV_inp[11]~input_o\ <= NOT \inp[11]~input_o\;
\ALT_INV_inp[8]~input_o\ <= NOT \inp[8]~input_o\;
\ALT_INV_inp[6]~input_o\ <= NOT \inp[6]~input_o\;
\ALT_INV_inp[3]~input_o\ <= NOT \inp[3]~input_o\;
\ALT_INV_inp[1]~input_o\ <= NOT \inp[1]~input_o\;
\ALT_INV_inp[0]~input_o\ <= NOT \inp[0]~input_o\;

-- Location: IOOBUF_X60_Y0_N36
\outp[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(0),
	devoe => ww_devoe,
	o => ww_outp(0));

-- Location: IOOBUF_X54_Y0_N53
\outp[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(1),
	devoe => ww_devoe,
	o => ww_outp(1));

-- Location: IOOBUF_X54_Y0_N36
\outp[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(2),
	devoe => ww_devoe,
	o => ww_outp(2));

-- Location: IOOBUF_X56_Y0_N19
\outp[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(3),
	devoe => ww_devoe,
	o => ww_outp(3));

-- Location: IOOBUF_X58_Y0_N76
\outp[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(4),
	devoe => ww_devoe,
	o => ww_outp(4));

-- Location: IOOBUF_X60_Y0_N2
\outp[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(5),
	devoe => ww_devoe,
	o => ww_outp(5));

-- Location: IOOBUF_X60_Y0_N19
\outp[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(6),
	devoe => ww_devoe,
	o => ww_outp(6));

-- Location: IOOBUF_X58_Y0_N59
\outp[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(7),
	devoe => ww_devoe,
	o => ww_outp(7));

-- Location: IOOBUF_X68_Y0_N19
\outp[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(8),
	devoe => ww_devoe,
	o => ww_outp(8));

-- Location: IOOBUF_X54_Y0_N19
\outp[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(9),
	devoe => ww_devoe,
	o => ww_outp(9));

-- Location: IOOBUF_X58_Y0_N93
\outp[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(10),
	devoe => ww_devoe,
	o => ww_outp(10));

-- Location: IOOBUF_X56_Y0_N2
\outp[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(11),
	devoe => ww_devoe,
	o => ww_outp(11));

-- Location: IOOBUF_X58_Y0_N42
\outp[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(12),
	devoe => ww_devoe,
	o => ww_outp(12));

-- Location: IOOBUF_X56_Y0_N53
\outp[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(13),
	devoe => ww_devoe,
	o => ww_outp(13));

-- Location: IOOBUF_X70_Y0_N2
\outp[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(14),
	devoe => ww_devoe,
	o => ww_outp(14));

-- Location: IOOBUF_X56_Y0_N36
\outp[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q(15),
	devoe => ww_devoe,
	o => ww_outp(15));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X66_Y0_N75
\inp[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(0),
	o => \inp[0]~input_o\);

-- Location: LABCELL_X62_Y2_N33
\q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[0]~feeder_combout\ = ( \inp[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inp[0]~input_o\,
	combout => \q[0]~feeder_combout\);

-- Location: IOIBUF_X66_Y0_N41
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X62_Y2_N34
\q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[0]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(0));

-- Location: IOIBUF_X68_Y0_N35
\inp[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(1),
	o => \inp[1]~input_o\);

-- Location: LABCELL_X62_Y2_N6
\q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[1]~feeder_combout\ = ( \inp[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inp[1]~input_o\,
	combout => \q[1]~feeder_combout\);

-- Location: FF_X62_Y2_N7
\q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[1]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(1));

-- Location: IOIBUF_X64_Y0_N1
\inp[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(2),
	o => \inp[2]~input_o\);

-- Location: FF_X62_Y2_N46
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[2]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: IOIBUF_X62_Y0_N1
\inp[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(3),
	o => \inp[3]~input_o\);

-- Location: LABCELL_X62_Y2_N48
\q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[3]~feeder_combout\ = ( \inp[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inp[3]~input_o\,
	combout => \q[3]~feeder_combout\);

-- Location: FF_X62_Y2_N49
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[3]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: IOIBUF_X68_Y0_N1
\inp[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(4),
	o => \inp[4]~input_o\);

-- Location: FF_X62_Y2_N25
\q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[4]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(4));

-- Location: IOIBUF_X64_Y0_N35
\inp[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(5),
	o => \inp[5]~input_o\);

-- Location: FF_X62_Y2_N1
\q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[5]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(5));

-- Location: IOIBUF_X66_Y0_N58
\inp[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(6),
	o => \inp[6]~input_o\);

-- Location: LABCELL_X62_Y2_N27
\q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[6]~feeder_combout\ = ( \inp[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inp[6]~input_o\,
	combout => \q[6]~feeder_combout\);

-- Location: FF_X62_Y2_N28
\q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[6]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(6));

-- Location: IOIBUF_X62_Y0_N35
\inp[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(7),
	o => \inp[7]~input_o\);

-- Location: FF_X62_Y2_N37
\q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[7]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(7));

-- Location: IOIBUF_X70_Y0_N52
\inp[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(8),
	o => \inp[8]~input_o\);

-- Location: LABCELL_X68_Y1_N0
\q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[8]~feeder_combout\ = ( \inp[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inp[8]~input_o\,
	combout => \q[8]~feeder_combout\);

-- Location: FF_X68_Y1_N2
\q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[8]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(8));

-- Location: IOIBUF_X64_Y0_N52
\inp[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(9),
	o => \inp[9]~input_o\);

-- Location: FF_X62_Y2_N4
\q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[9]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(9));

-- Location: IOIBUF_X62_Y0_N18
\inp[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(10),
	o => \inp[10]~input_o\);

-- Location: FF_X62_Y2_N13
\q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[10]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(10));

-- Location: IOIBUF_X64_Y0_N18
\inp[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(11),
	o => \inp[11]~input_o\);

-- Location: LABCELL_X62_Y2_N15
\q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[11]~feeder_combout\ = ( \inp[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inp[11]~input_o\,
	combout => \q[11]~feeder_combout\);

-- Location: FF_X62_Y2_N16
\q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[11]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(11));

-- Location: IOIBUF_X66_Y0_N92
\inp[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(12),
	o => \inp[12]~input_o\);

-- Location: LABCELL_X62_Y2_N18
\q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[12]~feeder_combout\ = ( \inp[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inp[12]~input_o\,
	combout => \q[12]~feeder_combout\);

-- Location: FF_X62_Y2_N20
\q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[12]~feeder_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(12));

-- Location: IOIBUF_X60_Y0_N52
\inp[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(13),
	o => \inp[13]~input_o\);

-- Location: FF_X62_Y2_N22
\q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[13]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(13));

-- Location: IOIBUF_X68_Y0_N52
\inp[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(14),
	o => \inp[14]~input_o\);

-- Location: FF_X68_Y1_N40
\q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[14]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(14));

-- Location: IOIBUF_X62_Y0_N52
\inp[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(15),
	o => \inp[15]~input_o\);

-- Location: FF_X62_Y2_N58
\q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inp[15]~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(15));

-- Location: MLABCELL_X8_Y4_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


