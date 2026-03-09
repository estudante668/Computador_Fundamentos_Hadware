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

-- DATE "03/09/2026 11:46:36"

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

ENTITY 	RAM8 IS
    PORT (
	clk : IN std_logic;
	in_v : IN std_logic_vector(15 DOWNTO 0);
	load : IN std_logic;
	address : IN std_logic_vector(2 DOWNTO 0);
	out_v : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END RAM8;

ARCHITECTURE structure OF RAM8 IS
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
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \in_v[0]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \distribuidor_load|B~0_combout\ : std_logic;
SIGNAL \reg1|GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \distribuidor_load|F~0_combout\ : std_logic;
SIGNAL \reg5|GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \distribuidor_load|D~0_combout\ : std_logic;
SIGNAL \reg3|GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \distribuidor_load|H~0_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[0]~0_combout\ : std_logic;
SIGNAL \distribuidor_load|C~0_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \distribuidor_load|G~0_combout\ : std_logic;
SIGNAL \reg6|GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \distribuidor_load|A~0_combout\ : std_logic;
SIGNAL \reg0|GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \distribuidor_load|E~0_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:0:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[0]~1_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[0]~2_combout\ : std_logic;
SIGNAL \in_v[1]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[1]~3_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:1:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[1]~4_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[1]~5_combout\ : std_logic;
SIGNAL \in_v[2]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[2]~6_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:2:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[2]~7_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[2]~8_combout\ : std_logic;
SIGNAL \in_v[3]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[3]~9_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:3:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[3]~10_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[3]~11_combout\ : std_logic;
SIGNAL \in_v[4]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[4]~12_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:4:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[4]~13_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[4]~14_combout\ : std_logic;
SIGNAL \in_v[5]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[5]~15_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:5:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[5]~16_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[5]~17_combout\ : std_logic;
SIGNAL \in_v[6]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[6]~18_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:6:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[6]~19_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[6]~20_combout\ : std_logic;
SIGNAL \in_v[7]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[7]~21_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:7:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[7]~22_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[7]~23_combout\ : std_logic;
SIGNAL \in_v[8]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[8]~24_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:8:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[8]~25_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[8]~26_combout\ : std_logic;
SIGNAL \in_v[9]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[9]~27_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:9:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[9]~28_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[9]~29_combout\ : std_logic;
SIGNAL \in_v[10]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[10]~30_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:10:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[10]~31_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[10]~32_combout\ : std_logic;
SIGNAL \in_v[11]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[11]~33_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:11:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[11]~34_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[11]~35_combout\ : std_logic;
SIGNAL \in_v[12]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[12]~36_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:12:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[12]~37_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[12]~38_combout\ : std_logic;
SIGNAL \in_v[13]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[13]~39_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:13:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[13]~40_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[13]~41_combout\ : std_logic;
SIGNAL \in_v[14]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[14]~42_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:14:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[14]~43_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[14]~44_combout\ : std_logic;
SIGNAL \in_v[15]~input_o\ : std_logic;
SIGNAL \reg1|GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg7|GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[15]~45_combout\ : std_logic;
SIGNAL \reg2|GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \reg4|GEN_REG:15:REG_BIT|q_internal~q\ : std_logic;
SIGNAL \seletor_saida|out_v[15]~46_combout\ : std_logic;
SIGNAL \seletor_saida|out_v[15]~47_combout\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[0]~input_o\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[15]~46_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[15]~45_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[14]~43_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[14]~42_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[13]~40_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[13]~39_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[12]~37_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[12]~36_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[11]~34_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[11]~33_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[10]~31_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[10]~30_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[9]~28_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[9]~27_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[8]~25_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[8]~24_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[7]~22_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[7]~21_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[6]~19_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[6]~18_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[5]~16_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[5]~15_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[4]~13_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[4]~12_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[3]~10_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[3]~9_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[2]~7_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[2]~6_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[1]~4_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[1]~3_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[0]~1_combout\ : std_logic;
SIGNAL \reg4|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg0|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg6|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg2|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \seletor_saida|ALT_INV_out_v[0]~0_combout\ : std_logic;
SIGNAL \reg7|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg3|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg5|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ : std_logic;
SIGNAL \reg1|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_in_v <= in_v;
ww_load <= load;
ww_address <= address;
out_v <= ww_out_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_address[1]~input_o\ <= NOT \address[1]~input_o\;
\ALT_INV_address[2]~input_o\ <= NOT \address[2]~input_o\;
\ALT_INV_address[0]~input_o\ <= NOT \address[0]~input_o\;
\seletor_saida|ALT_INV_out_v[15]~46_combout\ <= NOT \seletor_saida|out_v[15]~46_combout\;
\reg4|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:15:REG_BIT|q_internal~q\;
\reg0|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:15:REG_BIT|q_internal~q\;
\reg6|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:15:REG_BIT|q_internal~q\;
\reg2|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:15:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[15]~45_combout\ <= NOT \seletor_saida|out_v[15]~45_combout\;
\reg7|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:15:REG_BIT|q_internal~q\;
\reg3|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:15:REG_BIT|q_internal~q\;
\reg5|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:15:REG_BIT|q_internal~q\;
\reg1|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:15:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[14]~43_combout\ <= NOT \seletor_saida|out_v[14]~43_combout\;
\reg4|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:14:REG_BIT|q_internal~q\;
\reg0|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:14:REG_BIT|q_internal~q\;
\reg6|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:14:REG_BIT|q_internal~q\;
\reg2|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:14:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[14]~42_combout\ <= NOT \seletor_saida|out_v[14]~42_combout\;
\reg7|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:14:REG_BIT|q_internal~q\;
\reg3|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:14:REG_BIT|q_internal~q\;
\reg5|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:14:REG_BIT|q_internal~q\;
\reg1|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:14:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[13]~40_combout\ <= NOT \seletor_saida|out_v[13]~40_combout\;
\reg4|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:13:REG_BIT|q_internal~q\;
\reg0|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:13:REG_BIT|q_internal~q\;
\reg6|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:13:REG_BIT|q_internal~q\;
\reg2|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:13:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[13]~39_combout\ <= NOT \seletor_saida|out_v[13]~39_combout\;
\reg7|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:13:REG_BIT|q_internal~q\;
\reg3|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:13:REG_BIT|q_internal~q\;
\reg5|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:13:REG_BIT|q_internal~q\;
\reg1|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:13:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[12]~37_combout\ <= NOT \seletor_saida|out_v[12]~37_combout\;
\reg4|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:12:REG_BIT|q_internal~q\;
\reg0|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:12:REG_BIT|q_internal~q\;
\reg6|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:12:REG_BIT|q_internal~q\;
\reg2|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:12:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[12]~36_combout\ <= NOT \seletor_saida|out_v[12]~36_combout\;
\reg7|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:12:REG_BIT|q_internal~q\;
\reg3|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:12:REG_BIT|q_internal~q\;
\reg5|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:12:REG_BIT|q_internal~q\;
\reg1|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:12:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[11]~34_combout\ <= NOT \seletor_saida|out_v[11]~34_combout\;
\reg4|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:11:REG_BIT|q_internal~q\;
\reg0|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:11:REG_BIT|q_internal~q\;
\reg6|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:11:REG_BIT|q_internal~q\;
\reg2|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:11:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[11]~33_combout\ <= NOT \seletor_saida|out_v[11]~33_combout\;
\reg7|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:11:REG_BIT|q_internal~q\;
\reg3|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:11:REG_BIT|q_internal~q\;
\reg5|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:11:REG_BIT|q_internal~q\;
\reg1|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:11:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[10]~31_combout\ <= NOT \seletor_saida|out_v[10]~31_combout\;
\reg4|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:10:REG_BIT|q_internal~q\;
\reg0|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:10:REG_BIT|q_internal~q\;
\reg6|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:10:REG_BIT|q_internal~q\;
\reg2|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:10:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[10]~30_combout\ <= NOT \seletor_saida|out_v[10]~30_combout\;
\reg7|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:10:REG_BIT|q_internal~q\;
\reg3|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:10:REG_BIT|q_internal~q\;
\reg5|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:10:REG_BIT|q_internal~q\;
\reg1|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:10:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[9]~28_combout\ <= NOT \seletor_saida|out_v[9]~28_combout\;
\reg4|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:9:REG_BIT|q_internal~q\;
\reg0|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:9:REG_BIT|q_internal~q\;
\reg6|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:9:REG_BIT|q_internal~q\;
\reg2|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:9:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[9]~27_combout\ <= NOT \seletor_saida|out_v[9]~27_combout\;
\reg7|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:9:REG_BIT|q_internal~q\;
\reg3|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:9:REG_BIT|q_internal~q\;
\reg5|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:9:REG_BIT|q_internal~q\;
\reg1|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:9:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[8]~25_combout\ <= NOT \seletor_saida|out_v[8]~25_combout\;
\reg4|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:8:REG_BIT|q_internal~q\;
\reg0|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:8:REG_BIT|q_internal~q\;
\reg6|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:8:REG_BIT|q_internal~q\;
\reg2|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:8:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[8]~24_combout\ <= NOT \seletor_saida|out_v[8]~24_combout\;
\reg7|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:8:REG_BIT|q_internal~q\;
\reg3|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:8:REG_BIT|q_internal~q\;
\reg5|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:8:REG_BIT|q_internal~q\;
\reg1|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:8:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[7]~22_combout\ <= NOT \seletor_saida|out_v[7]~22_combout\;
\reg4|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:7:REG_BIT|q_internal~q\;
\reg0|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:7:REG_BIT|q_internal~q\;
\reg6|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:7:REG_BIT|q_internal~q\;
\reg2|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:7:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[7]~21_combout\ <= NOT \seletor_saida|out_v[7]~21_combout\;
\reg7|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:7:REG_BIT|q_internal~q\;
\reg3|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:7:REG_BIT|q_internal~q\;
\reg5|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:7:REG_BIT|q_internal~q\;
\reg1|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:7:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[6]~19_combout\ <= NOT \seletor_saida|out_v[6]~19_combout\;
\reg4|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:6:REG_BIT|q_internal~q\;
\reg0|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:6:REG_BIT|q_internal~q\;
\reg6|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:6:REG_BIT|q_internal~q\;
\reg2|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:6:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[6]~18_combout\ <= NOT \seletor_saida|out_v[6]~18_combout\;
\reg7|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:6:REG_BIT|q_internal~q\;
\reg3|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:6:REG_BIT|q_internal~q\;
\reg5|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:6:REG_BIT|q_internal~q\;
\reg1|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:6:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[5]~16_combout\ <= NOT \seletor_saida|out_v[5]~16_combout\;
\reg4|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:5:REG_BIT|q_internal~q\;
\reg0|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:5:REG_BIT|q_internal~q\;
\reg6|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:5:REG_BIT|q_internal~q\;
\reg2|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:5:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[5]~15_combout\ <= NOT \seletor_saida|out_v[5]~15_combout\;
\reg7|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:5:REG_BIT|q_internal~q\;
\reg3|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:5:REG_BIT|q_internal~q\;
\reg5|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:5:REG_BIT|q_internal~q\;
\reg1|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:5:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[4]~13_combout\ <= NOT \seletor_saida|out_v[4]~13_combout\;
\reg4|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:4:REG_BIT|q_internal~q\;
\reg0|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:4:REG_BIT|q_internal~q\;
\reg6|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:4:REG_BIT|q_internal~q\;
\reg2|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:4:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[4]~12_combout\ <= NOT \seletor_saida|out_v[4]~12_combout\;
\reg7|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:4:REG_BIT|q_internal~q\;
\reg3|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:4:REG_BIT|q_internal~q\;
\reg5|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:4:REG_BIT|q_internal~q\;
\reg1|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:4:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[3]~10_combout\ <= NOT \seletor_saida|out_v[3]~10_combout\;
\reg4|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:3:REG_BIT|q_internal~q\;
\reg0|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:3:REG_BIT|q_internal~q\;
\reg6|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:3:REG_BIT|q_internal~q\;
\reg2|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:3:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[3]~9_combout\ <= NOT \seletor_saida|out_v[3]~9_combout\;
\reg7|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:3:REG_BIT|q_internal~q\;
\reg3|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:3:REG_BIT|q_internal~q\;
\reg5|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:3:REG_BIT|q_internal~q\;
\reg1|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:3:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[2]~7_combout\ <= NOT \seletor_saida|out_v[2]~7_combout\;
\reg4|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:2:REG_BIT|q_internal~q\;
\reg0|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:2:REG_BIT|q_internal~q\;
\reg6|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:2:REG_BIT|q_internal~q\;
\reg2|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:2:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[2]~6_combout\ <= NOT \seletor_saida|out_v[2]~6_combout\;
\reg7|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:2:REG_BIT|q_internal~q\;
\reg3|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:2:REG_BIT|q_internal~q\;
\reg5|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:2:REG_BIT|q_internal~q\;
\reg1|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:2:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[1]~4_combout\ <= NOT \seletor_saida|out_v[1]~4_combout\;
\reg4|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:1:REG_BIT|q_internal~q\;
\reg0|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:1:REG_BIT|q_internal~q\;
\reg6|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:1:REG_BIT|q_internal~q\;
\reg2|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:1:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[1]~3_combout\ <= NOT \seletor_saida|out_v[1]~3_combout\;
\reg7|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:1:REG_BIT|q_internal~q\;
\reg3|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:1:REG_BIT|q_internal~q\;
\reg5|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:1:REG_BIT|q_internal~q\;
\reg1|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:1:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[0]~1_combout\ <= NOT \seletor_saida|out_v[0]~1_combout\;
\reg4|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg4|GEN_REG:0:REG_BIT|q_internal~q\;
\reg0|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg0|GEN_REG:0:REG_BIT|q_internal~q\;
\reg6|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg6|GEN_REG:0:REG_BIT|q_internal~q\;
\reg2|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg2|GEN_REG:0:REG_BIT|q_internal~q\;
\seletor_saida|ALT_INV_out_v[0]~0_combout\ <= NOT \seletor_saida|out_v[0]~0_combout\;
\reg7|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg7|GEN_REG:0:REG_BIT|q_internal~q\;
\reg3|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg3|GEN_REG:0:REG_BIT|q_internal~q\;
\reg5|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg5|GEN_REG:0:REG_BIT|q_internal~q\;
\reg1|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\ <= NOT \reg1|GEN_REG:0:REG_BIT|q_internal~q\;

\out_v[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seletor_saida|out_v[0]~2_combout\,
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
	i => \seletor_saida|out_v[1]~5_combout\,
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
	i => \seletor_saida|out_v[2]~8_combout\,
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
	i => \seletor_saida|out_v[3]~11_combout\,
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
	i => \seletor_saida|out_v[4]~14_combout\,
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
	i => \seletor_saida|out_v[5]~17_combout\,
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
	i => \seletor_saida|out_v[6]~20_combout\,
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
	i => \seletor_saida|out_v[7]~23_combout\,
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
	i => \seletor_saida|out_v[8]~26_combout\,
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
	i => \seletor_saida|out_v[9]~29_combout\,
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
	i => \seletor_saida|out_v[10]~32_combout\,
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
	i => \seletor_saida|out_v[11]~35_combout\,
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
	i => \seletor_saida|out_v[12]~38_combout\,
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
	i => \seletor_saida|out_v[13]~41_combout\,
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
	i => \seletor_saida|out_v[14]~44_combout\,
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
	i => \seletor_saida|out_v[15]~47_combout\,
	devoe => ww_devoe,
	o => \out_v[15]~output_o\);

\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

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

\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

\distribuidor_load|B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \distribuidor_load|B~0_combout\ = (\address[0]~input_o\ & (!\address[2]~input_o\ & (!\address[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	combout => \distribuidor_load|B~0_combout\);

\reg1|GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:0:REG_BIT|q_internal~q\);

\distribuidor_load|F~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \distribuidor_load|F~0_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ & (!\address[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	combout => \distribuidor_load|F~0_combout\);

\reg5|GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:0:REG_BIT|q_internal~q\);

\distribuidor_load|D~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \distribuidor_load|D~0_combout\ = (\address[0]~input_o\ & (!\address[2]~input_o\ & (\address[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	combout => \distribuidor_load|D~0_combout\);

\reg3|GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:0:REG_BIT|q_internal~q\);

\distribuidor_load|H~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \distribuidor_load|H~0_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ & (\address[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	combout => \distribuidor_load|H~0_combout\);

\reg7|GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:0:REG_BIT|q_internal~q\);

\seletor_saida|out_v[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[0]~0_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:0:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:0:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:0:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:0:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[0]~0_combout\);

\distribuidor_load|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \distribuidor_load|C~0_combout\ = (!\address[0]~input_o\ & (!\address[2]~input_o\ & (\address[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	combout => \distribuidor_load|C~0_combout\);

\reg2|GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:0:REG_BIT|q_internal~q\);

\distribuidor_load|G~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \distribuidor_load|G~0_combout\ = (!\address[0]~input_o\ & (\address[2]~input_o\ & (\address[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	combout => \distribuidor_load|G~0_combout\);

\reg6|GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:0:REG_BIT|q_internal~q\);

\distribuidor_load|A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \distribuidor_load|A~0_combout\ = (!\address[0]~input_o\ & (!\address[2]~input_o\ & (!\address[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	combout => \distribuidor_load|A~0_combout\);

\reg0|GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:0:REG_BIT|q_internal~q\);

\distribuidor_load|E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \distribuidor_load|E~0_combout\ = (!\address[0]~input_o\ & (\address[2]~input_o\ & (!\address[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	combout => \distribuidor_load|E~0_combout\);

\reg4|GEN_REG:0:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[0]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:0:REG_BIT|q_internal~q\);

\seletor_saida|out_v[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[0]~1_combout\ = ( \reg0|GEN_REG:0:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:0:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:0:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:0:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:0:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:0:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:0:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:0:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:0:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:0:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:0:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:0:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:0:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:0:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:0:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:0:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:0:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[0]~1_combout\);

\seletor_saida|out_v[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[0]~2_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[0]~1_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[0]~0_combout\,
	datac => \seletor_saida|ALT_INV_out_v[0]~1_combout\,
	combout => \seletor_saida|out_v[0]~2_combout\);

\in_v[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(1),
	o => \in_v[1]~input_o\);

\reg1|GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:1:REG_BIT|q_internal~q\);

\reg5|GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:1:REG_BIT|q_internal~q\);

\reg3|GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:1:REG_BIT|q_internal~q\);

\reg7|GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:1:REG_BIT|q_internal~q\);

\seletor_saida|out_v[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[1]~3_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:1:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:1:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:1:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:1:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[1]~3_combout\);

\reg2|GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:1:REG_BIT|q_internal~q\);

\reg6|GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:1:REG_BIT|q_internal~q\);

\reg0|GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:1:REG_BIT|q_internal~q\);

\reg4|GEN_REG:1:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[1]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:1:REG_BIT|q_internal~q\);

\seletor_saida|out_v[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[1]~4_combout\ = ( \reg0|GEN_REG:1:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:1:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:1:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:1:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:1:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:1:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:1:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:1:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:1:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:1:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:1:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:1:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:1:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:1:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:1:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:1:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:1:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[1]~4_combout\);

\seletor_saida|out_v[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[1]~5_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[1]~4_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[1]~3_combout\,
	datac => \seletor_saida|ALT_INV_out_v[1]~4_combout\,
	combout => \seletor_saida|out_v[1]~5_combout\);

\in_v[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(2),
	o => \in_v[2]~input_o\);

\reg1|GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:2:REG_BIT|q_internal~q\);

\reg5|GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:2:REG_BIT|q_internal~q\);

\reg3|GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:2:REG_BIT|q_internal~q\);

\reg7|GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:2:REG_BIT|q_internal~q\);

\seletor_saida|out_v[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[2]~6_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:2:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:2:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:2:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:2:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[2]~6_combout\);

\reg2|GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:2:REG_BIT|q_internal~q\);

\reg6|GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:2:REG_BIT|q_internal~q\);

\reg0|GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:2:REG_BIT|q_internal~q\);

\reg4|GEN_REG:2:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[2]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:2:REG_BIT|q_internal~q\);

\seletor_saida|out_v[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[2]~7_combout\ = ( \reg0|GEN_REG:2:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:2:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:2:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:2:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:2:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:2:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:2:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:2:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:2:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:2:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:2:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:2:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:2:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:2:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:2:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:2:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:2:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[2]~7_combout\);

\seletor_saida|out_v[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[2]~8_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[2]~7_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[2]~6_combout\,
	datac => \seletor_saida|ALT_INV_out_v[2]~7_combout\,
	combout => \seletor_saida|out_v[2]~8_combout\);

\in_v[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(3),
	o => \in_v[3]~input_o\);

\reg1|GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:3:REG_BIT|q_internal~q\);

\reg5|GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:3:REG_BIT|q_internal~q\);

\reg3|GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:3:REG_BIT|q_internal~q\);

\reg7|GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:3:REG_BIT|q_internal~q\);

\seletor_saida|out_v[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[3]~9_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:3:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:3:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:3:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:3:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[3]~9_combout\);

\reg2|GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:3:REG_BIT|q_internal~q\);

\reg6|GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:3:REG_BIT|q_internal~q\);

\reg0|GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:3:REG_BIT|q_internal~q\);

\reg4|GEN_REG:3:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[3]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:3:REG_BIT|q_internal~q\);

\seletor_saida|out_v[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[3]~10_combout\ = ( \reg0|GEN_REG:3:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:3:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:3:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:3:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:3:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:3:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:3:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:3:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:3:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:3:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:3:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:3:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:3:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:3:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:3:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:3:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:3:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[3]~10_combout\);

\seletor_saida|out_v[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[3]~11_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[3]~10_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[3]~9_combout\,
	datac => \seletor_saida|ALT_INV_out_v[3]~10_combout\,
	combout => \seletor_saida|out_v[3]~11_combout\);

\in_v[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(4),
	o => \in_v[4]~input_o\);

\reg1|GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:4:REG_BIT|q_internal~q\);

\reg5|GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:4:REG_BIT|q_internal~q\);

\reg3|GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:4:REG_BIT|q_internal~q\);

\reg7|GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:4:REG_BIT|q_internal~q\);

\seletor_saida|out_v[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[4]~12_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:4:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:4:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:4:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:4:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[4]~12_combout\);

\reg2|GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:4:REG_BIT|q_internal~q\);

\reg6|GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:4:REG_BIT|q_internal~q\);

\reg0|GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:4:REG_BIT|q_internal~q\);

\reg4|GEN_REG:4:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[4]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:4:REG_BIT|q_internal~q\);

\seletor_saida|out_v[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[4]~13_combout\ = ( \reg0|GEN_REG:4:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:4:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:4:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:4:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:4:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:4:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:4:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:4:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:4:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:4:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:4:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:4:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:4:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:4:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:4:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:4:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:4:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[4]~13_combout\);

\seletor_saida|out_v[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[4]~14_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[4]~13_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[4]~12_combout\,
	datac => \seletor_saida|ALT_INV_out_v[4]~13_combout\,
	combout => \seletor_saida|out_v[4]~14_combout\);

\in_v[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(5),
	o => \in_v[5]~input_o\);

\reg1|GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:5:REG_BIT|q_internal~q\);

\reg5|GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:5:REG_BIT|q_internal~q\);

\reg3|GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:5:REG_BIT|q_internal~q\);

\reg7|GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:5:REG_BIT|q_internal~q\);

\seletor_saida|out_v[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[5]~15_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:5:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:5:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:5:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:5:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[5]~15_combout\);

\reg2|GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:5:REG_BIT|q_internal~q\);

\reg6|GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:5:REG_BIT|q_internal~q\);

\reg0|GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:5:REG_BIT|q_internal~q\);

\reg4|GEN_REG:5:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[5]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:5:REG_BIT|q_internal~q\);

\seletor_saida|out_v[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[5]~16_combout\ = ( \reg0|GEN_REG:5:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:5:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:5:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:5:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:5:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:5:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:5:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:5:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:5:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:5:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:5:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:5:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:5:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:5:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:5:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:5:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:5:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[5]~16_combout\);

\seletor_saida|out_v[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[5]~17_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[5]~16_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[5]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[5]~15_combout\,
	datac => \seletor_saida|ALT_INV_out_v[5]~16_combout\,
	combout => \seletor_saida|out_v[5]~17_combout\);

\in_v[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(6),
	o => \in_v[6]~input_o\);

\reg1|GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:6:REG_BIT|q_internal~q\);

\reg5|GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:6:REG_BIT|q_internal~q\);

\reg3|GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:6:REG_BIT|q_internal~q\);

\reg7|GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:6:REG_BIT|q_internal~q\);

\seletor_saida|out_v[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[6]~18_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:6:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:6:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:6:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:6:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[6]~18_combout\);

\reg2|GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:6:REG_BIT|q_internal~q\);

\reg6|GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:6:REG_BIT|q_internal~q\);

\reg0|GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:6:REG_BIT|q_internal~q\);

\reg4|GEN_REG:6:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[6]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:6:REG_BIT|q_internal~q\);

\seletor_saida|out_v[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[6]~19_combout\ = ( \reg0|GEN_REG:6:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:6:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:6:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:6:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:6:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:6:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:6:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:6:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:6:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:6:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:6:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:6:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:6:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:6:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:6:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:6:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:6:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[6]~19_combout\);

\seletor_saida|out_v[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[6]~20_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[6]~19_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[6]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[6]~18_combout\,
	datac => \seletor_saida|ALT_INV_out_v[6]~19_combout\,
	combout => \seletor_saida|out_v[6]~20_combout\);

\in_v[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(7),
	o => \in_v[7]~input_o\);

\reg1|GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:7:REG_BIT|q_internal~q\);

\reg5|GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:7:REG_BIT|q_internal~q\);

\reg3|GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:7:REG_BIT|q_internal~q\);

\reg7|GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:7:REG_BIT|q_internal~q\);

\seletor_saida|out_v[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[7]~21_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:7:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:7:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:7:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:7:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[7]~21_combout\);

\reg2|GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:7:REG_BIT|q_internal~q\);

\reg6|GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:7:REG_BIT|q_internal~q\);

\reg0|GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:7:REG_BIT|q_internal~q\);

\reg4|GEN_REG:7:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[7]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:7:REG_BIT|q_internal~q\);

\seletor_saida|out_v[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[7]~22_combout\ = ( \reg0|GEN_REG:7:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:7:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:7:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:7:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:7:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:7:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:7:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:7:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:7:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:7:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:7:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:7:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:7:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:7:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:7:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:7:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:7:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[7]~22_combout\);

\seletor_saida|out_v[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[7]~23_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[7]~22_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[7]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[7]~21_combout\,
	datac => \seletor_saida|ALT_INV_out_v[7]~22_combout\,
	combout => \seletor_saida|out_v[7]~23_combout\);

\in_v[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(8),
	o => \in_v[8]~input_o\);

\reg1|GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:8:REG_BIT|q_internal~q\);

\reg5|GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:8:REG_BIT|q_internal~q\);

\reg3|GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:8:REG_BIT|q_internal~q\);

\reg7|GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:8:REG_BIT|q_internal~q\);

\seletor_saida|out_v[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[8]~24_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:8:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:8:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:8:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:8:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[8]~24_combout\);

\reg2|GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:8:REG_BIT|q_internal~q\);

\reg6|GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:8:REG_BIT|q_internal~q\);

\reg0|GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:8:REG_BIT|q_internal~q\);

\reg4|GEN_REG:8:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[8]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:8:REG_BIT|q_internal~q\);

\seletor_saida|out_v[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[8]~25_combout\ = ( \reg0|GEN_REG:8:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:8:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:8:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:8:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:8:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:8:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:8:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:8:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:8:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:8:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:8:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:8:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:8:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:8:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:8:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:8:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:8:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[8]~25_combout\);

\seletor_saida|out_v[8]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[8]~26_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[8]~25_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[8]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[8]~24_combout\,
	datac => \seletor_saida|ALT_INV_out_v[8]~25_combout\,
	combout => \seletor_saida|out_v[8]~26_combout\);

\in_v[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(9),
	o => \in_v[9]~input_o\);

\reg1|GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:9:REG_BIT|q_internal~q\);

\reg5|GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:9:REG_BIT|q_internal~q\);

\reg3|GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:9:REG_BIT|q_internal~q\);

\reg7|GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:9:REG_BIT|q_internal~q\);

\seletor_saida|out_v[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[9]~27_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:9:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:9:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:9:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:9:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[9]~27_combout\);

\reg2|GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:9:REG_BIT|q_internal~q\);

\reg6|GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:9:REG_BIT|q_internal~q\);

\reg0|GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:9:REG_BIT|q_internal~q\);

\reg4|GEN_REG:9:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[9]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:9:REG_BIT|q_internal~q\);

\seletor_saida|out_v[9]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[9]~28_combout\ = ( \reg0|GEN_REG:9:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:9:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:9:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:9:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:9:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:9:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:9:REG_BIT|q_internal~q\))) # (\address[2]~input_o\ & 
-- ((!\address[1]~input_o\) # ((\reg6|GEN_REG:9:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:9:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:9:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:9:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:9:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:9:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:9:REG_BIT|q_internal~q\ & ( (\address[1]~input_o\ 
-- & ((!\address[2]~input_o\ & (\reg2|GEN_REG:9:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:9:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:9:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[9]~28_combout\);

\seletor_saida|out_v[9]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[9]~29_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[9]~28_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[9]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[9]~27_combout\,
	datac => \seletor_saida|ALT_INV_out_v[9]~28_combout\,
	combout => \seletor_saida|out_v[9]~29_combout\);

\in_v[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(10),
	o => \in_v[10]~input_o\);

\reg1|GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:10:REG_BIT|q_internal~q\);

\reg5|GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:10:REG_BIT|q_internal~q\);

\reg3|GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:10:REG_BIT|q_internal~q\);

\reg7|GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:10:REG_BIT|q_internal~q\);

\seletor_saida|out_v[10]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[10]~30_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:10:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:10:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:10:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:10:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[10]~30_combout\);

\reg2|GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:10:REG_BIT|q_internal~q\);

\reg6|GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:10:REG_BIT|q_internal~q\);

\reg0|GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:10:REG_BIT|q_internal~q\);

\reg4|GEN_REG:10:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[10]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:10:REG_BIT|q_internal~q\);

\seletor_saida|out_v[10]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[10]~31_combout\ = ( \reg0|GEN_REG:10:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:10:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:10:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:10:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:10:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:10:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:10:REG_BIT|q_internal~q\))) # 
-- (\address[2]~input_o\ & ((!\address[1]~input_o\) # ((\reg6|GEN_REG:10:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:10:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:10:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:10:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:10:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:10:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:10:REG_BIT|q_internal~q\ & ( 
-- (\address[1]~input_o\ & ((!\address[2]~input_o\ & (\reg2|GEN_REG:10:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:10:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:10:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[10]~31_combout\);

\seletor_saida|out_v[10]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[10]~32_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[10]~31_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[10]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[10]~30_combout\,
	datac => \seletor_saida|ALT_INV_out_v[10]~31_combout\,
	combout => \seletor_saida|out_v[10]~32_combout\);

\in_v[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(11),
	o => \in_v[11]~input_o\);

\reg1|GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:11:REG_BIT|q_internal~q\);

\reg5|GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:11:REG_BIT|q_internal~q\);

\reg3|GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:11:REG_BIT|q_internal~q\);

\reg7|GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:11:REG_BIT|q_internal~q\);

\seletor_saida|out_v[11]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[11]~33_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:11:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:11:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:11:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:11:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[11]~33_combout\);

\reg2|GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:11:REG_BIT|q_internal~q\);

\reg6|GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:11:REG_BIT|q_internal~q\);

\reg0|GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:11:REG_BIT|q_internal~q\);

\reg4|GEN_REG:11:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[11]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:11:REG_BIT|q_internal~q\);

\seletor_saida|out_v[11]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[11]~34_combout\ = ( \reg0|GEN_REG:11:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:11:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:11:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:11:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:11:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:11:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:11:REG_BIT|q_internal~q\))) # 
-- (\address[2]~input_o\ & ((!\address[1]~input_o\) # ((\reg6|GEN_REG:11:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:11:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:11:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:11:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:11:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:11:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:11:REG_BIT|q_internal~q\ & ( 
-- (\address[1]~input_o\ & ((!\address[2]~input_o\ & (\reg2|GEN_REG:11:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:11:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:11:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[11]~34_combout\);

\seletor_saida|out_v[11]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[11]~35_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[11]~34_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[11]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[11]~33_combout\,
	datac => \seletor_saida|ALT_INV_out_v[11]~34_combout\,
	combout => \seletor_saida|out_v[11]~35_combout\);

\in_v[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(12),
	o => \in_v[12]~input_o\);

\reg1|GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:12:REG_BIT|q_internal~q\);

\reg5|GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:12:REG_BIT|q_internal~q\);

\reg3|GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:12:REG_BIT|q_internal~q\);

\reg7|GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:12:REG_BIT|q_internal~q\);

\seletor_saida|out_v[12]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[12]~36_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:12:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:12:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:12:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:12:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[12]~36_combout\);

\reg2|GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:12:REG_BIT|q_internal~q\);

\reg6|GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:12:REG_BIT|q_internal~q\);

\reg0|GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:12:REG_BIT|q_internal~q\);

\reg4|GEN_REG:12:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[12]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:12:REG_BIT|q_internal~q\);

\seletor_saida|out_v[12]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[12]~37_combout\ = ( \reg0|GEN_REG:12:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:12:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:12:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:12:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:12:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:12:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:12:REG_BIT|q_internal~q\))) # 
-- (\address[2]~input_o\ & ((!\address[1]~input_o\) # ((\reg6|GEN_REG:12:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:12:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:12:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:12:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:12:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:12:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:12:REG_BIT|q_internal~q\ & ( 
-- (\address[1]~input_o\ & ((!\address[2]~input_o\ & (\reg2|GEN_REG:12:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:12:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:12:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[12]~37_combout\);

\seletor_saida|out_v[12]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[12]~38_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[12]~37_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[12]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[12]~36_combout\,
	datac => \seletor_saida|ALT_INV_out_v[12]~37_combout\,
	combout => \seletor_saida|out_v[12]~38_combout\);

\in_v[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(13),
	o => \in_v[13]~input_o\);

\reg1|GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:13:REG_BIT|q_internal~q\);

\reg5|GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:13:REG_BIT|q_internal~q\);

\reg3|GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:13:REG_BIT|q_internal~q\);

\reg7|GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:13:REG_BIT|q_internal~q\);

\seletor_saida|out_v[13]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[13]~39_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:13:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:13:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:13:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:13:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[13]~39_combout\);

\reg2|GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:13:REG_BIT|q_internal~q\);

\reg6|GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:13:REG_BIT|q_internal~q\);

\reg0|GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:13:REG_BIT|q_internal~q\);

\reg4|GEN_REG:13:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[13]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:13:REG_BIT|q_internal~q\);

\seletor_saida|out_v[13]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[13]~40_combout\ = ( \reg0|GEN_REG:13:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:13:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:13:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:13:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:13:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:13:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:13:REG_BIT|q_internal~q\))) # 
-- (\address[2]~input_o\ & ((!\address[1]~input_o\) # ((\reg6|GEN_REG:13:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:13:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:13:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:13:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:13:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:13:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:13:REG_BIT|q_internal~q\ & ( 
-- (\address[1]~input_o\ & ((!\address[2]~input_o\ & (\reg2|GEN_REG:13:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:13:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:13:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[13]~40_combout\);

\seletor_saida|out_v[13]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[13]~41_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[13]~40_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[13]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[13]~39_combout\,
	datac => \seletor_saida|ALT_INV_out_v[13]~40_combout\,
	combout => \seletor_saida|out_v[13]~41_combout\);

\in_v[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(14),
	o => \in_v[14]~input_o\);

\reg1|GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:14:REG_BIT|q_internal~q\);

\reg5|GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:14:REG_BIT|q_internal~q\);

\reg3|GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:14:REG_BIT|q_internal~q\);

\reg7|GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:14:REG_BIT|q_internal~q\);

\seletor_saida|out_v[14]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[14]~42_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:14:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:14:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:14:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:14:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[14]~42_combout\);

\reg2|GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:14:REG_BIT|q_internal~q\);

\reg6|GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:14:REG_BIT|q_internal~q\);

\reg0|GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:14:REG_BIT|q_internal~q\);

\reg4|GEN_REG:14:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[14]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:14:REG_BIT|q_internal~q\);

\seletor_saida|out_v[14]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[14]~43_combout\ = ( \reg0|GEN_REG:14:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:14:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:14:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:14:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:14:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:14:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:14:REG_BIT|q_internal~q\))) # 
-- (\address[2]~input_o\ & ((!\address[1]~input_o\) # ((\reg6|GEN_REG:14:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:14:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:14:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:14:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:14:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:14:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:14:REG_BIT|q_internal~q\ & ( 
-- (\address[1]~input_o\ & ((!\address[2]~input_o\ & (\reg2|GEN_REG:14:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:14:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:14:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[14]~43_combout\);

\seletor_saida|out_v[14]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[14]~44_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[14]~43_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[14]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[14]~42_combout\,
	datac => \seletor_saida|ALT_INV_out_v[14]~43_combout\,
	combout => \seletor_saida|out_v[14]~44_combout\);

\in_v[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_v(15),
	o => \in_v[15]~input_o\);

\reg1|GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \distribuidor_load|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|GEN_REG:15:REG_BIT|q_internal~q\);

\reg5|GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \distribuidor_load|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|GEN_REG:15:REG_BIT|q_internal~q\);

\reg3|GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \distribuidor_load|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|GEN_REG:15:REG_BIT|q_internal~q\);

\reg7|GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \distribuidor_load|H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|GEN_REG:15:REG_BIT|q_internal~q\);

\seletor_saida|out_v[15]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[15]~45_combout\ = ( \address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg7|GEN_REG:15:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[1]~input_o\ & ( \reg3|GEN_REG:15:REG_BIT|q_internal~q\ ) ) ) # ( 
-- \address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg5|GEN_REG:15:REG_BIT|q_internal~q\ ) ) ) # ( !\address[2]~input_o\ & ( !\address[1]~input_o\ & ( \reg1|GEN_REG:15:REG_BIT|q_internal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\,
	datab => \reg5|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\,
	datac => \reg3|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg7|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \seletor_saida|out_v[15]~45_combout\);

\reg2|GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \distribuidor_load|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|GEN_REG:15:REG_BIT|q_internal~q\);

\reg6|GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \distribuidor_load|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|GEN_REG:15:REG_BIT|q_internal~q\);

\reg0|GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \distribuidor_load|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|GEN_REG:15:REG_BIT|q_internal~q\);

\reg4|GEN_REG:15:REG_BIT|q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \in_v[15]~input_o\,
	ena => \distribuidor_load|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|GEN_REG:15:REG_BIT|q_internal~q\);

\seletor_saida|out_v[15]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[15]~46_combout\ = ( \reg0|GEN_REG:15:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:15:REG_BIT|q_internal~q\ & ( (!\address[1]~input_o\) # ((!\address[2]~input_o\ & (\reg2|GEN_REG:15:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & 
-- ((\reg6|GEN_REG:15:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:15:REG_BIT|q_internal~q\ & ( \reg4|GEN_REG:15:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & (\address[1]~input_o\ & (\reg2|GEN_REG:15:REG_BIT|q_internal~q\))) # 
-- (\address[2]~input_o\ & ((!\address[1]~input_o\) # ((\reg6|GEN_REG:15:REG_BIT|q_internal~q\)))) ) ) ) # ( \reg0|GEN_REG:15:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:15:REG_BIT|q_internal~q\ & ( (!\address[2]~input_o\ & ((!\address[1]~input_o\) # 
-- ((\reg2|GEN_REG:15:REG_BIT|q_internal~q\)))) # (\address[2]~input_o\ & (\address[1]~input_o\ & ((\reg6|GEN_REG:15:REG_BIT|q_internal~q\)))) ) ) ) # ( !\reg0|GEN_REG:15:REG_BIT|q_internal~q\ & ( !\reg4|GEN_REG:15:REG_BIT|q_internal~q\ & ( 
-- (\address[1]~input_o\ & ((!\address[2]~input_o\ & (\reg2|GEN_REG:15:REG_BIT|q_internal~q\)) # (\address[2]~input_o\ & ((\reg6|GEN_REG:15:REG_BIT|q_internal~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \reg2|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\,
	datad => \reg6|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\,
	datae => \reg0|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\,
	dataf => \reg4|GEN_REG:15:REG_BIT|ALT_INV_q_internal~q\,
	combout => \seletor_saida|out_v[15]~46_combout\);

\seletor_saida|out_v[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_saida|out_v[15]~47_combout\ = (!\address[0]~input_o\ & ((\seletor_saida|out_v[15]~46_combout\))) # (\address[0]~input_o\ & (\seletor_saida|out_v[15]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \seletor_saida|ALT_INV_out_v[15]~45_combout\,
	datac => \seletor_saida|ALT_INV_out_v[15]~46_combout\,
	combout => \seletor_saida|out_v[15]~47_combout\);

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


