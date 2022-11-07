-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/08/2022 06:43:26"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BinaryCounter IS
    PORT (
	CP : IN std_logic;
	SR : IN std_logic;
	P : IN std_logic_vector(3 DOWNTO 0);
	PE : IN std_logic;
	CEP : IN std_logic;
	CET : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0);
	TC : OUT std_logic
	);
END BinaryCounter;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TC	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SR	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PE	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CP	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEP	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CET	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BinaryCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CP : std_logic;
SIGNAL ww_SR : std_logic;
SIGNAL ww_P : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PE : std_logic;
SIGNAL ww_CEP : std_logic;
SIGNAL ww_CET : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TC : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CP~input_o\ : std_logic;
SIGNAL \CP~inputCLKENA0_outclk\ : std_logic;
SIGNAL \P[0]~input_o\ : std_logic;
SIGNAL \SR~input_o\ : std_logic;
SIGNAL \PE~input_o\ : std_logic;
SIGNAL \temp_output[0]~3_combout\ : std_logic;
SIGNAL \CET~input_o\ : std_logic;
SIGNAL \CEP~input_o\ : std_logic;
SIGNAL \TC~0_combout\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \Q[0]~1_combout\ : std_logic;
SIGNAL \Q[0]~reg0_q\ : std_logic;
SIGNAL \P[1]~input_o\ : std_logic;
SIGNAL \temp_output[1]~0_combout\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \Q[1]~reg0_q\ : std_logic;
SIGNAL \P[2]~input_o\ : std_logic;
SIGNAL \temp_output[2]~1_combout\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q[2]~reg0_q\ : std_logic;
SIGNAL \P[3]~input_o\ : std_logic;
SIGNAL \temp_output[3]~2_combout\ : std_logic;
SIGNAL \Q~4_combout\ : std_logic;
SIGNAL \Q[3]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \TC~reg0_q\ : std_logic;
SIGNAL temp_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_P[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_P[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_P[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_CET~input_o\ : std_logic;
SIGNAL \ALT_INV_CEP~input_o\ : std_logic;
SIGNAL \ALT_INV_P[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_PE~input_o\ : std_logic;
SIGNAL \ALT_INV_SR~input_o\ : std_logic;
SIGNAL \ALT_INV_TC~0_combout\ : std_logic;
SIGNAL ALT_INV_temp_output : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CP <= CP;
ww_SR <= SR;
ww_P <= P;
ww_PE <= PE;
ww_CEP <= CEP;
ww_CET <= CET;
Q <= ww_Q;
TC <= ww_TC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_P[3]~input_o\ <= NOT \P[3]~input_o\;
\ALT_INV_P[2]~input_o\ <= NOT \P[2]~input_o\;
\ALT_INV_P[1]~input_o\ <= NOT \P[1]~input_o\;
\ALT_INV_CET~input_o\ <= NOT \CET~input_o\;
\ALT_INV_CEP~input_o\ <= NOT \CEP~input_o\;
\ALT_INV_P[0]~input_o\ <= NOT \P[0]~input_o\;
\ALT_INV_PE~input_o\ <= NOT \PE~input_o\;
\ALT_INV_SR~input_o\ <= NOT \SR~input_o\;
\ALT_INV_TC~0_combout\ <= NOT \TC~0_combout\;
ALT_INV_temp_output(3) <= NOT temp_output(3);
ALT_INV_temp_output(2) <= NOT temp_output(2);
ALT_INV_temp_output(1) <= NOT temp_output(1);
ALT_INV_temp_output(0) <= NOT temp_output(0);

-- Location: IOOBUF_X89_Y36_N22
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X89_Y35_N45
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X89_Y36_N39
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X89_Y35_N79
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X89_Y35_N96
\TC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TC~reg0_q\,
	devoe => ww_devoe,
	o => ww_TC);

-- Location: IOIBUF_X89_Y35_N61
\CP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CP,
	o => \CP~input_o\);

-- Location: CLKCTRL_G10
\CP~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CP~input_o\,
	outclk => \CP~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y38_N4
\P[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(0),
	o => \P[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\SR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SR,
	o => \SR~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\PE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PE,
	o => \PE~input_o\);

-- Location: LABCELL_X88_Y37_N6
\temp_output[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_output[0]~3_combout\ = !temp_output(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp_output(0),
	combout => \temp_output[0]~3_combout\);

-- Location: IOIBUF_X89_Y37_N21
\CET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CET,
	o => \CET~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\CEP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CEP,
	o => \CEP~input_o\);

-- Location: LABCELL_X88_Y37_N24
\TC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TC~0_combout\ = ( \CEP~input_o\ & ( (\CET~input_o\ & (\PE~input_o\ & \SR~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CET~input_o\,
	datab => \ALT_INV_PE~input_o\,
	datac => \ALT_INV_SR~input_o\,
	datae => \ALT_INV_CEP~input_o\,
	combout => \TC~0_combout\);

-- Location: FF_X88_Y37_N8
\temp_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \temp_output[0]~3_combout\,
	ena => \TC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_output(0));

-- Location: LABCELL_X88_Y37_N42
\Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = ( \PE~input_o\ & ( temp_output(0) & ( \SR~input_o\ ) ) ) # ( !\PE~input_o\ & ( temp_output(0) & ( (\P[0]~input_o\ & \SR~input_o\) ) ) ) # ( !\PE~input_o\ & ( !temp_output(0) & ( (\P[0]~input_o\ & \SR~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P[0]~input_o\,
	datac => \ALT_INV_SR~input_o\,
	datae => \ALT_INV_PE~input_o\,
	dataf => ALT_INV_temp_output(0),
	combout => \Q~0_combout\);

-- Location: LABCELL_X88_Y37_N57
\Q[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[0]~1_combout\ = ( \SR~input_o\ & ( (!\PE~input_o\) # ((\CET~input_o\ & \CEP~input_o\)) ) ) # ( !\SR~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CET~input_o\,
	datac => \ALT_INV_PE~input_o\,
	datad => \ALT_INV_CEP~input_o\,
	dataf => \ALT_INV_SR~input_o\,
	combout => \Q[0]~1_combout\);

-- Location: FF_X88_Y37_N43
\Q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \Q~0_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0]~reg0_q\);

-- Location: IOIBUF_X89_Y38_N38
\P[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(1),
	o => \P[1]~input_o\);

-- Location: LABCELL_X88_Y37_N48
\temp_output[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_output[1]~0_combout\ = ( temp_output(1) & ( temp_output(0) & ( (!\CET~input_o\) # ((!\PE~input_o\) # ((!\CEP~input_o\) # (!\SR~input_o\))) ) ) ) # ( !temp_output(1) & ( temp_output(0) & ( (\CET~input_o\ & (\PE~input_o\ & (\CEP~input_o\ & 
-- \SR~input_o\))) ) ) ) # ( temp_output(1) & ( !temp_output(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CET~input_o\,
	datab => \ALT_INV_PE~input_o\,
	datac => \ALT_INV_CEP~input_o\,
	datad => \ALT_INV_SR~input_o\,
	datae => ALT_INV_temp_output(1),
	dataf => ALT_INV_temp_output(0),
	combout => \temp_output[1]~0_combout\);

-- Location: FF_X88_Y37_N50
\temp_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \temp_output[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_output(1));

-- Location: LABCELL_X88_Y37_N39
\Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = ( temp_output(1) & ( (\SR~input_o\ & ((\P[1]~input_o\) # (\PE~input_o\))) ) ) # ( !temp_output(1) & ( (\SR~input_o\ & (!\PE~input_o\ & \P[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SR~input_o\,
	datab => \ALT_INV_PE~input_o\,
	datac => \ALT_INV_P[1]~input_o\,
	dataf => ALT_INV_temp_output(1),
	combout => \Q~2_combout\);

-- Location: FF_X88_Y37_N40
\Q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \Q~2_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1]~reg0_q\);

-- Location: IOIBUF_X89_Y38_N21
\P[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(2),
	o => \P[2]~input_o\);

-- Location: LABCELL_X88_Y37_N54
\temp_output[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_output[2]~1_combout\ = ( temp_output(0) & ( !temp_output(2) $ (((!\TC~0_combout\) # (!temp_output(1)))) ) ) # ( !temp_output(0) & ( temp_output(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_TC~0_combout\,
	datac => ALT_INV_temp_output(1),
	datad => ALT_INV_temp_output(2),
	dataf => ALT_INV_temp_output(0),
	combout => \temp_output[2]~1_combout\);

-- Location: FF_X88_Y37_N56
\temp_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \temp_output[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_output(2));

-- Location: LABCELL_X88_Y37_N12
\Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = ( \P[2]~input_o\ & ( temp_output(2) & ( \SR~input_o\ ) ) ) # ( !\P[2]~input_o\ & ( temp_output(2) & ( (\PE~input_o\ & \SR~input_o\) ) ) ) # ( \P[2]~input_o\ & ( !temp_output(2) & ( (!\PE~input_o\ & \SR~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PE~input_o\,
	datac => \ALT_INV_SR~input_o\,
	datae => \ALT_INV_P[2]~input_o\,
	dataf => ALT_INV_temp_output(2),
	combout => \Q~3_combout\);

-- Location: FF_X88_Y37_N13
\Q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \Q~3_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2]~reg0_q\);

-- Location: IOIBUF_X89_Y37_N38
\P[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(3),
	o => \P[3]~input_o\);

-- Location: LABCELL_X88_Y37_N21
\temp_output[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_output[3]~2_combout\ = ( temp_output(3) & ( temp_output(1) & ( (!\TC~0_combout\) # ((!temp_output(0)) # (!temp_output(2))) ) ) ) # ( !temp_output(3) & ( temp_output(1) & ( (\TC~0_combout\ & (temp_output(0) & temp_output(2))) ) ) ) # ( temp_output(3) 
-- & ( !temp_output(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TC~0_combout\,
	datac => ALT_INV_temp_output(0),
	datad => ALT_INV_temp_output(2),
	datae => ALT_INV_temp_output(3),
	dataf => ALT_INV_temp_output(1),
	combout => \temp_output[3]~2_combout\);

-- Location: FF_X88_Y37_N23
\temp_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \temp_output[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_output(3));

-- Location: LABCELL_X88_Y37_N33
\Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~4_combout\ = ( temp_output(3) & ( (\SR~input_o\ & ((\P[3]~input_o\) # (\PE~input_o\))) ) ) # ( !temp_output(3) & ( (\SR~input_o\ & (!\PE~input_o\ & \P[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000101010001010100000100000001000001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SR~input_o\,
	datab => \ALT_INV_PE~input_o\,
	datac => \ALT_INV_P[3]~input_o\,
	datae => ALT_INV_temp_output(3),
	combout => \Q~4_combout\);

-- Location: FF_X88_Y37_N34
\Q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \Q~4_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3]~reg0_q\);

-- Location: LABCELL_X88_Y37_N9
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( temp_output(1) & ( (temp_output(3) & (!temp_output(0) & temp_output(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_output(3),
	datac => ALT_INV_temp_output(0),
	datad => ALT_INV_temp_output(2),
	dataf => ALT_INV_temp_output(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X88_Y37_N10
\TC~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputCLKENA0_outclk\,
	d => \Equal0~0_combout\,
	ena => \TC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TC~reg0_q\);

-- Location: LABCELL_X77_Y44_N0
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


