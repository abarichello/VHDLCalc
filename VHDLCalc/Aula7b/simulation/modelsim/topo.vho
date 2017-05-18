-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "05/18/2017 14:34:13"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	topo IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END topo;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \L0|Add0~109_sumout\ : std_logic;
SIGNAL \L0|Add0~110\ : std_logic;
SIGNAL \L0|Add0~105_sumout\ : std_logic;
SIGNAL \L0|Add0~106\ : std_logic;
SIGNAL \L0|Add0~101_sumout\ : std_logic;
SIGNAL \L0|Add0~102\ : std_logic;
SIGNAL \L0|Add0~97_sumout\ : std_logic;
SIGNAL \L0|Add0~98\ : std_logic;
SIGNAL \L0|Add0~93_sumout\ : std_logic;
SIGNAL \L0|Add0~94\ : std_logic;
SIGNAL \L0|Add0~89_sumout\ : std_logic;
SIGNAL \L0|Add0~90\ : std_logic;
SIGNAL \L0|Add0~85_sumout\ : std_logic;
SIGNAL \L0|Add0~86\ : std_logic;
SIGNAL \L0|Add0~81_sumout\ : std_logic;
SIGNAL \L0|Add0~82\ : std_logic;
SIGNAL \L0|Add0~77_sumout\ : std_logic;
SIGNAL \L0|Add0~78\ : std_logic;
SIGNAL \L0|Add0~9_sumout\ : std_logic;
SIGNAL \L0|Add0~10\ : std_logic;
SIGNAL \L0|Add0~13_sumout\ : std_logic;
SIGNAL \L0|Add0~14\ : std_logic;
SIGNAL \L0|Add0~17_sumout\ : std_logic;
SIGNAL \L0|Add0~18\ : std_logic;
SIGNAL \L0|Add0~21_sumout\ : std_logic;
SIGNAL \L0|Add0~22\ : std_logic;
SIGNAL \L0|Add0~25_sumout\ : std_logic;
SIGNAL \L0|Add0~26\ : std_logic;
SIGNAL \L0|Add0~29_sumout\ : std_logic;
SIGNAL \L0|Add0~30\ : std_logic;
SIGNAL \L0|Add0~33_sumout\ : std_logic;
SIGNAL \L0|Add0~34\ : std_logic;
SIGNAL \L0|Add0~37_sumout\ : std_logic;
SIGNAL \L0|Add0~38\ : std_logic;
SIGNAL \L0|Add0~41_sumout\ : std_logic;
SIGNAL \L0|Add0~42\ : std_logic;
SIGNAL \L0|Add0~45_sumout\ : std_logic;
SIGNAL \L0|Equal0~1_combout\ : std_logic;
SIGNAL \L0|Add0~46\ : std_logic;
SIGNAL \L0|Add0~1_sumout\ : std_logic;
SIGNAL \L0|Add0~2\ : std_logic;
SIGNAL \L0|Add0~49_sumout\ : std_logic;
SIGNAL \L0|Add0~50\ : std_logic;
SIGNAL \L0|Add0~53_sumout\ : std_logic;
SIGNAL \L0|Add0~54\ : std_logic;
SIGNAL \L0|Add0~57_sumout\ : std_logic;
SIGNAL \L0|Add0~58\ : std_logic;
SIGNAL \L0|Add0~5_sumout\ : std_logic;
SIGNAL \L0|Equal0~0_combout\ : std_logic;
SIGNAL \L0|Add0~6\ : std_logic;
SIGNAL \L0|Add0~61_sumout\ : std_logic;
SIGNAL \L0|Add0~62\ : std_logic;
SIGNAL \L0|Add0~65_sumout\ : std_logic;
SIGNAL \L0|Add0~66\ : std_logic;
SIGNAL \L0|Add0~69_sumout\ : std_logic;
SIGNAL \L0|Equal0~2_combout\ : std_logic;
SIGNAL \L0|Equal0~4_combout\ : std_logic;
SIGNAL \L0|Add0~70\ : std_logic;
SIGNAL \L0|Add0~73_sumout\ : std_logic;
SIGNAL \L0|Equal0~3_combout\ : std_logic;
SIGNAL \L0|Equal0~5_combout\ : std_logic;
SIGNAL \L0|C50~q\ : std_logic;
SIGNAL \L0|EA.E4~q\ : std_logic;
SIGNAL \L0|EA.E0~0_combout\ : std_logic;
SIGNAL \L0|EA.E0~q\ : std_logic;
SIGNAL \L0|EA.E1~0_combout\ : std_logic;
SIGNAL \L0|EA.E1~q\ : std_logic;
SIGNAL \L0|EA.E2~q\ : std_logic;
SIGNAL \L0|EA.E3~q\ : std_logic;
SIGNAL \L0|contagem~0_combout\ : std_logic;
SIGNAL \L1|F~0_combout\ : std_logic;
SIGNAL \L1|F[1]~1_combout\ : std_logic;
SIGNAL \L1|F[2]~2_combout\ : std_logic;
SIGNAL \L1|F[4]~3_combout\ : std_logic;
SIGNAL \L1|F[6]~4_combout\ : std_logic;
SIGNAL \L0|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L0|contador\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \L0|ALT_INV_contador\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \L0|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \L0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \L0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \L0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \L0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_EA.E0~q\ : std_logic;
SIGNAL \L1|ALT_INV_F[6]~4_combout\ : std_logic;
SIGNAL \L1|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \L1|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_contagem\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \L0|ALT_INV_EA.E4~q\ : std_logic;
SIGNAL \L0|ALT_INV_EA.E2~q\ : std_logic;
SIGNAL \L0|ALT_INV_contagem~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_EA.E3~q\ : std_logic;
SIGNAL \L0|ALT_INV_EA.E1~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\L0|ALT_INV_contador\(0) <= NOT \L0|contador\(0);
\L0|ALT_INV_contador\(1) <= NOT \L0|contador\(1);
\L0|ALT_INV_contador\(2) <= NOT \L0|contador\(2);
\L0|ALT_INV_contador\(3) <= NOT \L0|contador\(3);
\L0|ALT_INV_contador\(4) <= NOT \L0|contador\(4);
\L0|ALT_INV_contador\(5) <= NOT \L0|contador\(5);
\L0|ALT_INV_contador\(6) <= NOT \L0|contador\(6);
\L0|ALT_INV_contador\(7) <= NOT \L0|contador\(7);
\L0|ALT_INV_contador\(8) <= NOT \L0|contador\(8);
\L0|ALT_INV_contador\(27) <= NOT \L0|contador\(27);
\L0|ALT_INV_contador\(26) <= NOT \L0|contador\(26);
\L0|ALT_INV_contador\(25) <= NOT \L0|contador\(25);
\L0|ALT_INV_contador\(24) <= NOT \L0|contador\(24);
\L0|ALT_INV_contador\(22) <= NOT \L0|contador\(22);
\L0|ALT_INV_contador\(21) <= NOT \L0|contador\(21);
\L0|ALT_INV_contador\(20) <= NOT \L0|contador\(20);
\L0|ALT_INV_contador\(18) <= NOT \L0|contador\(18);
\L0|ALT_INV_contador\(17) <= NOT \L0|contador\(17);
\L0|ALT_INV_contador\(16) <= NOT \L0|contador\(16);
\L0|ALT_INV_contador\(15) <= NOT \L0|contador\(15);
\L0|ALT_INV_contador\(14) <= NOT \L0|contador\(14);
\L0|ALT_INV_contador\(13) <= NOT \L0|contador\(13);
\L0|ALT_INV_contador\(12) <= NOT \L0|contador\(12);
\L0|ALT_INV_contador\(11) <= NOT \L0|contador\(11);
\L0|ALT_INV_contador\(10) <= NOT \L0|contador\(10);
\L0|ALT_INV_contador\(9) <= NOT \L0|contador\(9);
\L0|ALT_INV_contador\(23) <= NOT \L0|contador\(23);
\L0|ALT_INV_contador\(19) <= NOT \L0|contador\(19);
\ALT_INV_CLOCK_50~inputCLKENA0_outclk\ <= NOT \CLOCK_50~inputCLKENA0_outclk\;
\L0|ALT_INV_Equal0~4_combout\ <= NOT \L0|Equal0~4_combout\;
\L0|ALT_INV_Equal0~3_combout\ <= NOT \L0|Equal0~3_combout\;
\L0|ALT_INV_Equal0~2_combout\ <= NOT \L0|Equal0~2_combout\;
\L0|ALT_INV_Equal0~1_combout\ <= NOT \L0|Equal0~1_combout\;
\L0|ALT_INV_Equal0~0_combout\ <= NOT \L0|Equal0~0_combout\;
\L0|ALT_INV_EA.E0~q\ <= NOT \L0|EA.E0~q\;
\L1|ALT_INV_F[6]~4_combout\ <= NOT \L1|F[6]~4_combout\;
\L1|ALT_INV_F[2]~2_combout\ <= NOT \L1|F[2]~2_combout\;
\L1|ALT_INV_F~0_combout\ <= NOT \L1|F~0_combout\;
\L0|ALT_INV_contagem\(2) <= NOT \L0|contagem\(2);
\L0|ALT_INV_EA.E4~q\ <= NOT \L0|EA.E4~q\;
\L0|ALT_INV_EA.E2~q\ <= NOT \L0|EA.E2~q\;
\L0|ALT_INV_contagem~0_combout\ <= NOT \L0|contagem~0_combout\;
\L0|ALT_INV_EA.E3~q\ <= NOT \L0|EA.E3~q\;
\L0|ALT_INV_EA.E1~q\ <= NOT \L0|EA.E1~q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L0|ALT_INV_contagem~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L0|contagem\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L0|contagem\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|ALT_INV_F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|F[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L0|ALT_INV_contagem\(2),
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|ALT_INV_F[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X88_Y9_N30
\L0|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~109_sumout\ = SUM(( \L0|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \L0|Add0~110\ = CARRY(( \L0|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(0),
	cin => GND,
	sumout => \L0|Add0~109_sumout\,
	cout => \L0|Add0~110\);

-- Location: FF_X88_Y9_N32
\L0|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~109_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(0));

-- Location: LABCELL_X88_Y9_N33
\L0|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~105_sumout\ = SUM(( \L0|contador\(1) ) + ( GND ) + ( \L0|Add0~110\ ))
-- \L0|Add0~106\ = CARRY(( \L0|contador\(1) ) + ( GND ) + ( \L0|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(1),
	cin => \L0|Add0~110\,
	sumout => \L0|Add0~105_sumout\,
	cout => \L0|Add0~106\);

-- Location: FF_X88_Y9_N35
\L0|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~105_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(1));

-- Location: LABCELL_X88_Y9_N36
\L0|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~101_sumout\ = SUM(( \L0|contador\(2) ) + ( GND ) + ( \L0|Add0~106\ ))
-- \L0|Add0~102\ = CARRY(( \L0|contador\(2) ) + ( GND ) + ( \L0|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(2),
	cin => \L0|Add0~106\,
	sumout => \L0|Add0~101_sumout\,
	cout => \L0|Add0~102\);

-- Location: FF_X88_Y9_N38
\L0|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~101_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(2));

-- Location: LABCELL_X88_Y9_N39
\L0|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~97_sumout\ = SUM(( \L0|contador\(3) ) + ( GND ) + ( \L0|Add0~102\ ))
-- \L0|Add0~98\ = CARRY(( \L0|contador\(3) ) + ( GND ) + ( \L0|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(3),
	cin => \L0|Add0~102\,
	sumout => \L0|Add0~97_sumout\,
	cout => \L0|Add0~98\);

-- Location: FF_X88_Y9_N41
\L0|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~97_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(3));

-- Location: LABCELL_X88_Y9_N42
\L0|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~93_sumout\ = SUM(( \L0|contador\(4) ) + ( GND ) + ( \L0|Add0~98\ ))
-- \L0|Add0~94\ = CARRY(( \L0|contador\(4) ) + ( GND ) + ( \L0|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(4),
	cin => \L0|Add0~98\,
	sumout => \L0|Add0~93_sumout\,
	cout => \L0|Add0~94\);

-- Location: FF_X88_Y9_N44
\L0|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~93_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(4));

-- Location: LABCELL_X88_Y9_N45
\L0|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~89_sumout\ = SUM(( \L0|contador\(5) ) + ( GND ) + ( \L0|Add0~94\ ))
-- \L0|Add0~90\ = CARRY(( \L0|contador\(5) ) + ( GND ) + ( \L0|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(5),
	cin => \L0|Add0~94\,
	sumout => \L0|Add0~89_sumout\,
	cout => \L0|Add0~90\);

-- Location: FF_X88_Y9_N47
\L0|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~89_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(5));

-- Location: LABCELL_X88_Y9_N48
\L0|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~85_sumout\ = SUM(( \L0|contador\(6) ) + ( GND ) + ( \L0|Add0~90\ ))
-- \L0|Add0~86\ = CARRY(( \L0|contador\(6) ) + ( GND ) + ( \L0|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(6),
	cin => \L0|Add0~90\,
	sumout => \L0|Add0~85_sumout\,
	cout => \L0|Add0~86\);

-- Location: FF_X88_Y9_N50
\L0|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~85_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(6));

-- Location: LABCELL_X88_Y9_N51
\L0|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~81_sumout\ = SUM(( \L0|contador\(7) ) + ( GND ) + ( \L0|Add0~86\ ))
-- \L0|Add0~82\ = CARRY(( \L0|contador\(7) ) + ( GND ) + ( \L0|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(7),
	cin => \L0|Add0~86\,
	sumout => \L0|Add0~81_sumout\,
	cout => \L0|Add0~82\);

-- Location: FF_X88_Y9_N53
\L0|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~81_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(7));

-- Location: LABCELL_X88_Y9_N54
\L0|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~77_sumout\ = SUM(( \L0|contador\(8) ) + ( GND ) + ( \L0|Add0~82\ ))
-- \L0|Add0~78\ = CARRY(( \L0|contador\(8) ) + ( GND ) + ( \L0|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(8),
	cin => \L0|Add0~82\,
	sumout => \L0|Add0~77_sumout\,
	cout => \L0|Add0~78\);

-- Location: FF_X88_Y9_N56
\L0|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~77_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(8));

-- Location: LABCELL_X88_Y9_N57
\L0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~9_sumout\ = SUM(( \L0|contador\(9) ) + ( GND ) + ( \L0|Add0~78\ ))
-- \L0|Add0~10\ = CARRY(( \L0|contador\(9) ) + ( GND ) + ( \L0|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(9),
	cin => \L0|Add0~78\,
	sumout => \L0|Add0~9_sumout\,
	cout => \L0|Add0~10\);

-- Location: FF_X88_Y9_N59
\L0|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(9));

-- Location: LABCELL_X88_Y8_N0
\L0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~13_sumout\ = SUM(( \L0|contador\(10) ) + ( GND ) + ( \L0|Add0~10\ ))
-- \L0|Add0~14\ = CARRY(( \L0|contador\(10) ) + ( GND ) + ( \L0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(10),
	cin => \L0|Add0~10\,
	sumout => \L0|Add0~13_sumout\,
	cout => \L0|Add0~14\);

-- Location: FF_X88_Y8_N1
\L0|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(10));

-- Location: LABCELL_X88_Y8_N3
\L0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~17_sumout\ = SUM(( \L0|contador\(11) ) + ( GND ) + ( \L0|Add0~14\ ))
-- \L0|Add0~18\ = CARRY(( \L0|contador\(11) ) + ( GND ) + ( \L0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(11),
	cin => \L0|Add0~14\,
	sumout => \L0|Add0~17_sumout\,
	cout => \L0|Add0~18\);

-- Location: FF_X88_Y8_N5
\L0|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(11));

-- Location: LABCELL_X88_Y8_N6
\L0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~21_sumout\ = SUM(( \L0|contador\(12) ) + ( GND ) + ( \L0|Add0~18\ ))
-- \L0|Add0~22\ = CARRY(( \L0|contador\(12) ) + ( GND ) + ( \L0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(12),
	cin => \L0|Add0~18\,
	sumout => \L0|Add0~21_sumout\,
	cout => \L0|Add0~22\);

-- Location: FF_X88_Y8_N8
\L0|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(12));

-- Location: LABCELL_X88_Y8_N9
\L0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~25_sumout\ = SUM(( \L0|contador\(13) ) + ( GND ) + ( \L0|Add0~22\ ))
-- \L0|Add0~26\ = CARRY(( \L0|contador\(13) ) + ( GND ) + ( \L0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(13),
	cin => \L0|Add0~22\,
	sumout => \L0|Add0~25_sumout\,
	cout => \L0|Add0~26\);

-- Location: FF_X88_Y8_N11
\L0|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(13));

-- Location: LABCELL_X88_Y8_N12
\L0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~29_sumout\ = SUM(( \L0|contador\(14) ) + ( GND ) + ( \L0|Add0~26\ ))
-- \L0|Add0~30\ = CARRY(( \L0|contador\(14) ) + ( GND ) + ( \L0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(14),
	cin => \L0|Add0~26\,
	sumout => \L0|Add0~29_sumout\,
	cout => \L0|Add0~30\);

-- Location: FF_X88_Y8_N14
\L0|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(14));

-- Location: LABCELL_X88_Y8_N15
\L0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~33_sumout\ = SUM(( \L0|contador\(15) ) + ( GND ) + ( \L0|Add0~30\ ))
-- \L0|Add0~34\ = CARRY(( \L0|contador\(15) ) + ( GND ) + ( \L0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(15),
	cin => \L0|Add0~30\,
	sumout => \L0|Add0~33_sumout\,
	cout => \L0|Add0~34\);

-- Location: FF_X88_Y8_N17
\L0|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(15));

-- Location: LABCELL_X88_Y8_N18
\L0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~37_sumout\ = SUM(( \L0|contador\(16) ) + ( GND ) + ( \L0|Add0~34\ ))
-- \L0|Add0~38\ = CARRY(( \L0|contador\(16) ) + ( GND ) + ( \L0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(16),
	cin => \L0|Add0~34\,
	sumout => \L0|Add0~37_sumout\,
	cout => \L0|Add0~38\);

-- Location: FF_X88_Y8_N20
\L0|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(16));

-- Location: LABCELL_X88_Y8_N21
\L0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~41_sumout\ = SUM(( \L0|contador\(17) ) + ( GND ) + ( \L0|Add0~38\ ))
-- \L0|Add0~42\ = CARRY(( \L0|contador\(17) ) + ( GND ) + ( \L0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(17),
	cin => \L0|Add0~38\,
	sumout => \L0|Add0~41_sumout\,
	cout => \L0|Add0~42\);

-- Location: FF_X88_Y8_N23
\L0|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~41_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(17));

-- Location: LABCELL_X88_Y8_N24
\L0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~45_sumout\ = SUM(( \L0|contador\(18) ) + ( GND ) + ( \L0|Add0~42\ ))
-- \L0|Add0~46\ = CARRY(( \L0|contador\(18) ) + ( GND ) + ( \L0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(18),
	cin => \L0|Add0~42\,
	sumout => \L0|Add0~45_sumout\,
	cout => \L0|Add0~46\);

-- Location: FF_X88_Y8_N26
\L0|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~45_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(18));

-- Location: MLABCELL_X87_Y8_N54
\L0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Equal0~1_combout\ = ( \L0|contador\(17) & ( \L0|contador\(14) & ( (!\L0|contador\(16) & (\L0|contador\(15) & !\L0|contador\(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_contador\(16),
	datac => \L0|ALT_INV_contador\(15),
	datad => \L0|ALT_INV_contador\(18),
	datae => \L0|ALT_INV_contador\(17),
	dataf => \L0|ALT_INV_contador\(14),
	combout => \L0|Equal0~1_combout\);

-- Location: LABCELL_X88_Y8_N27
\L0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~1_sumout\ = SUM(( \L0|contador\(19) ) + ( GND ) + ( \L0|Add0~46\ ))
-- \L0|Add0~2\ = CARRY(( \L0|contador\(19) ) + ( GND ) + ( \L0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(19),
	cin => \L0|Add0~46\,
	sumout => \L0|Add0~1_sumout\,
	cout => \L0|Add0~2\);

-- Location: FF_X88_Y8_N28
\L0|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(19));

-- Location: LABCELL_X88_Y8_N30
\L0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~49_sumout\ = SUM(( \L0|contador\(20) ) + ( GND ) + ( \L0|Add0~2\ ))
-- \L0|Add0~50\ = CARRY(( \L0|contador\(20) ) + ( GND ) + ( \L0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(20),
	cin => \L0|Add0~2\,
	sumout => \L0|Add0~49_sumout\,
	cout => \L0|Add0~50\);

-- Location: FF_X88_Y8_N32
\L0|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~49_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(20));

-- Location: LABCELL_X88_Y8_N33
\L0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~53_sumout\ = SUM(( \L0|contador\(21) ) + ( GND ) + ( \L0|Add0~50\ ))
-- \L0|Add0~54\ = CARRY(( \L0|contador\(21) ) + ( GND ) + ( \L0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(21),
	cin => \L0|Add0~50\,
	sumout => \L0|Add0~53_sumout\,
	cout => \L0|Add0~54\);

-- Location: FF_X88_Y8_N35
\L0|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~53_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(21));

-- Location: LABCELL_X88_Y8_N36
\L0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~57_sumout\ = SUM(( \L0|contador\(22) ) + ( GND ) + ( \L0|Add0~54\ ))
-- \L0|Add0~58\ = CARRY(( \L0|contador\(22) ) + ( GND ) + ( \L0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(22),
	cin => \L0|Add0~54\,
	sumout => \L0|Add0~57_sumout\,
	cout => \L0|Add0~58\);

-- Location: FF_X88_Y8_N38
\L0|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~57_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(22));

-- Location: LABCELL_X88_Y8_N39
\L0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~5_sumout\ = SUM(( \L0|contador\(23) ) + ( GND ) + ( \L0|Add0~58\ ))
-- \L0|Add0~6\ = CARRY(( \L0|contador\(23) ) + ( GND ) + ( \L0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(23),
	cin => \L0|Add0~58\,
	sumout => \L0|Add0~5_sumout\,
	cout => \L0|Add0~6\);

-- Location: FF_X88_Y8_N41
\L0|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(23));

-- Location: MLABCELL_X87_Y8_N21
\L0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Equal0~0_combout\ = ( \L0|contador\(13) & ( !\L0|contador\(9) & ( (\L0|contador\(12) & (!\L0|contador\(10) & (!\L0|contador\(11) & \L0|contador\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_contador\(12),
	datab => \L0|ALT_INV_contador\(10),
	datac => \L0|ALT_INV_contador\(11),
	datad => \L0|ALT_INV_contador\(23),
	datae => \L0|ALT_INV_contador\(13),
	dataf => \L0|ALT_INV_contador\(9),
	combout => \L0|Equal0~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\L0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~61_sumout\ = SUM(( \L0|contador\(24) ) + ( GND ) + ( \L0|Add0~6\ ))
-- \L0|Add0~62\ = CARRY(( \L0|contador\(24) ) + ( GND ) + ( \L0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(24),
	cin => \L0|Add0~6\,
	sumout => \L0|Add0~61_sumout\,
	cout => \L0|Add0~62\);

-- Location: FF_X88_Y8_N44
\L0|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~61_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(24));

-- Location: LABCELL_X88_Y8_N45
\L0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~65_sumout\ = SUM(( \L0|contador\(25) ) + ( GND ) + ( \L0|Add0~62\ ))
-- \L0|Add0~66\ = CARRY(( \L0|contador\(25) ) + ( GND ) + ( \L0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(25),
	cin => \L0|Add0~62\,
	sumout => \L0|Add0~65_sumout\,
	cout => \L0|Add0~66\);

-- Location: FF_X88_Y8_N47
\L0|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~65_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(25));

-- Location: LABCELL_X88_Y8_N48
\L0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~69_sumout\ = SUM(( \L0|contador\(26) ) + ( GND ) + ( \L0|Add0~66\ ))
-- \L0|Add0~70\ = CARRY(( \L0|contador\(26) ) + ( GND ) + ( \L0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(26),
	cin => \L0|Add0~66\,
	sumout => \L0|Add0~69_sumout\,
	cout => \L0|Add0~70\);

-- Location: FF_X88_Y8_N50
\L0|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~69_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(26));

-- Location: LABCELL_X88_Y8_N57
\L0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Equal0~2_combout\ = ( \L0|contador\(25) & ( !\L0|contador\(26) & ( (\L0|contador\(22) & (!\L0|contador\(24) & (\L0|contador\(20) & \L0|contador\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_contador\(22),
	datab => \L0|ALT_INV_contador\(24),
	datac => \L0|ALT_INV_contador\(20),
	datad => \L0|ALT_INV_contador\(21),
	datae => \L0|ALT_INV_contador\(25),
	dataf => \L0|ALT_INV_contador\(26),
	combout => \L0|Equal0~2_combout\);

-- Location: LABCELL_X88_Y9_N27
\L0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Equal0~4_combout\ = ( \L0|contador\(1) & ( (\L0|contador\(0) & (\L0|contador\(3) & \L0|contador\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_contador\(0),
	datac => \L0|ALT_INV_contador\(3),
	datad => \L0|ALT_INV_contador\(2),
	dataf => \L0|ALT_INV_contador\(1),
	combout => \L0|Equal0~4_combout\);

-- Location: LABCELL_X88_Y8_N51
\L0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~73_sumout\ = SUM(( \L0|contador\(27) ) + ( GND ) + ( \L0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_contador\(27),
	cin => \L0|Add0~70\,
	sumout => \L0|Add0~73_sumout\);

-- Location: FF_X88_Y8_N52
\L0|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Add0~73_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \L0|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|contador\(27));

-- Location: LABCELL_X88_Y9_N0
\L0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Equal0~3_combout\ = ( !\L0|contador\(8) & ( !\L0|contador\(27) & ( (\L0|contador\(6) & (\L0|contador\(5) & (!\L0|contador\(7) & \L0|contador\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_contador\(6),
	datab => \L0|ALT_INV_contador\(5),
	datac => \L0|ALT_INV_contador\(7),
	datad => \L0|ALT_INV_contador\(4),
	datae => \L0|ALT_INV_contador\(8),
	dataf => \L0|ALT_INV_contador\(27),
	combout => \L0|Equal0~3_combout\);

-- Location: MLABCELL_X87_Y8_N36
\L0|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Equal0~5_combout\ = ( \L0|Equal0~4_combout\ & ( \L0|Equal0~3_combout\ & ( (\L0|Equal0~1_combout\ & (\L0|contador\(19) & (\L0|Equal0~0_combout\ & \L0|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_Equal0~1_combout\,
	datab => \L0|ALT_INV_contador\(19),
	datac => \L0|ALT_INV_Equal0~0_combout\,
	datad => \L0|ALT_INV_Equal0~2_combout\,
	datae => \L0|ALT_INV_Equal0~4_combout\,
	dataf => \L0|ALT_INV_Equal0~3_combout\,
	combout => \L0|Equal0~5_combout\);

-- Location: FF_X88_Y9_N23
\L0|C50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L0|Equal0~5_combout\,
	sload => VCC,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|C50~q\);

-- Location: FF_X88_Y9_N26
\L0|EA.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L0|EA.E3~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|C50~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.E4~q\);

-- Location: LABCELL_X88_Y9_N6
\L0|EA.E0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|EA.E0~0_combout\ = !\L0|EA.E4~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_EA.E4~q\,
	combout => \L0|EA.E0~0_combout\);

-- Location: FF_X88_Y9_N8
\L0|EA.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|EA.E0~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|C50~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.E0~q\);

-- Location: LABCELL_X88_Y9_N9
\L0|EA.E1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|EA.E1~0_combout\ = !\L0|EA.E0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_EA.E0~q\,
	combout => \L0|EA.E1~0_combout\);

-- Location: FF_X88_Y9_N10
\L0|EA.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|EA.E1~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|C50~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.E1~q\);

-- Location: FF_X88_Y9_N5
\L0|EA.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L0|EA.E1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|C50~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.E2~q\);

-- Location: FF_X88_Y9_N17
\L0|EA.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L0|EA.E2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|C50~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.E3~q\);

-- Location: MLABCELL_X87_Y9_N27
\L0|contagem~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|contagem~0_combout\ = ( \L0|EA.E3~q\ & ( \L0|EA.E1~q\ ) ) # ( !\L0|EA.E3~q\ & ( \L0|EA.E1~q\ ) ) # ( \L0|EA.E3~q\ & ( !\L0|EA.E1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \L0|ALT_INV_EA.E3~q\,
	dataf => \L0|ALT_INV_EA.E1~q\,
	combout => \L0|contagem~0_combout\);

-- Location: MLABCELL_X87_Y9_N54
\L0|contagem[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|contagem\(1) = ( \L0|EA.E2~q\ & ( \L0|EA.E1~q\ ) ) # ( !\L0|EA.E2~q\ & ( \L0|EA.E1~q\ ) ) # ( \L0|EA.E2~q\ & ( !\L0|EA.E1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \L0|ALT_INV_EA.E2~q\,
	dataf => \L0|ALT_INV_EA.E1~q\,
	combout => \L0|contagem\(1));

-- Location: MLABCELL_X87_Y9_N3
\L0|contagem[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|contagem\(2) = ( \L0|EA.E3~q\ & ( \L0|EA.E4~q\ ) ) # ( !\L0|EA.E3~q\ & ( \L0|EA.E4~q\ ) ) # ( \L0|EA.E3~q\ & ( !\L0|EA.E4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \L0|ALT_INV_EA.E3~q\,
	dataf => \L0|ALT_INV_EA.E4~q\,
	combout => \L0|contagem\(2));

-- Location: LABCELL_X88_Y9_N24
\L1|F~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F~0_combout\ = ( \L0|EA.E2~q\ ) # ( !\L0|EA.E2~q\ & ( ((\L0|EA.E4~q\ & !\L0|EA.E3~q\)) # (\L0|EA.E1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.E1~q\,
	datac => \L0|ALT_INV_EA.E4~q\,
	datad => \L0|ALT_INV_EA.E3~q\,
	dataf => \L0|ALT_INV_EA.E2~q\,
	combout => \L1|F~0_combout\);

-- Location: LABCELL_X88_Y9_N18
\L1|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F[1]~1_combout\ = ( \L0|EA.E4~q\ & ( (!\L0|EA.E3~q\ $ (\L0|EA.E2~q\)) # (\L0|EA.E1~q\) ) ) # ( !\L0|EA.E4~q\ & ( (\L0|EA.E3~q\ & ((\L0|EA.E2~q\) # (\L0|EA.E1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111111110101010111111111010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.E1~q\,
	datac => \L0|ALT_INV_EA.E3~q\,
	datad => \L0|ALT_INV_EA.E2~q\,
	dataf => \L0|ALT_INV_EA.E4~q\,
	combout => \L1|F[1]~1_combout\);

-- Location: LABCELL_X88_Y9_N15
\L1|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F[2]~2_combout\ = ((!\L0|EA.E1~q\) # (\L0|EA.E3~q\)) # (\L0|EA.E4~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111110111011111111111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.E4~q\,
	datab => \L0|ALT_INV_EA.E1~q\,
	datad => \L0|ALT_INV_EA.E3~q\,
	combout => \L1|F[2]~2_combout\);

-- Location: LABCELL_X88_Y9_N12
\L1|F[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F[4]~3_combout\ = ( \L0|EA.E3~q\ & ( (!\L0|EA.E1~q\ & !\L0|EA.E2~q\) ) ) # ( !\L0|EA.E3~q\ & ( (!\L0|EA.E1~q\ & ((!\L0|EA.E4~q\) # (!\L0|EA.E2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.E4~q\,
	datab => \L0|ALT_INV_EA.E1~q\,
	datac => \L0|ALT_INV_EA.E2~q\,
	dataf => \L0|ALT_INV_EA.E3~q\,
	combout => \L1|F[4]~3_combout\);

-- Location: LABCELL_X88_Y9_N21
\L1|F[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F[6]~4_combout\ = ( \L0|EA.E4~q\ ) # ( !\L0|EA.E4~q\ & ( ((\L0|EA.E3~q\) # (\L0|EA.E2~q\)) # (\L0|EA.E1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.E1~q\,
	datab => \L0|ALT_INV_EA.E2~q\,
	datac => \L0|ALT_INV_EA.E3~q\,
	dataf => \L0|ALT_INV_EA.E4~q\,
	combout => \L1|F[6]~4_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X53_Y33_N0
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


