-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/08/2025 18:18:26"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Integrador IS
    PORT (
	PAUSA : OUT std_logic;
	K : IN std_logic_vector(2 DOWNTO 0);
	ERROR : OUT std_logic;
	START : IN std_logic;
	Clock : IN std_logic;
	Recargar : IN std_logic;
	LOAD_I : IN std_logic;
	DATA : INOUT std_logic_vector(11 DOWNTO 0);
	LOAD_F : IN std_logic;
	\Up/Down\ : IN std_logic;
	FIN : OUT std_logic
	);
END Integrador;

-- Design Ports Information
-- PAUSA	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ERROR	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIN	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[9]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Up/Down	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Recargar	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD_I	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD_F	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Integrador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PAUSA : std_logic;
SIGNAL ww_K : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ERROR : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Recargar : std_logic;
SIGNAL ww_LOAD_I : std_logic;
SIGNAL ww_LOAD_F : std_logic;
SIGNAL \ww_Up/Down\ : std_logic;
SIGNAL ww_FIN : std_logic;
SIGNAL \START~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA[11]~input_o\ : std_logic;
SIGNAL \DATA[10]~input_o\ : std_logic;
SIGNAL \DATA[9]~input_o\ : std_logic;
SIGNAL \DATA[8]~input_o\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \DATA[11]~output_o\ : std_logic;
SIGNAL \DATA[10]~output_o\ : std_logic;
SIGNAL \DATA[9]~output_o\ : std_logic;
SIGNAL \DATA[8]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \PAUSA~output_o\ : std_logic;
SIGNAL \ERROR~output_o\ : std_logic;
SIGNAL \FIN~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \START~inputclkctrl_outclk\ : std_logic;
SIGNAL \LOAD_I~input_o\ : std_logic;
SIGNAL \Recargar~input_o\ : std_logic;
SIGNAL \inst57~combout\ : std_logic;
SIGNAL \inst55|inst20~q\ : std_logic;
SIGNAL \inst80|inst20~feeder_combout\ : std_logic;
SIGNAL \inst80|inst20~q\ : std_logic;
SIGNAL \Up/Down~input_o\ : std_logic;
SIGNAL \K[2]~input_o\ : std_logic;
SIGNAL \K[1]~input_o\ : std_logic;
SIGNAL \K[0]~input_o\ : std_logic;
SIGNAL \inst36|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst55|inst11~feeder_combout\ : std_logic;
SIGNAL \inst55|inst11~q\ : std_logic;
SIGNAL \inst80|inst11~q\ : std_logic;
SIGNAL \inst36|inst|inst2~0_combout\ : std_logic;
SIGNAL \inst36|inst3|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst10~feeder_combout\ : std_logic;
SIGNAL \inst55|inst10~q\ : std_logic;
SIGNAL \inst5|6~0_combout\ : std_logic;
SIGNAL \inst80|inst10~q\ : std_logic;
SIGNAL \inst36|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst36|inst6|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst12~feeder_combout\ : std_logic;
SIGNAL \inst55|inst12~q\ : std_logic;
SIGNAL \inst80|inst12~q\ : std_logic;
SIGNAL \inst36|inst6|inst1|inst~combout\ : std_logic;
SIGNAL \inst36|inst7|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst15~feeder_combout\ : std_logic;
SIGNAL \inst55|inst15~q\ : std_logic;
SIGNAL \inst80|inst15~q\ : std_logic;
SIGNAL \inst36|inst9|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst14~q\ : std_logic;
SIGNAL \inst80|inst14~q\ : std_logic;
SIGNAL \inst36|inst9|inst1|inst~combout\ : std_logic;
SIGNAL \inst36|inst11|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst17~feeder_combout\ : std_logic;
SIGNAL \inst55|inst17~q\ : std_logic;
SIGNAL \inst80|inst17~q\ : std_logic;
SIGNAL \inst36|inst29~combout\ : std_logic;
SIGNAL \inst36|inst13|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst16~q\ : std_logic;
SIGNAL \inst80|inst16~q\ : std_logic;
SIGNAL \inst36|inst30~combout\ : std_logic;
SIGNAL \inst36|inst15|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst19~q\ : std_logic;
SIGNAL \inst80|inst19~q\ : std_logic;
SIGNAL \inst36|inst15|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst36|inst15|inst1|inst~combout\ : std_logic;
SIGNAL \inst36|inst17|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst18~feeder_combout\ : std_logic;
SIGNAL \inst55|inst18~q\ : std_logic;
SIGNAL \inst80|inst18~feeder_combout\ : std_logic;
SIGNAL \inst80|inst18~q\ : std_logic;
SIGNAL \inst36|inst19|inst1|inst2~combout\ : std_logic;
SIGNAL \inst55|inst21~q\ : std_logic;
SIGNAL \inst80|inst21~feeder_combout\ : std_logic;
SIGNAL \inst80|inst21~q\ : std_logic;
SIGNAL \inst36|inst21|inst1|inst2~3_combout\ : std_logic;
SIGNAL \inst36|inst21|inst1|inst2~2_combout\ : std_logic;
SIGNAL \inst36|inst5|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst26~0_combout\ : std_logic;
SIGNAL \LOAD_F~input_o\ : std_logic;
SIGNAL \inst25~combout\ : std_logic;
SIGNAL \inst15|inst21~q\ : std_logic;
SIGNAL \inst15|inst19~q\ : std_logic;
SIGNAL \inst2|inst30|inst8~0_combout\ : std_logic;
SIGNAL \inst15|inst20~q\ : std_logic;
SIGNAL \inst2|inst30|inst8~1_combout\ : std_logic;
SIGNAL \inst15|inst14~q\ : std_logic;
SIGNAL \inst15|inst16~q\ : std_logic;
SIGNAL \inst2|inst30|inst8~2_combout\ : std_logic;
SIGNAL \inst15|inst18~q\ : std_logic;
SIGNAL \inst15|inst17~q\ : std_logic;
SIGNAL \inst15|inst11~feeder_combout\ : std_logic;
SIGNAL \inst15|inst11~q\ : std_logic;
SIGNAL \inst15|inst15~q\ : std_logic;
SIGNAL \inst2|inst30|inst8~3_combout\ : std_logic;
SIGNAL \inst15|inst10~feeder_combout\ : std_logic;
SIGNAL \inst15|inst10~q\ : std_logic;
SIGNAL \inst2|inst30|inst8~4_combout\ : std_logic;
SIGNAL \inst2|inst30|inst8~5_combout\ : std_logic;
SIGNAL \inst2|inst30|inst8~6_combout\ : std_logic;
SIGNAL \inst15|inst12~q\ : std_logic;
SIGNAL \inst2|inst21|inst~combout\ : std_logic;
SIGNAL \inst1|inst30|inst8~3_combout\ : std_logic;
SIGNAL \inst1|inst30|inst8~2_combout\ : std_logic;
SIGNAL \inst1|inst30|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst30|inst8~1_combout\ : std_logic;
SIGNAL \inst1|inst30|inst8~4_combout\ : std_logic;
SIGNAL \inst1|inst30|inst8~5_combout\ : std_logic;
SIGNAL \inst1|inst30|inst8~6_combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;

BEGIN

PAUSA <= ww_PAUSA;
ww_K <= K;
ERROR <= ww_ERROR;
ww_START <= START;
ww_Clock <= Clock;
ww_Recargar <= Recargar;
ww_LOAD_I <= LOAD_I;
ww_LOAD_F <= LOAD_F;
\ww_Up/Down\ <= \Up/Down\;
FIN <= ww_FIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\START~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \START~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

-- Location: IOOBUF_X14_Y0_N2
\DATA[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst21|inst1|inst2~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[11]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\DATA[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst19|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[10]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\DATA[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst17|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[9]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\DATA[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst15|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[8]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\DATA[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst13|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\DATA[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst11|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\DATA[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst9|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\DATA[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst7|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\DATA[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst6|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\DATA[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst5|inst1|inst2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\DATA[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst3|inst1|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\DATA[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36|inst|inst|inst2~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\PAUSA~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~0_combout\,
	devoe => ww_devoe,
	o => \PAUSA~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\ERROR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ERROR~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\FIN~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~combout\,
	devoe => ww_devoe,
	o => \FIN~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\Clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G17
\Clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N22
\START~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: CLKCTRL_G19
\START~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \START~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \START~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y0_N8
\LOAD_I~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD_I,
	o => \LOAD_I~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\Recargar~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Recargar,
	o => \Recargar~input_o\);

-- Location: LCCOMB_X17_Y4_N24
inst57 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst57~combout\ = (\LOAD_I~input_o\ & \Recargar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LOAD_I~input_o\,
	datad => \Recargar~input_o\,
	combout => \inst57~combout\);

-- Location: FF_X15_Y4_N13
\inst55|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst36|inst21|inst1|inst2~2_combout\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst20~q\);

-- Location: LCCOMB_X14_Y4_N14
\inst80|inst20~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst80|inst20~feeder_combout\ = \inst55|inst20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst55|inst20~q\,
	combout => \inst80|inst20~feeder_combout\);

-- Location: FF_X14_Y4_N15
\inst80|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst80|inst20~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst20~q\);

-- Location: IOIBUF_X22_Y0_N8
\Up/Down~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Up/Down\,
	o => \Up/Down~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\K[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K(2),
	o => \K[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\K[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K(1),
	o => \K[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\K[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K(0),
	o => \K[0]~input_o\);

-- Location: LCCOMB_X17_Y4_N2
\inst36|inst|inst|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst|inst|inst2~combout\ = \inst80|inst11~q\ $ (\K[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst80|inst11~q\,
	datac => \K[0]~input_o\,
	combout => \inst36|inst|inst|inst2~combout\);

-- Location: LCCOMB_X17_Y4_N8
\inst55|inst11~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst55|inst11~feeder_combout\ = \inst36|inst|inst|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst36|inst|inst|inst2~combout\,
	combout => \inst55|inst11~feeder_combout\);

-- Location: FF_X17_Y4_N9
\inst55|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst55|inst11~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst11~q\);

-- Location: FF_X16_Y4_N1
\inst80|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst55|inst11~q\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst11~q\);

-- Location: LCCOMB_X16_Y4_N16
\inst36|inst|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst|inst2~0_combout\ = (\inst80|inst11~q\ & (\K[0]~input_o\)) # (!\inst80|inst11~q\ & ((\Up/Down~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \K[0]~input_o\,
	datac => \Up/Down~input_o\,
	datad => \inst80|inst11~q\,
	combout => \inst36|inst|inst2~0_combout\);

-- Location: LCCOMB_X16_Y4_N22
\inst36|inst3|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst3|inst1|inst2~combout\ = \K[1]~input_o\ $ (\Up/Down~input_o\ $ (\inst80|inst10~q\ $ (\inst36|inst|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K[1]~input_o\,
	datab => \Up/Down~input_o\,
	datac => \inst80|inst10~q\,
	datad => \inst36|inst|inst2~0_combout\,
	combout => \inst36|inst3|inst1|inst2~combout\);

-- Location: LCCOMB_X17_Y4_N6
\inst55|inst10~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst55|inst10~feeder_combout\ = \inst36|inst3|inst1|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst36|inst3|inst1|inst2~combout\,
	combout => \inst55|inst10~feeder_combout\);

-- Location: FF_X17_Y4_N7
\inst55|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst55|inst10~feeder_combout\,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst10~q\);

-- Location: LCCOMB_X16_Y4_N26
\inst5|6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|6~0_combout\ = (\START~input_o\ & ((\inst55|inst10~q\))) # (!\START~input_o\ & (\inst36|inst3|inst1|inst2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|inst3|inst1|inst2~combout\,
	datac => \START~input_o\,
	datad => \inst55|inst10~q\,
	combout => \inst5|6~0_combout\);

-- Location: FF_X16_Y4_N27
\inst80|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst10~q\);

-- Location: LCCOMB_X16_Y4_N18
\inst36|inst3|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst3|inst2~0_combout\ = (\K[1]~input_o\ & ((\inst36|inst|inst2~0_combout\) # (\Up/Down~input_o\ $ (\inst80|inst10~q\)))) # (!\K[1]~input_o\ & (\inst36|inst|inst2~0_combout\ & (\Up/Down~input_o\ $ (\inst80|inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K[1]~input_o\,
	datab => \Up/Down~input_o\,
	datac => \inst80|inst10~q\,
	datad => \inst36|inst|inst2~0_combout\,
	combout => \inst36|inst3|inst2~0_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst36|inst6|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst6|inst1|inst2~combout\ = \inst80|inst12~q\ $ (((\Up/Down~input_o\ & (!\K[2]~input_o\ & !\inst36|inst3|inst2~0_combout\)) # (!\Up/Down~input_o\ & (\K[2]~input_o\ & \inst36|inst3|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up/Down~input_o\,
	datab => \K[2]~input_o\,
	datac => \inst80|inst12~q\,
	datad => \inst36|inst3|inst2~0_combout\,
	combout => \inst36|inst6|inst1|inst2~combout\);

-- Location: LCCOMB_X17_Y4_N0
\inst55|inst12~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst55|inst12~feeder_combout\ = \inst36|inst6|inst1|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst36|inst6|inst1|inst2~combout\,
	combout => \inst55|inst12~feeder_combout\);

-- Location: FF_X17_Y4_N1
\inst55|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst55|inst12~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst12~q\);

-- Location: FF_X16_Y4_N29
\inst80|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst55|inst12~q\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst12~q\);

-- Location: LCCOMB_X16_Y4_N28
\inst36|inst6|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst6|inst1|inst~combout\ = (\Up/Down~input_o\ & (!\inst80|inst12~q\ & ((\K[2]~input_o\) # (\inst36|inst3|inst2~0_combout\)))) # (!\Up/Down~input_o\ & (\K[2]~input_o\ & (\inst80|inst12~q\ & \inst36|inst3|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up/Down~input_o\,
	datab => \K[2]~input_o\,
	datac => \inst80|inst12~q\,
	datad => \inst36|inst3|inst2~0_combout\,
	combout => \inst36|inst6|inst1|inst~combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst36|inst7|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst7|inst1|inst2~combout\ = \inst80|inst15~q\ $ (\Up/Down~input_o\ $ (\inst36|inst6|inst1|inst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst80|inst15~q\,
	datac => \Up/Down~input_o\,
	datad => \inst36|inst6|inst1|inst~combout\,
	combout => \inst36|inst7|inst1|inst2~combout\);

-- Location: LCCOMB_X17_Y4_N20
\inst55|inst15~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst55|inst15~feeder_combout\ = \inst36|inst7|inst1|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst36|inst7|inst1|inst2~combout\,
	combout => \inst55|inst15~feeder_combout\);

-- Location: FF_X17_Y4_N21
\inst55|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst55|inst15~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst15~q\);

-- Location: FF_X16_Y4_N7
\inst80|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst55|inst15~q\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst15~q\);

-- Location: LCCOMB_X16_Y4_N20
\inst36|inst9|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst9|inst1|inst2~combout\ = \inst80|inst14~q\ $ (((\inst36|inst6|inst1|inst~combout\ & (\inst80|inst15~q\)) # (!\inst36|inst6|inst1|inst~combout\ & ((\Up/Down~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst80|inst15~q\,
	datab => \inst80|inst14~q\,
	datac => \Up/Down~input_o\,
	datad => \inst36|inst6|inst1|inst~combout\,
	combout => \inst36|inst9|inst1|inst2~combout\);

-- Location: FF_X15_Y4_N7
\inst55|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst36|inst9|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst14~q\);

-- Location: FF_X16_Y4_N3
\inst80|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst55|inst14~q\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst14~q\);

-- Location: LCCOMB_X16_Y4_N24
\inst36|inst9|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst9|inst1|inst~combout\ = (\inst36|inst6|inst1|inst~combout\ & ((\inst80|inst15~q\ & (\inst80|inst14~q\ & !\Up/Down~input_o\)) # (!\inst80|inst15~q\ & (!\inst80|inst14~q\ & \Up/Down~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst80|inst15~q\,
	datab => \inst80|inst14~q\,
	datac => \Up/Down~input_o\,
	datad => \inst36|inst6|inst1|inst~combout\,
	combout => \inst36|inst9|inst1|inst~combout\);

-- Location: LCCOMB_X15_Y4_N28
\inst36|inst11|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst11|inst1|inst2~combout\ = \inst80|inst17~q\ $ (\Up/Down~input_o\ $ (\inst36|inst9|inst1|inst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst80|inst17~q\,
	datac => \Up/Down~input_o\,
	datad => \inst36|inst9|inst1|inst~combout\,
	combout => \inst36|inst11|inst1|inst2~combout\);

-- Location: LCCOMB_X15_Y4_N26
\inst55|inst17~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst55|inst17~feeder_combout\ = \inst36|inst11|inst1|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst36|inst11|inst1|inst2~combout\,
	combout => \inst55|inst17~feeder_combout\);

-- Location: FF_X15_Y4_N27
\inst55|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst55|inst17~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst17~q\);

-- Location: FF_X16_Y4_N9
\inst80|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst55|inst17~q\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst17~q\);

-- Location: LCCOMB_X15_Y4_N12
\inst36|inst29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst29~combout\ = \Up/Down~input_o\ $ (\inst80|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up/Down~input_o\,
	datad => \inst80|inst17~q\,
	combout => \inst36|inst29~combout\);

-- Location: LCCOMB_X16_Y4_N14
\inst36|inst13|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst13|inst1|inst2~combout\ = \inst80|inst16~q\ $ (((\inst36|inst9|inst1|inst~combout\ & ((\inst80|inst17~q\))) # (!\inst36|inst9|inst1|inst~combout\ & (\Up/Down~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst80|inst16~q\,
	datab => \Up/Down~input_o\,
	datac => \inst80|inst17~q\,
	datad => \inst36|inst9|inst1|inst~combout\,
	combout => \inst36|inst13|inst1|inst2~combout\);

-- Location: FF_X15_Y4_N1
\inst55|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst36|inst13|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst16~q\);

-- Location: FF_X16_Y4_N13
\inst80|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst55|inst16~q\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst16~q\);

-- Location: LCCOMB_X16_Y4_N8
\inst36|inst30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst30~combout\ = \Up/Down~input_o\ $ (\inst80|inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up/Down~input_o\,
	datad => \inst80|inst16~q\,
	combout => \inst36|inst30~combout\);

-- Location: LCCOMB_X15_Y4_N8
\inst36|inst15|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst15|inst1|inst2~combout\ = \inst80|inst19~q\ $ (((\inst36|inst29~combout\ & (\inst36|inst30~combout\ & \inst36|inst9|inst1|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|inst29~combout\,
	datab => \inst80|inst19~q\,
	datac => \inst36|inst30~combout\,
	datad => \inst36|inst9|inst1|inst~combout\,
	combout => \inst36|inst15|inst1|inst2~combout\);

-- Location: FF_X15_Y4_N15
\inst55|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst36|inst15|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst19~q\);

-- Location: FF_X16_Y4_N31
\inst80|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst55|inst19~q\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst19~q\);

-- Location: LCCOMB_X16_Y4_N30
\inst36|inst15|inst1|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst15|inst1|inst~0_combout\ = (\inst80|inst19~q\ & ((\Up/Down~input_o\ & (!\inst80|inst14~q\ & !\inst80|inst15~q\)) # (!\Up/Down~input_o\ & (\inst80|inst14~q\ & \inst80|inst15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up/Down~input_o\,
	datab => \inst80|inst14~q\,
	datac => \inst80|inst19~q\,
	datad => \inst80|inst15~q\,
	combout => \inst36|inst15|inst1|inst~0_combout\);

-- Location: LCCOMB_X15_Y4_N20
\inst36|inst15|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst15|inst1|inst~combout\ = (\inst36|inst29~combout\ & (\inst36|inst30~combout\ & (\inst36|inst15|inst1|inst~0_combout\ & \inst36|inst6|inst1|inst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|inst29~combout\,
	datab => \inst36|inst30~combout\,
	datac => \inst36|inst15|inst1|inst~0_combout\,
	datad => \inst36|inst6|inst1|inst~combout\,
	combout => \inst36|inst15|inst1|inst~combout\);

-- Location: LCCOMB_X15_Y4_N10
\inst36|inst17|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst17|inst1|inst2~combout\ = \inst80|inst18~q\ $ (\Up/Down~input_o\ $ (\inst36|inst15|inst1|inst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst80|inst18~q\,
	datac => \Up/Down~input_o\,
	datad => \inst36|inst15|inst1|inst~combout\,
	combout => \inst36|inst17|inst1|inst2~combout\);

-- Location: LCCOMB_X15_Y4_N16
\inst55|inst18~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst55|inst18~feeder_combout\ = \inst36|inst17|inst1|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst36|inst17|inst1|inst2~combout\,
	combout => \inst55|inst18~feeder_combout\);

-- Location: FF_X15_Y4_N17
\inst55|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst55|inst18~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst18~q\);

-- Location: LCCOMB_X14_Y4_N6
\inst80|inst18~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst80|inst18~feeder_combout\ = \inst55|inst18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst55|inst18~q\,
	combout => \inst80|inst18~feeder_combout\);

-- Location: FF_X14_Y4_N7
\inst80|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst80|inst18~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst18~q\);

-- Location: LCCOMB_X15_Y4_N4
\inst36|inst19|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst19|inst1|inst2~combout\ = \inst80|inst21~q\ $ (((\inst36|inst15|inst1|inst~combout\ & (\inst80|inst18~q\)) # (!\inst36|inst15|inst1|inst~combout\ & ((\Up/Down~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst80|inst21~q\,
	datab => \inst80|inst18~q\,
	datac => \Up/Down~input_o\,
	datad => \inst36|inst15|inst1|inst~combout\,
	combout => \inst36|inst19|inst1|inst2~combout\);

-- Location: FF_X15_Y4_N19
\inst55|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst36|inst19|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|inst21~q\);

-- Location: LCCOMB_X14_Y4_N12
\inst80|inst21~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst80|inst21~feeder_combout\ = \inst55|inst21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst55|inst21~q\,
	combout => \inst80|inst21~feeder_combout\);

-- Location: FF_X14_Y4_N13
\inst80|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst80|inst21~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst80|inst21~q\);

-- Location: LCCOMB_X15_Y4_N18
\inst36|inst21|inst1|inst2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst21|inst1|inst2~3_combout\ = (\Up/Down~input_o\ & (!\inst80|inst18~q\ & !\inst80|inst21~q\)) # (!\Up/Down~input_o\ & (\inst80|inst18~q\ & \inst80|inst21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up/Down~input_o\,
	datab => \inst80|inst18~q\,
	datad => \inst80|inst21~q\,
	combout => \inst36|inst21|inst1|inst2~3_combout\);

-- Location: LCCOMB_X15_Y4_N30
\inst36|inst21|inst1|inst2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst21|inst1|inst2~2_combout\ = \inst80|inst20~q\ $ (\Up/Down~input_o\ $ (((\inst36|inst21|inst1|inst2~3_combout\ & \inst36|inst15|inst1|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst80|inst20~q\,
	datab => \inst36|inst21|inst1|inst2~3_combout\,
	datac => \Up/Down~input_o\,
	datad => \inst36|inst15|inst1|inst~combout\,
	combout => \inst36|inst21|inst1|inst2~2_combout\);

-- Location: LCCOMB_X16_Y4_N6
\inst36|inst5|inst1|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36|inst5|inst1|inst2~0_combout\ = \Up/Down~input_o\ $ (\K[2]~input_o\ $ (\inst36|inst3|inst2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up/Down~input_o\,
	datab => \K[2]~input_o\,
	datad => \inst36|inst3|inst2~0_combout\,
	combout => \inst36|inst5|inst1|inst2~0_combout\);

-- Location: LCCOMB_X16_Y4_N0
\inst26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst26~0_combout\ = (!\K[1]~input_o\ & (!\K[0]~input_o\ & !\K[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K[1]~input_o\,
	datab => \K[0]~input_o\,
	datad => \K[2]~input_o\,
	combout => \inst26~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\LOAD_F~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD_F,
	o => \LOAD_F~input_o\);

-- Location: LCCOMB_X17_Y4_N18
inst25 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst25~combout\ = (\LOAD_F~input_o\ & \Recargar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LOAD_F~input_o\,
	datad => \Recargar~input_o\,
	combout => \inst25~combout\);

-- Location: FF_X15_Y4_N5
\inst15|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst19|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst21~q\);

-- Location: FF_X15_Y4_N9
\inst15|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst15|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst19~q\);

-- Location: LCCOMB_X15_Y4_N22
\inst2|inst30|inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst30|inst8~0_combout\ = (\inst36|inst15|inst1|inst2~combout\ & (\inst15|inst19~q\ & (\inst36|inst19|inst1|inst2~combout\ $ (!\inst15|inst21~q\)))) # (!\inst36|inst15|inst1|inst2~combout\ & (!\inst15|inst19~q\ & 
-- (\inst36|inst19|inst1|inst2~combout\ $ (!\inst15|inst21~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|inst15|inst1|inst2~combout\,
	datab => \inst36|inst19|inst1|inst2~combout\,
	datac => \inst15|inst21~q\,
	datad => \inst15|inst19~q\,
	combout => \inst2|inst30|inst8~0_combout\);

-- Location: FF_X15_Y4_N31
\inst15|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst21|inst1|inst2~2_combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst20~q\);

-- Location: LCCOMB_X15_Y4_N6
\inst2|inst30|inst8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst30|inst8~1_combout\ = (\inst2|inst30|inst8~0_combout\ & (\inst36|inst21|inst1|inst2~2_combout\ $ (!\inst15|inst20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst30|inst8~0_combout\,
	datab => \inst36|inst21|inst1|inst2~2_combout\,
	datad => \inst15|inst20~q\,
	combout => \inst2|inst30|inst8~1_combout\);

-- Location: FF_X16_Y4_N21
\inst15|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst9|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst14~q\);

-- Location: FF_X16_Y4_N15
\inst15|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst13|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst16~q\);

-- Location: LCCOMB_X15_Y4_N0
\inst2|inst30|inst8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst30|inst8~2_combout\ = (\inst36|inst9|inst1|inst2~combout\ & (\inst15|inst14~q\ & (\inst36|inst13|inst1|inst2~combout\ $ (!\inst15|inst16~q\)))) # (!\inst36|inst9|inst1|inst2~combout\ & (!\inst15|inst14~q\ & (\inst36|inst13|inst1|inst2~combout\ 
-- $ (!\inst15|inst16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|inst9|inst1|inst2~combout\,
	datab => \inst15|inst14~q\,
	datac => \inst36|inst13|inst1|inst2~combout\,
	datad => \inst15|inst16~q\,
	combout => \inst2|inst30|inst8~2_combout\);

-- Location: FF_X15_Y4_N11
\inst15|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst17|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst18~q\);

-- Location: FF_X15_Y4_N29
\inst15|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst11|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst17~q\);

-- Location: LCCOMB_X17_Y4_N26
\inst15|inst11~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|inst11~feeder_combout\ = \inst36|inst|inst|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst36|inst|inst|inst2~combout\,
	combout => \inst15|inst11~feeder_combout\);

-- Location: FF_X17_Y4_N27
\inst15|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst15|inst11~feeder_combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst11~q\);

-- Location: FF_X16_Y4_N11
\inst15|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst7|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst15~q\);

-- Location: LCCOMB_X17_Y4_N12
\inst2|inst30|inst8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst30|inst8~3_combout\ = (\inst36|inst7|inst1|inst2~combout\ & (\inst15|inst15~q\ & (\inst36|inst|inst|inst2~combout\ $ (!\inst15|inst11~q\)))) # (!\inst36|inst7|inst1|inst2~combout\ & (!\inst15|inst15~q\ & (\inst36|inst|inst|inst2~combout\ $ 
-- (!\inst15|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|inst7|inst1|inst2~combout\,
	datab => \inst36|inst|inst|inst2~combout\,
	datac => \inst15|inst11~q\,
	datad => \inst15|inst15~q\,
	combout => \inst2|inst30|inst8~3_combout\);

-- Location: LCCOMB_X17_Y4_N16
\inst15|inst10~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|inst10~feeder_combout\ = \inst36|inst3|inst1|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst36|inst3|inst1|inst2~combout\,
	combout => \inst15|inst10~feeder_combout\);

-- Location: FF_X17_Y4_N17
\inst15|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst15|inst10~feeder_combout\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst10~q\);

-- Location: LCCOMB_X17_Y4_N22
\inst2|inst30|inst8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst30|inst8~4_combout\ = (\inst2|inst30|inst8~3_combout\ & (!\inst36|inst5|inst1|inst2~0_combout\ & (\inst36|inst3|inst1|inst2~combout\ $ (!\inst15|inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst30|inst8~3_combout\,
	datab => \inst36|inst3|inst1|inst2~combout\,
	datac => \inst36|inst5|inst1|inst2~0_combout\,
	datad => \inst15|inst10~q\,
	combout => \inst2|inst30|inst8~4_combout\);

-- Location: LCCOMB_X15_Y4_N24
\inst2|inst30|inst8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst30|inst8~5_combout\ = (\inst2|inst30|inst8~4_combout\ & (\inst36|inst29~combout\ $ (\inst36|inst9|inst1|inst~combout\ $ (!\inst15|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|inst29~combout\,
	datab => \inst36|inst9|inst1|inst~combout\,
	datac => \inst15|inst17~q\,
	datad => \inst2|inst30|inst8~4_combout\,
	combout => \inst2|inst30|inst8~5_combout\);

-- Location: LCCOMB_X15_Y4_N2
\inst2|inst30|inst8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst30|inst8~6_combout\ = (\inst2|inst30|inst8~2_combout\ & (\inst2|inst30|inst8~5_combout\ & (\inst15|inst18~q\ $ (!\inst36|inst17|inst1|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst30|inst8~2_combout\,
	datab => \inst15|inst18~q\,
	datac => \inst36|inst17|inst1|inst2~combout\,
	datad => \inst2|inst30|inst8~5_combout\,
	combout => \inst2|inst30|inst8~6_combout\);

-- Location: FF_X16_Y4_N5
\inst15|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst36|inst6|inst1|inst2~combout\,
	clrn => \START~inputclkctrl_outclk\,
	ena => \inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst12~q\);

-- Location: LCCOMB_X17_Y4_N4
\inst2|inst21|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst21|inst~combout\ = \inst36|inst6|inst1|inst2~combout\ $ (\inst15|inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst36|inst6|inst1|inst2~combout\,
	datac => \inst15|inst12~q\,
	combout => \inst2|inst21|inst~combout\);

-- Location: LCCOMB_X16_Y4_N2
\inst1|inst30|inst8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst30|inst8~3_combout\ = (\inst55|inst15~q\ & (\inst15|inst15~q\ & (\inst55|inst14~q\ $ (!\inst15|inst14~q\)))) # (!\inst55|inst15~q\ & (!\inst15|inst15~q\ & (\inst55|inst14~q\ $ (!\inst15|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|inst15~q\,
	datab => \inst15|inst15~q\,
	datac => \inst55|inst14~q\,
	datad => \inst15|inst14~q\,
	combout => \inst1|inst30|inst8~3_combout\);

-- Location: LCCOMB_X16_Y4_N12
\inst1|inst30|inst8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst30|inst8~2_combout\ = (\inst55|inst17~q\ & (\inst15|inst17~q\ & (\inst55|inst16~q\ $ (!\inst15|inst16~q\)))) # (!\inst55|inst17~q\ & (!\inst15|inst17~q\ & (\inst55|inst16~q\ $ (!\inst15|inst16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|inst17~q\,
	datab => \inst15|inst17~q\,
	datac => \inst55|inst16~q\,
	datad => \inst15|inst16~q\,
	combout => \inst1|inst30|inst8~2_combout\);

-- Location: LCCOMB_X14_Y4_N24
\inst1|inst30|inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst30|inst8~0_combout\ = (\inst15|inst21~q\ & (\inst55|inst21~q\ & (\inst15|inst20~q\ $ (!\inst55|inst20~q\)))) # (!\inst15|inst21~q\ & (!\inst55|inst21~q\ & (\inst15|inst20~q\ $ (!\inst55|inst20~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst21~q\,
	datab => \inst15|inst20~q\,
	datac => \inst55|inst20~q\,
	datad => \inst55|inst21~q\,
	combout => \inst1|inst30|inst8~0_combout\);

-- Location: LCCOMB_X15_Y4_N14
\inst1|inst30|inst8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst30|inst8~1_combout\ = (\inst55|inst18~q\ & (\inst15|inst18~q\ & (\inst55|inst19~q\ $ (!\inst15|inst19~q\)))) # (!\inst55|inst18~q\ & (!\inst15|inst18~q\ & (\inst55|inst19~q\ $ (!\inst15|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|inst18~q\,
	datab => \inst15|inst18~q\,
	datac => \inst55|inst19~q\,
	datad => \inst15|inst19~q\,
	combout => \inst1|inst30|inst8~1_combout\);

-- Location: LCCOMB_X17_Y4_N14
\inst1|inst30|inst8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst30|inst8~4_combout\ = (\inst1|inst30|inst8~3_combout\ & (\inst1|inst30|inst8~2_combout\ & (\inst1|inst30|inst8~0_combout\ & \inst1|inst30|inst8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst30|inst8~3_combout\,
	datab => \inst1|inst30|inst8~2_combout\,
	datac => \inst1|inst30|inst8~0_combout\,
	datad => \inst1|inst30|inst8~1_combout\,
	combout => \inst1|inst30|inst8~4_combout\);

-- Location: LCCOMB_X17_Y4_N10
\inst1|inst30|inst8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst30|inst8~5_combout\ = (\inst55|inst10~q\ & (\inst15|inst10~q\ & (\inst15|inst12~q\ $ (!\inst55|inst12~q\)))) # (!\inst55|inst10~q\ & (!\inst15|inst10~q\ & (\inst15|inst12~q\ $ (!\inst55|inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|inst10~q\,
	datab => \inst15|inst10~q\,
	datac => \inst15|inst12~q\,
	datad => \inst55|inst12~q\,
	combout => \inst1|inst30|inst8~5_combout\);

-- Location: LCCOMB_X17_Y4_N28
\inst1|inst30|inst8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst30|inst8~6_combout\ = (\inst1|inst30|inst8~4_combout\ & (\inst1|inst30|inst8~5_combout\ & (\inst15|inst11~q\ $ (!\inst55|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst11~q\,
	datab => \inst1|inst30|inst8~4_combout\,
	datac => \inst55|inst11~q\,
	datad => \inst1|inst30|inst8~5_combout\,
	combout => \inst1|inst30|inst8~6_combout\);

-- Location: LCCOMB_X17_Y4_N30
inst8 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (\inst1|inst30|inst8~6_combout\) # ((\inst2|inst30|inst8~1_combout\ & (\inst2|inst30|inst8~6_combout\ & !\inst2|inst21|inst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst30|inst8~1_combout\,
	datab => \inst2|inst30|inst8~6_combout\,
	datac => \inst2|inst21|inst~combout\,
	datad => \inst1|inst30|inst8~6_combout\,
	combout => \inst8~combout\);

-- Location: IOIBUF_X14_Y0_N1
\DATA[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(11),
	o => \DATA[11]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\DATA[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(10),
	o => \DATA[10]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\DATA[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(9),
	o => \DATA[9]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\DATA[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(8),
	o => \DATA[8]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\DATA[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(7),
	o => \DATA[7]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\DATA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(6),
	o => \DATA[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\DATA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(5),
	o => \DATA[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\DATA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(4),
	o => \DATA[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\DATA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(3),
	o => \DATA[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\DATA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(2),
	o => \DATA[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\DATA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(1),
	o => \DATA[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\DATA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(0),
	o => \DATA[0]~input_o\);

ww_PAUSA <= \PAUSA~output_o\;

ww_ERROR <= \ERROR~output_o\;

ww_FIN <= \FIN~output_o\;

DATA(11) <= \DATA[11]~output_o\;

DATA(10) <= \DATA[10]~output_o\;

DATA(9) <= \DATA[9]~output_o\;

DATA(8) <= \DATA[8]~output_o\;

DATA(7) <= \DATA[7]~output_o\;

DATA(6) <= \DATA[6]~output_o\;

DATA(5) <= \DATA[5]~output_o\;

DATA(4) <= \DATA[4]~output_o\;

DATA(3) <= \DATA[3]~output_o\;

DATA(2) <= \DATA[2]~output_o\;

DATA(1) <= \DATA[1]~output_o\;

DATA(0) <= \DATA[0]~output_o\;
END structure;


