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

-- DATE "10/24/2024 12:58:22"

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

ENTITY 	PARTE_D_TEMPLATE IS
    PORT (
	clk : IN std_logic;
	X : IN std_logic;
	reset : IN std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic
	);
END PARTE_D_TEMPLATE;

-- Design Ports Information
-- LED1	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PARTE_D_TEMPLATE IS
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
SIGNAL ww_X : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \X~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \LED4~output_o\ : std_logic;
SIGNAL \state.state_bit_2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.state_bit_2~q\ : std_logic;
SIGNAL \state.state_bit_0~0_combout\ : std_logic;
SIGNAL \state.state_bit_0~q\ : std_logic;
SIGNAL \state.state_bit_1~0_combout\ : std_logic;
SIGNAL \state.state_bit_1~q\ : std_logic;
SIGNAL \LED1~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \state.D~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_LED1~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_X <= X;
ww_reset <= reset;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_LED1~0_combout\ <= NOT \LED1~0_combout\;

-- Location: IOIBUF_X0_Y24_N22
\X~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y25_N16
\LED1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED1~0_combout\,
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\LED2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.state_bit_0~q\,
	devoe => ww_devoe,
	o => \LED2~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LED3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~combout\,
	devoe => ww_devoe,
	o => \LED3~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\LED4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.D~0_combout\,
	devoe => ww_devoe,
	o => \LED4~output_o\);

-- Location: LCCOMB_X1_Y24_N2
\state.state_bit_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_2~0_combout\ = (\state.state_bit_2~q\ & (((!\state.state_bit_0~q\)))) # (!\state.state_bit_2~q\ & (\X~input_o\ & (\state.state_bit_0~q\ $ (!\state.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \state.state_bit_0~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_1~q\,
	combout => \state.state_bit_2~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y24_N3
\state.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_2~q\);

-- Location: LCCOMB_X1_Y24_N28
\state.state_bit_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_0~0_combout\ = (\state.state_bit_2~q\ & (((\state.state_bit_1~q\)))) # (!\state.state_bit_2~q\ & ((\X~input_o\ & ((\state.state_bit_0~q\))) # (!\X~input_o\ & (!\state.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \state.state_bit_1~q\,
	datac => \state.state_bit_0~q\,
	datad => \state.state_bit_2~q\,
	combout => \state.state_bit_0~0_combout\);

-- Location: FF_X1_Y24_N29
\state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_0~q\);

-- Location: LCCOMB_X1_Y24_N20
\state.state_bit_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_1~0_combout\ = (\state.state_bit_2~q\ & (((\state.state_bit_1~q\)))) # (!\state.state_bit_2~q\ & ((\X~input_o\ & ((!\state.state_bit_1~q\))) # (!\X~input_o\ & (\state.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \state.state_bit_0~q\,
	datac => \state.state_bit_1~q\,
	datad => \state.state_bit_2~q\,
	combout => \state.state_bit_1~0_combout\);

-- Location: FF_X1_Y24_N21
\state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_1~q\);

-- Location: LCCOMB_X1_Y24_N18
\LED1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED1~0_combout\ = (!\state.state_bit_1~q\ & ((!\state.state_bit_0~q\) # (!\state.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state_bit_1~q\,
	datab => \state.state_bit_2~q\,
	datac => \state.state_bit_0~q\,
	combout => \LED1~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
WideOr1 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\state.state_bit_2~q\ & (!\state.state_bit_1~q\)) # (!\state.state_bit_2~q\ & ((\state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state_bit_1~q\,
	datab => \state.state_bit_2~q\,
	datac => \state.state_bit_0~q\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X1_Y24_N26
\state.D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.D~0_combout\ = (!\state.state_bit_2~q\ & \state.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state_bit_2~q\,
	datac => \state.state_bit_1~q\,
	combout => \state.D~0_combout\);

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;

ww_LED4 <= \LED4~output_o\;
END structure;


