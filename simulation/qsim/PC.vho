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

-- DATE "03/09/2026 16:43:57"

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

ENTITY 	PC IS
    PORT (
	clk : IN std_logic;
	in_v : IN std_logic_vector(15 DOWNTO 0);
	load : IN std_logic;
	inc : IN std_logic;
	reset : IN std_logic;
	out_v : OUT std_logic_vector(15 DOWNTO 0)
	);
END PC;

ARCHITECTURE structure OF PC IS
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
SIGNAL ww_in_v : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_inc : std_logic;
SIGNAL ww_reset : std_logic;
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
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \in_v[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \inc~input_o\ : std_logic;
SIGNAL \current_val[0]~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \in_v[1]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \in_v[2]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \in_v[3]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \in_v[4]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \in_v[5]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \in_v[6]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \in_v[7]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \in_v[8]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \in_v[9]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \in_v[10]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \in_v[11]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \in_v[12]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \in_v[13]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \in_v[14]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \in_v[15]~input_o\ : std_logic;
SIGNAL current_val : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_current_val : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_inc~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_in_v <= in_v;
ww_load <= load;
ww_inc <= inc;
ww_reset <= reset;
out_v <= ww_out_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_current_val(0) <= NOT current_val(0);
ALT_INV_current_val(1) <= NOT current_val(1);
ALT_INV_current_val(2) <= NOT current_val(2);
ALT_INV_current_val(3) <= NOT current_val(3);
ALT_INV_current_val(4) <= NOT current_val(4);
ALT_INV_current_val(5) <= NOT current_val(5);
ALT_INV_current_val(6) <= NOT current_val(6);
ALT_INV_current_val(7) <= NOT current_val(7);
ALT_INV_current_val(8) <= NOT current_val(8);
ALT_INV_current_val(9) <= NOT current_val(9);
ALT_INV_current_val(10) <= NOT current_val(10);
ALT_INV_current_val(11) <= NOT current_val(11);
ALT_INV_current_val(12) <= NOT current_val(12);
ALT_INV_current_val(13) <= NOT current_val(13);
ALT_INV_current_val(14) <= NOT current_val(14);
ALT_INV_current_val(15) <= NOT current_val(15);
\ALT_INV_inc~input_o\ <= NOT \inc~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

\out_v[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => current_val(0),
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
	i => current_val(1),
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
	i => current_val(2),
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
	i => current_val(3),
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
	i => current_val(4),
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
	i => current_val(5),
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
	i => current_val(6),
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
	i => current_val(7),
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
	i => current_val(8),
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
	i => current_val(9),
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
	i => current_val(10),
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
	i => current_val(11),
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
	i => current_val(12),
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
	i => current_val(13),
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
	i => current_val(14),
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
	i => current_val(15),
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

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( current_val(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( current_val(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\in_v[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(0),
	o => \in_v[0]~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

\inc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inc,
	o => \inc~input_o\);

\current_val[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_val[0]~0_combout\ = ((\inc~input_o\) # (\load~input_o\)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_load~input_o\,
	datac => \ALT_INV_inc~input_o\,
	combout => \current_val[0]~0_combout\);

\current_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~1_sumout\,
	asdata => \in_v[0]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(0));

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( current_val(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( current_val(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\in_v[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(1),
	o => \in_v[1]~input_o\);

\current_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~5_sumout\,
	asdata => \in_v[1]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(1));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( current_val(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( current_val(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\in_v[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(2),
	o => \in_v[2]~input_o\);

\current_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~9_sumout\,
	asdata => \in_v[2]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(2));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( current_val(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( current_val(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\in_v[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(3),
	o => \in_v[3]~input_o\);

\current_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~13_sumout\,
	asdata => \in_v[3]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(3));

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( current_val(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( current_val(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\in_v[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(4),
	o => \in_v[4]~input_o\);

\current_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~17_sumout\,
	asdata => \in_v[4]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(4));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( current_val(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( current_val(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\in_v[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(5),
	o => \in_v[5]~input_o\);

\current_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~21_sumout\,
	asdata => \in_v[5]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(5));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( current_val(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( current_val(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\in_v[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(6),
	o => \in_v[6]~input_o\);

\current_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~25_sumout\,
	asdata => \in_v[6]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(6));

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( current_val(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( current_val(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\in_v[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(7),
	o => \in_v[7]~input_o\);

\current_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~29_sumout\,
	asdata => \in_v[7]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(7));

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( current_val(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( current_val(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\in_v[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(8),
	o => \in_v[8]~input_o\);

\current_val[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~33_sumout\,
	asdata => \in_v[8]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(8));

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( current_val(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( current_val(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\in_v[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(9),
	o => \in_v[9]~input_o\);

\current_val[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~37_sumout\,
	asdata => \in_v[9]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(9));

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( current_val(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( current_val(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\in_v[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(10),
	o => \in_v[10]~input_o\);

\current_val[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~41_sumout\,
	asdata => \in_v[10]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(10));

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( current_val(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( current_val(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\in_v[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(11),
	o => \in_v[11]~input_o\);

\current_val[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~45_sumout\,
	asdata => \in_v[11]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(11));

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( current_val(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( current_val(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\in_v[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(12),
	o => \in_v[12]~input_o\);

\current_val[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~49_sumout\,
	asdata => \in_v[12]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(12));

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( current_val(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( current_val(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\in_v[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(13),
	o => \in_v[13]~input_o\);

\current_val[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~53_sumout\,
	asdata => \in_v[13]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(13));

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( current_val(14) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( current_val(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\in_v[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(14),
	o => \in_v[14]~input_o\);

\current_val[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~57_sumout\,
	asdata => \in_v[14]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(14));

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( current_val(15) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_val(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

\in_v[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(15),
	o => \in_v[15]~input_o\);

\current_val[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~61_sumout\,
	asdata => \in_v[15]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \current_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_val(15));

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


