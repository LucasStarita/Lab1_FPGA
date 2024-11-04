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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/01/2024 19:37:21"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PARTE_C IS
    PORT (
	C0 : OUT std_logic;
	ASINC : IN std_logic;
	CLK : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	Bin : IN std_logic;
	C1 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	C2 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	C3 : OUT std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	B : OUT std_logic;
	Z : OUT std_logic
	);
END PARTE_C;

-- Design Ports Information
-- C0	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASINC	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bin	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PARTE_C IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_ASINC : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_Bin : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ASINC~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst3|Bout~1_combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \C0~output_o\ : std_logic;
SIGNAL \C1~output_o\ : std_logic;
SIGNAL \C2~output_o\ : std_logic;
SIGNAL \C3~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Bin~input_o\ : std_logic;
SIGNAL \inst17~feeder_combout\ : std_logic;
SIGNAL \ASINC~input_o\ : std_logic;
SIGNAL \ASINC~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst8~feeder_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst|Diff~0_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst|Bout~0_combout\ : std_logic;
SIGNAL \inst1|Diff~combout\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst10~feeder_combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst6~feeder_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst3|Diff~0_combout\ : std_logic;
SIGNAL \inst3|Diff~combout\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst3|Bout~0_combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst3|Bout~2_combout\ : std_logic;
SIGNAL \inst4|Diff~combout\ : std_logic;
SIGNAL \inst15~q\ : std_logic;
SIGNAL \inst4|Bout~0_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst18~combout\ : std_logic;
SIGNAL \ALT_INV_inst18~combout\ : std_logic;

BEGIN

C0 <= ww_C0;
ww_ASINC <= ASINC;
ww_CLK <= CLK;
ww_A0 <= A0;
ww_B0 <= B0;
ww_Bin <= Bin;
C1 <= ww_C1;
ww_A1 <= A1;
ww_B1 <= B1;
C2 <= ww_C2;
ww_A2 <= A2;
ww_B2 <= B2;
C3 <= ww_C3;
ww_A3 <= A3;
ww_B3 <= B3;
B <= ww_B;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\ASINC~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ASINC~input_o\);
\ALT_INV_inst18~combout\ <= NOT \inst18~combout\;

-- Location: FF_X75_Y1_N27
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \A3~input_o\,
	clrn => \ASINC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X75_Y1_N10
\inst3|Bout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Bout~1_combout\ = (\inst10~q\) # (!\inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~q\,
	datad => \inst6~q\,
	combout => \inst3|Bout~1_combout\);

-- Location: IOIBUF_X94_Y0_N8
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOOBUF_X83_Y0_N16
\C0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \C0~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\C1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~q\,
	devoe => ww_devoe,
	o => \C1~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\C2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~q\,
	devoe => ww_devoe,
	o => \C2~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\C3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~q\,
	devoe => ww_devoe,
	o => \C3~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst18~combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X74_Y0_N15
\Bin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bin,
	o => \Bin~input_o\);

-- Location: LCCOMB_X75_Y1_N2
\inst17~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17~feeder_combout\ = \Bin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bin~input_o\,
	combout => \inst17~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N8
\ASINC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASINC,
	o => \ASINC~input_o\);

-- Location: CLKCTRL_G2
\ASINC~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ASINC~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ASINC~inputclkctrl_outclk\);

-- Location: FF_X75_Y1_N3
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17~feeder_combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: IOIBUF_X56_Y0_N22
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: FF_X75_Y1_N19
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \A0~input_o\,
	clrn => \ASINC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: IOIBUF_X56_Y0_N15
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X75_Y1_N8
\inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~feeder_combout\ = \B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B0~input_o\,
	combout => \inst8~feeder_combout\);

-- Location: FF_X75_Y1_N9
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8~feeder_combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: LCCOMB_X75_Y1_N18
\inst|Diff~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Diff~0_combout\ = \inst17~q\ $ (\inst2~q\ $ (\inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17~q\,
	datac => \inst2~q\,
	datad => \inst8~q\,
	combout => \inst|Diff~0_combout\);

-- Location: FF_X75_Y1_N13
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Diff~0_combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: IOIBUF_X74_Y73_N15
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: FF_X75_Y1_N15
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \B1~input_o\,
	clrn => \ASINC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X75_Y1_N12
\inst|Bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Bout~0_combout\ = (\inst17~q\ & ((\inst8~q\) # (!\inst2~q\))) # (!\inst17~q\ & (\inst8~q\ & !\inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~q\,
	datab => \inst8~q\,
	datad => \inst2~q\,
	combout => \inst|Bout~0_combout\);

-- Location: LCCOMB_X75_Y1_N4
\inst1|Diff\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Diff~combout\ = \inst5~q\ $ (\inst9~q\ $ (\inst|Bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst9~q\,
	datad => \inst|Bout~0_combout\,
	combout => \inst1|Diff~combout\);

-- Location: FF_X75_Y1_N11
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Diff~combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: IOIBUF_X67_Y0_N15
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X75_Y1_N0
\inst10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~feeder_combout\ = \B2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B2~input_o\,
	combout => \inst10~feeder_combout\);

-- Location: FF_X75_Y1_N1
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10~feeder_combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: IOIBUF_X81_Y0_N22
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X75_Y1_N6
\inst6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~feeder_combout\ = \A2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A2~input_o\,
	combout => \inst6~feeder_combout\);

-- Location: FF_X75_Y1_N7
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6~feeder_combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X75_Y1_N26
\inst3|Diff~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Diff~0_combout\ = \inst10~q\ $ (\inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~q\,
	datad => \inst6~q\,
	combout => \inst3|Diff~0_combout\);

-- Location: LCCOMB_X75_Y1_N28
\inst3|Diff\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Diff~combout\ = \inst3|Diff~0_combout\ $ (((\inst5~q\ & (\inst9~q\ & \inst|Bout~0_combout\)) # (!\inst5~q\ & ((\inst9~q\) # (\inst|Bout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst9~q\,
	datac => \inst3|Diff~0_combout\,
	datad => \inst|Bout~0_combout\,
	combout => \inst3|Diff~combout\);

-- Location: FF_X75_Y1_N29
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Diff~combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

-- Location: IOIBUF_X83_Y0_N1
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: FF_X75_Y1_N5
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \B3~input_o\,
	clrn => \ASINC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LCCOMB_X75_Y1_N16
\inst3|Bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Bout~0_combout\ = (\inst10~q\ & !\inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~q\,
	datad => \inst6~q\,
	combout => \inst3|Bout~0_combout\);

-- Location: IOIBUF_X85_Y0_N8
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: FF_X75_Y1_N21
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \A1~input_o\,
	clrn => \ASINC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X75_Y1_N20
\inst3|Bout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Bout~2_combout\ = (\inst3|Bout~1_combout\ & ((\inst9~q\ & ((\inst|Bout~0_combout\) # (!\inst5~q\))) # (!\inst9~q\ & (!\inst5~q\ & \inst|Bout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Bout~1_combout\,
	datab => \inst9~q\,
	datac => \inst5~q\,
	datad => \inst|Bout~0_combout\,
	combout => \inst3|Bout~2_combout\);

-- Location: LCCOMB_X75_Y1_N30
\inst4|Diff\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Diff~combout\ = \inst7~q\ $ (\inst11~q\ $ (((\inst3|Bout~0_combout\) # (\inst3|Bout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst11~q\,
	datac => \inst3|Bout~0_combout\,
	datad => \inst3|Bout~2_combout\,
	combout => \inst4|Diff~combout\);

-- Location: FF_X75_Y1_N31
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Diff~combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

-- Location: LCCOMB_X75_Y1_N24
\inst4|Bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Bout~0_combout\ = (\inst7~q\ & (\inst11~q\ & ((\inst3|Bout~0_combout\) # (\inst3|Bout~2_combout\)))) # (!\inst7~q\ & ((\inst11~q\) # ((\inst3|Bout~0_combout\) # (\inst3|Bout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst11~q\,
	datac => \inst3|Bout~0_combout\,
	datad => \inst3|Bout~2_combout\,
	combout => \inst4|Bout~0_combout\);

-- Location: FF_X75_Y1_N25
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Bout~0_combout\,
	clrn => \ASINC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X75_Y1_N22
inst18 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18~combout\ = (\inst|Diff~0_combout\) # ((\inst4|Diff~combout\) # ((\inst3|Diff~combout\) # (\inst1|Diff~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Diff~0_combout\,
	datab => \inst4|Diff~combout\,
	datac => \inst3|Diff~combout\,
	datad => \inst1|Diff~combout\,
	combout => \inst18~combout\);

ww_C0 <= \C0~output_o\;

ww_C1 <= \C1~output_o\;

ww_C2 <= \C2~output_o\;

ww_C3 <= \C3~output_o\;

ww_B <= \B~output_o\;

ww_Z <= \Z~output_o\;
END structure;


