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

-- DATE "03/08/2026 16:38:54"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	x : IN std_logic_vector(15 DOWNTO 0);
	y : IN std_logic_vector(15 DOWNTO 0);
	zx : IN std_logic;
	nx : IN std_logic;
	zy : IN std_logic;
	ny : IN std_logic;
	f : IN std_logic;
	no : IN std_logic;
	q_out : OUT std_logic_vector(15 DOWNTO 0);
	zr : OUT std_logic;
	ng : OUT std_logic
	);
END ALU;

ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_zx : std_logic;
SIGNAL ww_nx : std_logic;
SIGNAL ww_zy : std_logic;
SIGNAL ww_ny : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_no : std_logic;
SIGNAL ww_q_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_zr : std_logic;
SIGNAL ww_ng : std_logic;
SIGNAL \q_out[0]~output_o\ : std_logic;
SIGNAL \q_out[1]~output_o\ : std_logic;
SIGNAL \q_out[2]~output_o\ : std_logic;
SIGNAL \q_out[3]~output_o\ : std_logic;
SIGNAL \q_out[4]~output_o\ : std_logic;
SIGNAL \q_out[5]~output_o\ : std_logic;
SIGNAL \q_out[6]~output_o\ : std_logic;
SIGNAL \q_out[7]~output_o\ : std_logic;
SIGNAL \q_out[8]~output_o\ : std_logic;
SIGNAL \q_out[9]~output_o\ : std_logic;
SIGNAL \q_out[10]~output_o\ : std_logic;
SIGNAL \q_out[11]~output_o\ : std_logic;
SIGNAL \q_out[12]~output_o\ : std_logic;
SIGNAL \q_out[13]~output_o\ : std_logic;
SIGNAL \q_out[14]~output_o\ : std_logic;
SIGNAL \q_out[15]~output_o\ : std_logic;
SIGNAL \zr~output_o\ : std_logic;
SIGNAL \ng~output_o\ : std_logic;
SIGNAL \zy~input_o\ : std_logic;
SIGNAL \ny~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y_processed[0]~0_combout\ : std_logic;
SIGNAL \zx~input_o\ : std_logic;
SIGNAL \nx~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \no~input_o\ : std_logic;
SIGNAL \f_out~0_combout\ : std_logic;
SIGNAL \final_out~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x_processed[1]~0_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \f_out~1_combout\ : std_logic;
SIGNAL \final_out~1_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x_processed[2]~1_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \f_out~2_combout\ : std_logic;
SIGNAL \final_out~2_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x_processed[3]~2_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \f_out~3_combout\ : std_logic;
SIGNAL \final_out~3_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x_processed[4]~3_combout\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \f_out~4_combout\ : std_logic;
SIGNAL \final_out~4_combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x_processed[5]~4_combout\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \f_out~5_combout\ : std_logic;
SIGNAL \final_out~5_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x_processed[6]~5_combout\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \f_out~6_combout\ : std_logic;
SIGNAL \final_out~6_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x_processed[7]~6_combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \f_out~7_combout\ : std_logic;
SIGNAL \final_out~7_combout\ : std_logic;
SIGNAL \x[8]~input_o\ : std_logic;
SIGNAL \x_processed[8]~7_combout\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \final_out~8_combout\ : std_logic;
SIGNAL \final_out~9_combout\ : std_logic;
SIGNAL \x[9]~input_o\ : std_logic;
SIGNAL \x_processed[9]~8_combout\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \final_out~10_combout\ : std_logic;
SIGNAL \final_out~11_combout\ : std_logic;
SIGNAL \x[10]~input_o\ : std_logic;
SIGNAL \x_processed[10]~9_combout\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \final_out~12_combout\ : std_logic;
SIGNAL \final_out~13_combout\ : std_logic;
SIGNAL \x[11]~input_o\ : std_logic;
SIGNAL \x_processed[11]~10_combout\ : std_logic;
SIGNAL \y[11]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \final_out~14_combout\ : std_logic;
SIGNAL \final_out~15_combout\ : std_logic;
SIGNAL \x[12]~input_o\ : std_logic;
SIGNAL \x_processed[12]~11_combout\ : std_logic;
SIGNAL \y[12]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \final_out~16_combout\ : std_logic;
SIGNAL \final_out~17_combout\ : std_logic;
SIGNAL \x[13]~input_o\ : std_logic;
SIGNAL \x_processed[13]~12_combout\ : std_logic;
SIGNAL \y[13]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \final_out~18_combout\ : std_logic;
SIGNAL \final_out~19_combout\ : std_logic;
SIGNAL \x[14]~input_o\ : std_logic;
SIGNAL \x_processed[14]~13_combout\ : std_logic;
SIGNAL \y[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \final_out~20_combout\ : std_logic;
SIGNAL \final_out~21_combout\ : std_logic;
SIGNAL \x[15]~input_o\ : std_logic;
SIGNAL \x_processed[15]~14_combout\ : std_logic;
SIGNAL \y[15]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \final_out~22_combout\ : std_logic;
SIGNAL \final_out~23_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_y[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_nx~input_o\ : std_logic;
SIGNAL \ALT_INV_zx~input_o\ : std_logic;
SIGNAL \ALT_INV_no~input_o\ : std_logic;
SIGNAL \ALT_INV_f~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ny~input_o\ : std_logic;
SIGNAL \ALT_INV_zy~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~22_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[15]~14_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~20_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[14]~13_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~18_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[13]~12_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~16_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[12]~11_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~14_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[11]~10_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~12_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[10]~9_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~10_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[9]~8_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~8_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[8]~7_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~7_combout\ : std_logic;
SIGNAL \ALT_INV_f_out~7_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[7]~6_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~6_combout\ : std_logic;
SIGNAL \ALT_INV_f_out~6_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[6]~5_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~5_combout\ : std_logic;
SIGNAL \ALT_INV_f_out~5_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~4_combout\ : std_logic;
SIGNAL \ALT_INV_f_out~4_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[4]~3_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~3_combout\ : std_logic;
SIGNAL \ALT_INV_f_out~3_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~2_combout\ : std_logic;
SIGNAL \ALT_INV_f_out~2_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_f_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_x_processed[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_final_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_f_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_y_processed[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_zx <= zx;
ww_nx <= nx;
ww_zy <= zy;
ww_ny <= ny;
ww_f <= f;
ww_no <= no;
q_out <= ww_q_out;
zr <= ww_zr;
ng <= ww_ng;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y[15]~input_o\ <= NOT \y[15]~input_o\;
\ALT_INV_x[15]~input_o\ <= NOT \x[15]~input_o\;
\ALT_INV_y[14]~input_o\ <= NOT \y[14]~input_o\;
\ALT_INV_x[14]~input_o\ <= NOT \x[14]~input_o\;
\ALT_INV_y[13]~input_o\ <= NOT \y[13]~input_o\;
\ALT_INV_x[13]~input_o\ <= NOT \x[13]~input_o\;
\ALT_INV_y[12]~input_o\ <= NOT \y[12]~input_o\;
\ALT_INV_x[12]~input_o\ <= NOT \x[12]~input_o\;
\ALT_INV_y[11]~input_o\ <= NOT \y[11]~input_o\;
\ALT_INV_x[11]~input_o\ <= NOT \x[11]~input_o\;
\ALT_INV_y[10]~input_o\ <= NOT \y[10]~input_o\;
\ALT_INV_x[10]~input_o\ <= NOT \x[10]~input_o\;
\ALT_INV_y[9]~input_o\ <= NOT \y[9]~input_o\;
\ALT_INV_x[9]~input_o\ <= NOT \x[9]~input_o\;
\ALT_INV_y[8]~input_o\ <= NOT \y[8]~input_o\;
\ALT_INV_x[8]~input_o\ <= NOT \x[8]~input_o\;
\ALT_INV_y[7]~input_o\ <= NOT \y[7]~input_o\;
\ALT_INV_x[7]~input_o\ <= NOT \x[7]~input_o\;
\ALT_INV_y[6]~input_o\ <= NOT \y[6]~input_o\;
\ALT_INV_x[6]~input_o\ <= NOT \x[6]~input_o\;
\ALT_INV_y[5]~input_o\ <= NOT \y[5]~input_o\;
\ALT_INV_x[5]~input_o\ <= NOT \x[5]~input_o\;
\ALT_INV_y[4]~input_o\ <= NOT \y[4]~input_o\;
\ALT_INV_x[4]~input_o\ <= NOT \x[4]~input_o\;
\ALT_INV_y[3]~input_o\ <= NOT \y[3]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_y[2]~input_o\ <= NOT \y[2]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_nx~input_o\ <= NOT \nx~input_o\;
\ALT_INV_zx~input_o\ <= NOT \zx~input_o\;
\ALT_INV_no~input_o\ <= NOT \no~input_o\;
\ALT_INV_f~input_o\ <= NOT \f~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\ALT_INV_ny~input_o\ <= NOT \ny~input_o\;
\ALT_INV_zy~input_o\ <= NOT \zy~input_o\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_final_out~22_combout\ <= NOT \final_out~22_combout\;
\ALT_INV_x_processed[15]~14_combout\ <= NOT \x_processed[15]~14_combout\;
\ALT_INV_final_out~20_combout\ <= NOT \final_out~20_combout\;
\ALT_INV_x_processed[14]~13_combout\ <= NOT \x_processed[14]~13_combout\;
\ALT_INV_final_out~18_combout\ <= NOT \final_out~18_combout\;
\ALT_INV_x_processed[13]~12_combout\ <= NOT \x_processed[13]~12_combout\;
\ALT_INV_final_out~16_combout\ <= NOT \final_out~16_combout\;
\ALT_INV_x_processed[12]~11_combout\ <= NOT \x_processed[12]~11_combout\;
\ALT_INV_final_out~14_combout\ <= NOT \final_out~14_combout\;
\ALT_INV_x_processed[11]~10_combout\ <= NOT \x_processed[11]~10_combout\;
\ALT_INV_final_out~12_combout\ <= NOT \final_out~12_combout\;
\ALT_INV_x_processed[10]~9_combout\ <= NOT \x_processed[10]~9_combout\;
\ALT_INV_final_out~10_combout\ <= NOT \final_out~10_combout\;
\ALT_INV_x_processed[9]~8_combout\ <= NOT \x_processed[9]~8_combout\;
\ALT_INV_final_out~8_combout\ <= NOT \final_out~8_combout\;
\ALT_INV_x_processed[8]~7_combout\ <= NOT \x_processed[8]~7_combout\;
\ALT_INV_final_out~7_combout\ <= NOT \final_out~7_combout\;
\ALT_INV_f_out~7_combout\ <= NOT \f_out~7_combout\;
\ALT_INV_x_processed[7]~6_combout\ <= NOT \x_processed[7]~6_combout\;
\ALT_INV_final_out~6_combout\ <= NOT \final_out~6_combout\;
\ALT_INV_f_out~6_combout\ <= NOT \f_out~6_combout\;
\ALT_INV_x_processed[6]~5_combout\ <= NOT \x_processed[6]~5_combout\;
\ALT_INV_final_out~5_combout\ <= NOT \final_out~5_combout\;
\ALT_INV_f_out~5_combout\ <= NOT \f_out~5_combout\;
\ALT_INV_x_processed[5]~4_combout\ <= NOT \x_processed[5]~4_combout\;
\ALT_INV_final_out~4_combout\ <= NOT \final_out~4_combout\;
\ALT_INV_f_out~4_combout\ <= NOT \f_out~4_combout\;
\ALT_INV_x_processed[4]~3_combout\ <= NOT \x_processed[4]~3_combout\;
\ALT_INV_final_out~3_combout\ <= NOT \final_out~3_combout\;
\ALT_INV_f_out~3_combout\ <= NOT \f_out~3_combout\;
\ALT_INV_x_processed[3]~2_combout\ <= NOT \x_processed[3]~2_combout\;
\ALT_INV_final_out~2_combout\ <= NOT \final_out~2_combout\;
\ALT_INV_f_out~2_combout\ <= NOT \f_out~2_combout\;
\ALT_INV_x_processed[2]~1_combout\ <= NOT \x_processed[2]~1_combout\;
\ALT_INV_final_out~1_combout\ <= NOT \final_out~1_combout\;
\ALT_INV_f_out~1_combout\ <= NOT \f_out~1_combout\;
\ALT_INV_x_processed[1]~0_combout\ <= NOT \x_processed[1]~0_combout\;
\ALT_INV_final_out~0_combout\ <= NOT \final_out~0_combout\;
\ALT_INV_f_out~0_combout\ <= NOT \f_out~0_combout\;
\ALT_INV_y_processed[0]~0_combout\ <= NOT \y_processed[0]~0_combout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

\q_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~0_combout\,
	devoe => ww_devoe,
	o => \q_out[0]~output_o\);

\q_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~1_combout\,
	devoe => ww_devoe,
	o => \q_out[1]~output_o\);

\q_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~2_combout\,
	devoe => ww_devoe,
	o => \q_out[2]~output_o\);

\q_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~3_combout\,
	devoe => ww_devoe,
	o => \q_out[3]~output_o\);

\q_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~4_combout\,
	devoe => ww_devoe,
	o => \q_out[4]~output_o\);

\q_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~5_combout\,
	devoe => ww_devoe,
	o => \q_out[5]~output_o\);

\q_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~6_combout\,
	devoe => ww_devoe,
	o => \q_out[6]~output_o\);

\q_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~7_combout\,
	devoe => ww_devoe,
	o => \q_out[7]~output_o\);

\q_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~9_combout\,
	devoe => ww_devoe,
	o => \q_out[8]~output_o\);

\q_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~11_combout\,
	devoe => ww_devoe,
	o => \q_out[9]~output_o\);

\q_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~13_combout\,
	devoe => ww_devoe,
	o => \q_out[10]~output_o\);

\q_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~15_combout\,
	devoe => ww_devoe,
	o => \q_out[11]~output_o\);

\q_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~17_combout\,
	devoe => ww_devoe,
	o => \q_out[12]~output_o\);

\q_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~19_combout\,
	devoe => ww_devoe,
	o => \q_out[13]~output_o\);

\q_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~21_combout\,
	devoe => ww_devoe,
	o => \q_out[14]~output_o\);

\q_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~23_combout\,
	devoe => ww_devoe,
	o => \q_out[15]~output_o\);

\zr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~6_combout\,
	devoe => ww_devoe,
	o => \zr~output_o\);

\ng~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_out~23_combout\,
	devoe => ww_devoe,
	o => \ng~output_o\);

\zy~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zy,
	o => \zy~input_o\);

\ny~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ny,
	o => \ny~input_o\);

\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

\y_processed[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_processed[0]~0_combout\ = !\ny~input_o\ $ (((!\y[0]~input_o\) # (\zy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_y[0]~input_o\,
	combout => \y_processed[0]~0_combout\);

\zx~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zx,
	o => \zx~input_o\);

\nx~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nx,
	o => \nx~input_o\);

\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \y_processed[0]~0_combout\ ) + ( !\nx~input_o\ $ (((!\x[0]~input_o\) # (\zx~input_o\))) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \y_processed[0]~0_combout\ ) + ( !\nx~input_o\ $ (((!\x[0]~input_o\) # (\zx~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datac => \ALT_INV_nx~input_o\,
	datad => \ALT_INV_y_processed[0]~0_combout\,
	dataf => \ALT_INV_x[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\f~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f,
	o => \f~input_o\);

\no~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_no,
	o => \no~input_o\);

\f_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_out~0_combout\ = !\nx~input_o\ $ (((!\x[0]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[0]~input_o\,
	combout => \f_out~0_combout\);

\final_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~0_combout\ = ( \f_out~0_combout\ & ( !\no~input_o\ $ (((!\f~input_o\ & (!\y_processed[0]~0_combout\)) # (\f~input_o\ & ((!\Add0~1_sumout\))))) ) ) # ( !\f_out~0_combout\ & ( !\no~input_o\ $ (((!\Add0~1_sumout\) # (!\f~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100010100111010110000000011111111000101001110101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y_processed[0]~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_f~input_o\,
	datad => \ALT_INV_no~input_o\,
	datae => \ALT_INV_f_out~0_combout\,
	combout => \final_out~0_combout\);

\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

\x_processed[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[1]~0_combout\ = !\nx~input_o\ $ (((!\x[1]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[1]~input_o\,
	combout => \x_processed[1]~0_combout\);

\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \x_processed[1]~0_combout\ ) + ( !\ny~input_o\ $ (((!\y[1]~input_o\) # (\zy~input_o\))) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \x_processed[1]~0_combout\ ) + ( !\ny~input_o\ $ (((!\y[1]~input_o\) # (\zy~input_o\))) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_zy~input_o\,
	datac => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[1]~0_combout\,
	dataf => \ALT_INV_y[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\f_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_out~1_combout\ = !\ny~input_o\ $ (((!\y[1]~input_o\) # (\zy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_y[1]~input_o\,
	combout => \f_out~1_combout\);

\final_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~1_combout\ = ( \f_out~1_combout\ & ( !\no~input_o\ $ (((!\f~input_o\ & (!\x_processed[1]~0_combout\)) # (\f~input_o\ & ((!\Add0~5_sumout\))))) ) ) # ( !\f_out~1_combout\ & ( !\no~input_o\ $ (((!\f~input_o\) # (!\Add0~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001110010110110000110011011001100011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_x_processed[1]~0_combout\,
	datad => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_f_out~1_combout\,
	combout => \final_out~1_combout\);

\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

\x_processed[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[2]~1_combout\ = !\nx~input_o\ $ (((!\x[2]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[2]~input_o\,
	combout => \x_processed[2]~1_combout\);

\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \x_processed[2]~1_combout\ ) + ( !\ny~input_o\ $ (((!\y[2]~input_o\) # (\zy~input_o\))) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \x_processed[2]~1_combout\ ) + ( !\ny~input_o\ $ (((!\y[2]~input_o\) # (\zy~input_o\))) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[2]~1_combout\,
	dataf => \ALT_INV_y[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\f_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_out~2_combout\ = !\ny~input_o\ $ (((!\y[2]~input_o\) # (\zy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_y[2]~input_o\,
	combout => \f_out~2_combout\);

\final_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~2_combout\ = ( \f_out~2_combout\ & ( !\no~input_o\ $ (((!\f~input_o\ & (!\x_processed[2]~1_combout\)) # (\f~input_o\ & ((!\Add0~9_sumout\))))) ) ) # ( !\f_out~2_combout\ & ( !\no~input_o\ $ (((!\f~input_o\) # (!\Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001110010110110000110011011001100011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_x_processed[2]~1_combout\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_f_out~2_combout\,
	combout => \final_out~2_combout\);

\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

\x_processed[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[3]~2_combout\ = !\nx~input_o\ $ (((!\x[3]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	combout => \x_processed[3]~2_combout\);

\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \x_processed[3]~2_combout\ ) + ( !\ny~input_o\ $ (((!\y[3]~input_o\) # (\zy~input_o\))) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \x_processed[3]~2_combout\ ) + ( !\ny~input_o\ $ (((!\y[3]~input_o\) # (\zy~input_o\))) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[3]~2_combout\,
	dataf => \ALT_INV_y[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\f_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_out~3_combout\ = !\ny~input_o\ $ (((!\y[3]~input_o\) # (\zy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_y[3]~input_o\,
	combout => \f_out~3_combout\);

\final_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~3_combout\ = ( \f_out~3_combout\ & ( !\no~input_o\ $ (((!\f~input_o\ & (!\x_processed[3]~2_combout\)) # (\f~input_o\ & ((!\Add0~13_sumout\))))) ) ) # ( !\f_out~3_combout\ & ( !\no~input_o\ $ (((!\f~input_o\) # (!\Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001110010110110000110011011001100011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_x_processed[3]~2_combout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_f_out~3_combout\,
	combout => \final_out~3_combout\);

\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

\x_processed[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[4]~3_combout\ = !\nx~input_o\ $ (((!\x[4]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[4]~input_o\,
	combout => \x_processed[4]~3_combout\);

\y[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \x_processed[4]~3_combout\ ) + ( !\ny~input_o\ $ (((!\y[4]~input_o\) # (\zy~input_o\))) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \x_processed[4]~3_combout\ ) + ( !\ny~input_o\ $ (((!\y[4]~input_o\) # (\zy~input_o\))) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[4]~3_combout\,
	dataf => \ALT_INV_y[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\f_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_out~4_combout\ = !\ny~input_o\ $ (((!\y[4]~input_o\) # (\zy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_y[4]~input_o\,
	combout => \f_out~4_combout\);

\final_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~4_combout\ = ( \f_out~4_combout\ & ( !\no~input_o\ $ (((!\f~input_o\ & (!\x_processed[4]~3_combout\)) # (\f~input_o\ & ((!\Add0~17_sumout\))))) ) ) # ( !\f_out~4_combout\ & ( !\no~input_o\ $ (((!\f~input_o\) # (!\Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001110010110110000110011011001100011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_x_processed[4]~3_combout\,
	datad => \ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_f_out~4_combout\,
	combout => \final_out~4_combout\);

\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

\x_processed[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[5]~4_combout\ = !\nx~input_o\ $ (((!\x[5]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[5]~input_o\,
	combout => \x_processed[5]~4_combout\);

\y[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \x_processed[5]~4_combout\ ) + ( !\ny~input_o\ $ (((!\y[5]~input_o\) # (\zy~input_o\))) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \x_processed[5]~4_combout\ ) + ( !\ny~input_o\ $ (((!\y[5]~input_o\) # (\zy~input_o\))) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[5]~4_combout\,
	dataf => \ALT_INV_y[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\f_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_out~5_combout\ = !\ny~input_o\ $ (((!\y[5]~input_o\) # (\zy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_y[5]~input_o\,
	combout => \f_out~5_combout\);

\final_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~5_combout\ = ( \f_out~5_combout\ & ( !\no~input_o\ $ (((!\f~input_o\ & (!\x_processed[5]~4_combout\)) # (\f~input_o\ & ((!\Add0~21_sumout\))))) ) ) # ( !\f_out~5_combout\ & ( !\no~input_o\ $ (((!\f~input_o\) # (!\Add0~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001110010110110000110011011001100011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_x_processed[5]~4_combout\,
	datad => \ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_f_out~5_combout\,
	combout => \final_out~5_combout\);

\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

\x_processed[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[6]~5_combout\ = !\nx~input_o\ $ (((!\x[6]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[6]~input_o\,
	combout => \x_processed[6]~5_combout\);

\y[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \x_processed[6]~5_combout\ ) + ( !\ny~input_o\ $ (((!\y[6]~input_o\) # (\zy~input_o\))) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \x_processed[6]~5_combout\ ) + ( !\ny~input_o\ $ (((!\y[6]~input_o\) # (\zy~input_o\))) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[6]~5_combout\,
	dataf => \ALT_INV_y[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\f_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_out~6_combout\ = !\ny~input_o\ $ (((!\y[6]~input_o\) # (\zy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_y[6]~input_o\,
	combout => \f_out~6_combout\);

\final_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~6_combout\ = ( \f_out~6_combout\ & ( !\no~input_o\ $ (((!\f~input_o\ & (!\x_processed[6]~5_combout\)) # (\f~input_o\ & ((!\Add0~25_sumout\))))) ) ) # ( !\f_out~6_combout\ & ( !\no~input_o\ $ (((!\f~input_o\) # (!\Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001110010110110000110011011001100011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_x_processed[6]~5_combout\,
	datad => \ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_f_out~6_combout\,
	combout => \final_out~6_combout\);

\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

\x_processed[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[7]~6_combout\ = !\nx~input_o\ $ (((!\x[7]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[7]~input_o\,
	combout => \x_processed[7]~6_combout\);

\y[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \x_processed[7]~6_combout\ ) + ( !\ny~input_o\ $ (((!\y[7]~input_o\) # (\zy~input_o\))) ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \x_processed[7]~6_combout\ ) + ( !\ny~input_o\ $ (((!\y[7]~input_o\) # (\zy~input_o\))) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[7]~6_combout\,
	dataf => \ALT_INV_y[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\f_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_out~7_combout\ = !\ny~input_o\ $ (((!\y[7]~input_o\) # (\zy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_y[7]~input_o\,
	combout => \f_out~7_combout\);

\final_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~7_combout\ = ( \f_out~7_combout\ & ( !\no~input_o\ $ (((!\f~input_o\ & (!\x_processed[7]~6_combout\)) # (\f~input_o\ & ((!\Add0~29_sumout\))))) ) ) # ( !\f_out~7_combout\ & ( !\no~input_o\ $ (((!\f~input_o\) # (!\Add0~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001110010110110000110011011001100011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_x_processed[7]~6_combout\,
	datad => \ALT_INV_Add0~29_sumout\,
	datae => \ALT_INV_f_out~7_combout\,
	combout => \final_out~7_combout\);

\x[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(8),
	o => \x[8]~input_o\);

\x_processed[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[8]~7_combout\ = !\nx~input_o\ $ (((!\x[8]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[8]~input_o\,
	combout => \x_processed[8]~7_combout\);

\y[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \x_processed[8]~7_combout\ ) + ( !\ny~input_o\ $ (((!\y[8]~input_o\) # (\zy~input_o\))) ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \x_processed[8]~7_combout\ ) + ( !\ny~input_o\ $ (((!\y[8]~input_o\) # (\zy~input_o\))) ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[8]~7_combout\,
	dataf => \ALT_INV_y[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\final_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~8_combout\ = ( \y[8]~input_o\ & ( !\no~input_o\ $ (((!\x_processed[8]~7_combout\) # (!\zy~input_o\ $ (!\ny~input_o\)))) ) ) # ( !\y[8]~input_o\ & ( !\no~input_o\ $ (((!\ny~input_o\) # (!\x_processed[8]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011111001011000001111001111000000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_no~input_o\,
	datad => \ALT_INV_x_processed[8]~7_combout\,
	datae => \ALT_INV_y[8]~input_o\,
	combout => \final_out~8_combout\);

\final_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~9_combout\ = (!\f~input_o\ & (((\final_out~8_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((!\Add0~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_final_out~8_combout\,
	combout => \final_out~9_combout\);

\x[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(9),
	o => \x[9]~input_o\);

\x_processed[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[9]~8_combout\ = !\nx~input_o\ $ (((!\x[9]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[9]~input_o\,
	combout => \x_processed[9]~8_combout\);

\y[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \x_processed[9]~8_combout\ ) + ( !\ny~input_o\ $ (((!\y[9]~input_o\) # (\zy~input_o\))) ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \x_processed[9]~8_combout\ ) + ( !\ny~input_o\ $ (((!\y[9]~input_o\) # (\zy~input_o\))) ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[9]~8_combout\,
	dataf => \ALT_INV_y[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\final_out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~10_combout\ = ( \y[9]~input_o\ & ( !\no~input_o\ $ (((!\x_processed[9]~8_combout\) # (!\zy~input_o\ $ (!\ny~input_o\)))) ) ) # ( !\y[9]~input_o\ & ( !\no~input_o\ $ (((!\ny~input_o\) # (!\x_processed[9]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011111001011000001111001111000000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_no~input_o\,
	datad => \ALT_INV_x_processed[9]~8_combout\,
	datae => \ALT_INV_y[9]~input_o\,
	combout => \final_out~10_combout\);

\final_out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~11_combout\ = (!\f~input_o\ & (((\final_out~10_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((!\Add0~37_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~37_sumout\,
	datad => \ALT_INV_final_out~10_combout\,
	combout => \final_out~11_combout\);

\x[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(10),
	o => \x[10]~input_o\);

\x_processed[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[10]~9_combout\ = !\nx~input_o\ $ (((!\x[10]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[10]~input_o\,
	combout => \x_processed[10]~9_combout\);

\y[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \x_processed[10]~9_combout\ ) + ( !\ny~input_o\ $ (((!\y[10]~input_o\) # (\zy~input_o\))) ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \x_processed[10]~9_combout\ ) + ( !\ny~input_o\ $ (((!\y[10]~input_o\) # (\zy~input_o\))) ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[10]~9_combout\,
	dataf => \ALT_INV_y[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\final_out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~12_combout\ = ( \y[10]~input_o\ & ( !\no~input_o\ $ (((!\x_processed[10]~9_combout\) # (!\zy~input_o\ $ (!\ny~input_o\)))) ) ) # ( !\y[10]~input_o\ & ( !\no~input_o\ $ (((!\ny~input_o\) # (!\x_processed[10]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011111001011000001111001111000000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_no~input_o\,
	datad => \ALT_INV_x_processed[10]~9_combout\,
	datae => \ALT_INV_y[10]~input_o\,
	combout => \final_out~12_combout\);

\final_out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~13_combout\ = (!\f~input_o\ & (((\final_out~12_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((!\Add0~41_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_final_out~12_combout\,
	combout => \final_out~13_combout\);

\x[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(11),
	o => \x[11]~input_o\);

\x_processed[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[11]~10_combout\ = !\nx~input_o\ $ (((!\x[11]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[11]~input_o\,
	combout => \x_processed[11]~10_combout\);

\y[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(11),
	o => \y[11]~input_o\);

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \x_processed[11]~10_combout\ ) + ( !\ny~input_o\ $ (((!\y[11]~input_o\) # (\zy~input_o\))) ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \x_processed[11]~10_combout\ ) + ( !\ny~input_o\ $ (((!\y[11]~input_o\) # (\zy~input_o\))) ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[11]~10_combout\,
	dataf => \ALT_INV_y[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\final_out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~14_combout\ = ( \y[11]~input_o\ & ( !\no~input_o\ $ (((!\x_processed[11]~10_combout\) # (!\zy~input_o\ $ (!\ny~input_o\)))) ) ) # ( !\y[11]~input_o\ & ( !\no~input_o\ $ (((!\ny~input_o\) # (!\x_processed[11]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011111001011000001111001111000000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_no~input_o\,
	datad => \ALT_INV_x_processed[11]~10_combout\,
	datae => \ALT_INV_y[11]~input_o\,
	combout => \final_out~14_combout\);

\final_out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~15_combout\ = (!\f~input_o\ & (((\final_out~14_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((!\Add0~45_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_final_out~14_combout\,
	combout => \final_out~15_combout\);

\x[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(12),
	o => \x[12]~input_o\);

\x_processed[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[12]~11_combout\ = !\nx~input_o\ $ (((!\x[12]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[12]~input_o\,
	combout => \x_processed[12]~11_combout\);

\y[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(12),
	o => \y[12]~input_o\);

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \x_processed[12]~11_combout\ ) + ( !\ny~input_o\ $ (((!\y[12]~input_o\) # (\zy~input_o\))) ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \x_processed[12]~11_combout\ ) + ( !\ny~input_o\ $ (((!\y[12]~input_o\) # (\zy~input_o\))) ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[12]~11_combout\,
	dataf => \ALT_INV_y[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\final_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~16_combout\ = ( \y[12]~input_o\ & ( !\no~input_o\ $ (((!\x_processed[12]~11_combout\) # (!\zy~input_o\ $ (!\ny~input_o\)))) ) ) # ( !\y[12]~input_o\ & ( !\no~input_o\ $ (((!\ny~input_o\) # (!\x_processed[12]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011111001011000001111001111000000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_no~input_o\,
	datad => \ALT_INV_x_processed[12]~11_combout\,
	datae => \ALT_INV_y[12]~input_o\,
	combout => \final_out~16_combout\);

\final_out~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~17_combout\ = (!\f~input_o\ & (((\final_out~16_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((!\Add0~49_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~49_sumout\,
	datad => \ALT_INV_final_out~16_combout\,
	combout => \final_out~17_combout\);

\x[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(13),
	o => \x[13]~input_o\);

\x_processed[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[13]~12_combout\ = !\nx~input_o\ $ (((!\x[13]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[13]~input_o\,
	combout => \x_processed[13]~12_combout\);

\y[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(13),
	o => \y[13]~input_o\);

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \x_processed[13]~12_combout\ ) + ( !\ny~input_o\ $ (((!\y[13]~input_o\) # (\zy~input_o\))) ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \x_processed[13]~12_combout\ ) + ( !\ny~input_o\ $ (((!\y[13]~input_o\) # (\zy~input_o\))) ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[13]~12_combout\,
	dataf => \ALT_INV_y[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\final_out~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~18_combout\ = ( \y[13]~input_o\ & ( !\no~input_o\ $ (((!\x_processed[13]~12_combout\) # (!\zy~input_o\ $ (!\ny~input_o\)))) ) ) # ( !\y[13]~input_o\ & ( !\no~input_o\ $ (((!\ny~input_o\) # (!\x_processed[13]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011111001011000001111001111000000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_no~input_o\,
	datad => \ALT_INV_x_processed[13]~12_combout\,
	datae => \ALT_INV_y[13]~input_o\,
	combout => \final_out~18_combout\);

\final_out~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~19_combout\ = (!\f~input_o\ & (((\final_out~18_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((!\Add0~53_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~53_sumout\,
	datad => \ALT_INV_final_out~18_combout\,
	combout => \final_out~19_combout\);

\x[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(14),
	o => \x[14]~input_o\);

\x_processed[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[14]~13_combout\ = !\nx~input_o\ $ (((!\x[14]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[14]~input_o\,
	combout => \x_processed[14]~13_combout\);

\y[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(14),
	o => \y[14]~input_o\);

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \x_processed[14]~13_combout\ ) + ( !\ny~input_o\ $ (((!\y[14]~input_o\) # (\zy~input_o\))) ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \x_processed[14]~13_combout\ ) + ( !\ny~input_o\ $ (((!\y[14]~input_o\) # (\zy~input_o\))) ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[14]~13_combout\,
	dataf => \ALT_INV_y[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\final_out~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~20_combout\ = ( \y[14]~input_o\ & ( !\no~input_o\ $ (((!\x_processed[14]~13_combout\) # (!\zy~input_o\ $ (!\ny~input_o\)))) ) ) # ( !\y[14]~input_o\ & ( !\no~input_o\ $ (((!\ny~input_o\) # (!\x_processed[14]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011111001011000001111001111000000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_no~input_o\,
	datad => \ALT_INV_x_processed[14]~13_combout\,
	datae => \ALT_INV_y[14]~input_o\,
	combout => \final_out~20_combout\);

\final_out~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~21_combout\ = (!\f~input_o\ & (((\final_out~20_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((!\Add0~57_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_final_out~20_combout\,
	combout => \final_out~21_combout\);

\x[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(15),
	o => \x[15]~input_o\);

\x_processed[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_processed[15]~14_combout\ = !\nx~input_o\ $ (((!\x[15]~input_o\) # (\zx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zx~input_o\,
	datab => \ALT_INV_nx~input_o\,
	datac => \ALT_INV_x[15]~input_o\,
	combout => \x_processed[15]~14_combout\);

\y[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(15),
	o => \y[15]~input_o\);

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \x_processed[15]~14_combout\ ) + ( !\ny~input_o\ $ (((!\y[15]~input_o\) # (\zy~input_o\))) ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datad => \ALT_INV_x_processed[15]~14_combout\,
	dataf => \ALT_INV_y[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

\final_out~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~22_combout\ = ( \y[15]~input_o\ & ( !\no~input_o\ $ (((!\x_processed[15]~14_combout\) # (!\zy~input_o\ $ (!\ny~input_o\)))) ) ) # ( !\y[15]~input_o\ & ( !\no~input_o\ $ (((!\ny~input_o\) # (!\x_processed[15]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011111001011000001111001111000000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zy~input_o\,
	datab => \ALT_INV_ny~input_o\,
	datac => \ALT_INV_no~input_o\,
	datad => \ALT_INV_x_processed[15]~14_combout\,
	datae => \ALT_INV_y[15]~input_o\,
	combout => \final_out~22_combout\);

\final_out~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_out~23_combout\ = (!\f~input_o\ & (((\final_out~22_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((!\Add0~61_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~61_sumout\,
	datad => \ALT_INV_final_out~22_combout\,
	combout => \final_out~23_combout\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \Add0~37_sumout\ & ( \final_out~10_combout\ & ( (\f~input_o\ & (\no~input_o\ & \Add0~33_sumout\)) ) ) ) # ( !\Add0~37_sumout\ & ( \final_out~10_combout\ & ( (\f~input_o\ & (!\no~input_o\ & !\Add0~33_sumout\)) ) ) ) # ( 
-- \Add0~37_sumout\ & ( !\final_out~10_combout\ & ( (!\f~input_o\ & (((!\final_out~8_combout\)))) # (\f~input_o\ & (\no~input_o\ & (\Add0~33_sumout\))) ) ) ) # ( !\Add0~37_sumout\ & ( !\final_out~10_combout\ & ( (!\f~input_o\ & (((!\final_out~8_combout\)))) 
-- # (\f~input_o\ & (!\no~input_o\ & (!\Add0~33_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000101010110000000101000000010000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_final_out~8_combout\,
	datae => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_final_out~10_combout\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\final_out~0_combout\ & ( !\final_out~1_combout\ & ( (!\f~input_o\ & (((!\final_out~12_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((\Add0~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101101000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_final_out~12_combout\,
	datae => \ALT_INV_final_out~0_combout\,
	dataf => \ALT_INV_final_out~1_combout\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Add0~49_sumout\ & ( \final_out~16_combout\ & ( (\f~input_o\ & (\no~input_o\ & \Add0~45_sumout\)) ) ) ) # ( !\Add0~49_sumout\ & ( \final_out~16_combout\ & ( (\f~input_o\ & (!\no~input_o\ & !\Add0~45_sumout\)) ) ) ) # ( 
-- \Add0~49_sumout\ & ( !\final_out~16_combout\ & ( (!\f~input_o\ & (((!\final_out~14_combout\)))) # (\f~input_o\ & (\no~input_o\ & (\Add0~45_sumout\))) ) ) ) # ( !\Add0~49_sumout\ & ( !\final_out~16_combout\ & ( (!\f~input_o\ & 
-- (((!\final_out~14_combout\)))) # (\f~input_o\ & (!\no~input_o\ & (!\Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000101010110000000101000000010000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_final_out~14_combout\,
	datae => \ALT_INV_Add0~49_sumout\,
	dataf => \ALT_INV_final_out~16_combout\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\final_out~2_combout\ & ( !\final_out~3_combout\ & ( (!\f~input_o\ & (((!\final_out~18_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((\Add0~53_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101101000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~53_sumout\,
	datad => \ALT_INV_final_out~18_combout\,
	datae => \ALT_INV_final_out~2_combout\,
	dataf => \ALT_INV_final_out~3_combout\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\final_out~4_combout\ & ( !\final_out~5_combout\ & ( (!\f~input_o\ & (((!\final_out~20_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((\Add0~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101101000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_final_out~20_combout\,
	datae => \ALT_INV_final_out~4_combout\,
	dataf => \ALT_INV_final_out~5_combout\,
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\final_out~6_combout\ & ( !\final_out~7_combout\ & ( (!\f~input_o\ & (((!\final_out~22_combout\)))) # (\f~input_o\ & (!\no~input_o\ $ ((\Add0~61_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101101000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f~input_o\,
	datab => \ALT_INV_no~input_o\,
	datac => \ALT_INV_Add0~61_sumout\,
	datad => \ALT_INV_final_out~22_combout\,
	datae => \ALT_INV_final_out~6_combout\,
	dataf => \ALT_INV_final_out~7_combout\,
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

ww_q_out(0) <= \q_out[0]~output_o\;

ww_q_out(1) <= \q_out[1]~output_o\;

ww_q_out(2) <= \q_out[2]~output_o\;

ww_q_out(3) <= \q_out[3]~output_o\;

ww_q_out(4) <= \q_out[4]~output_o\;

ww_q_out(5) <= \q_out[5]~output_o\;

ww_q_out(6) <= \q_out[6]~output_o\;

ww_q_out(7) <= \q_out[7]~output_o\;

ww_q_out(8) <= \q_out[8]~output_o\;

ww_q_out(9) <= \q_out[9]~output_o\;

ww_q_out(10) <= \q_out[10]~output_o\;

ww_q_out(11) <= \q_out[11]~output_o\;

ww_q_out(12) <= \q_out[12]~output_o\;

ww_q_out(13) <= \q_out[13]~output_o\;

ww_q_out(14) <= \q_out[14]~output_o\;

ww_q_out(15) <= \q_out[15]~output_o\;

ww_zr <= \zr~output_o\;

ww_ng <= \ng~output_o\;
END structure;


