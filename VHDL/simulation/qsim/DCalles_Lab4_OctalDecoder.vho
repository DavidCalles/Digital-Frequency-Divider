-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/15/2021 17:00:10"

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

ENTITY 	DCalles_Lab4_OctalDecoder IS
    PORT (
	clk : IN std_logic;
	X : IN std_logic_vector(2 DOWNTO 0);
	Y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DCalles_Lab4_OctalDecoder;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DCalles_Lab4_OctalDecoder IS
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
SIGNAL ww_X : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Counter_28bit1|DFF0|q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF0|q~q\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF1|q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF1|q~feeder_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF1|q~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF2|q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF2|q~feeder_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF2|q~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF3|q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF3|q~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF4|q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF4|q~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF5|q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF5|q~feeder_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF5|q~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF6|q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF6|q~feeder_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF6|q~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF7|q~q\ : std_logic;
SIGNAL \Counter_28bit1|DFF7|q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF7|q~feeder_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF7|q~DUPLICATE_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF7|ALT_INV_q~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_X[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[2]~input_o\ : std_logic;
SIGNAL \Counter_28bit1|DFF7|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF6|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF5|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF2|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF1|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_28bit1|DFF7|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_28bit1|DFF6|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_28bit1|DFF5|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_28bit1|DFF4|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_28bit1|DFF3|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_28bit1|DFF2|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_28bit1|DFF1|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_28bit1|DFF0|ALT_INV_q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_X <= X;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Counter_28bit1|DFF7|ALT_INV_q~DUPLICATE_q\ <= NOT \Counter_28bit1|DFF7|q~DUPLICATE_q\;
\ALT_INV_X[1]~input_o\ <= NOT \X[1]~input_o\;
\ALT_INV_X[0]~input_o\ <= NOT \X[0]~input_o\;
\ALT_INV_X[2]~input_o\ <= NOT \X[2]~input_o\;
\Counter_28bit1|DFF7|ALT_INV_q~0_combout\ <= NOT \Counter_28bit1|DFF7|q~0_combout\;
\Counter_28bit1|DFF6|ALT_INV_q~0_combout\ <= NOT \Counter_28bit1|DFF6|q~0_combout\;
\Counter_28bit1|DFF5|ALT_INV_q~0_combout\ <= NOT \Counter_28bit1|DFF5|q~0_combout\;
\Counter_28bit1|DFF2|ALT_INV_q~0_combout\ <= NOT \Counter_28bit1|DFF2|q~0_combout\;
\Counter_28bit1|DFF1|ALT_INV_q~0_combout\ <= NOT \Counter_28bit1|DFF1|q~0_combout\;
\Counter_28bit1|DFF7|ALT_INV_q~q\ <= NOT \Counter_28bit1|DFF7|q~q\;
\Counter_28bit1|DFF6|ALT_INV_q~q\ <= NOT \Counter_28bit1|DFF6|q~q\;
\Counter_28bit1|DFF5|ALT_INV_q~q\ <= NOT \Counter_28bit1|DFF5|q~q\;
\Counter_28bit1|DFF4|ALT_INV_q~q\ <= NOT \Counter_28bit1|DFF4|q~q\;
\Counter_28bit1|DFF3|ALT_INV_q~q\ <= NOT \Counter_28bit1|DFF3|q~q\;
\Counter_28bit1|DFF2|ALT_INV_q~q\ <= NOT \Counter_28bit1|DFF2|q~q\;
\Counter_28bit1|DFF1|ALT_INV_q~q\ <= NOT \Counter_28bit1|DFF1|q~q\;
\Counter_28bit1|DFF0|ALT_INV_q~q\ <= NOT \Counter_28bit1|DFF0|q~q\;

-- Location: IOOBUF_X89_Y13_N39
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOOBUF_X89_Y16_N39
\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X89_Y13_N5
\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOOBUF_X89_Y16_N56
\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(3));

-- Location: IOOBUF_X89_Y13_N56
\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(4));

-- Location: IOOBUF_X89_Y13_N22
\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(5));

-- Location: IOOBUF_X89_Y16_N5
\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(6));

-- Location: IOOBUF_X89_Y16_N22
\Y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(7));

-- Location: IOIBUF_X89_Y15_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X88_Y15_N15
\Counter_28bit1|DFF0|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF0|q~0_combout\ = ( !\Counter_28bit1|DFF0|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF0|ALT_INV_q~q\,
	combout => \Counter_28bit1|DFF0|q~0_combout\);

-- Location: FF_X88_Y15_N56
\Counter_28bit1|DFF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Counter_28bit1|DFF0|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF0|q~q\);

-- Location: IOIBUF_X89_Y15_N4
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LABCELL_X88_Y15_N48
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( !\X[2]~input_o\ & ( !\X[0]~input_o\ & ( (\Counter_28bit1|DFF0|q~q\ & !\X[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_28bit1|DFF0|ALT_INV_q~q\,
	datac => \ALT_INV_X[1]~input_o\,
	datae => \ALT_INV_X[2]~input_o\,
	dataf => \ALT_INV_X[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X85_Y15_N57
\Counter_28bit1|DFF1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF1|q~0_combout\ = ( !\Counter_28bit1|DFF1|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF1|ALT_INV_q~q\,
	combout => \Counter_28bit1|DFF1|q~0_combout\);

-- Location: LABCELL_X85_Y15_N51
\Counter_28bit1|DFF1|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF1|q~feeder_combout\ = ( \Counter_28bit1|DFF1|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF1|ALT_INV_q~0_combout\,
	combout => \Counter_28bit1|DFF1|q~feeder_combout\);

-- Location: FF_X85_Y15_N53
\Counter_28bit1|DFF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_28bit1|DFF0|ALT_INV_q~q\,
	d => \Counter_28bit1|DFF1|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF1|q~q\);

-- Location: MLABCELL_X84_Y15_N9
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \X[0]~input_o\ & ( (!\X[1]~input_o\ & (\Counter_28bit1|DFF1|q~q\ & !\X[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[1]~input_o\,
	datab => \Counter_28bit1|DFF1|ALT_INV_q~q\,
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X85_Y15_N42
\Counter_28bit1|DFF2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF2|q~0_combout\ = !\Counter_28bit1|DFF2|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_28bit1|DFF2|ALT_INV_q~q\,
	combout => \Counter_28bit1|DFF2|q~0_combout\);

-- Location: LABCELL_X85_Y15_N21
\Counter_28bit1|DFF2|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF2|q~feeder_combout\ = ( \Counter_28bit1|DFF2|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF2|ALT_INV_q~0_combout\,
	combout => \Counter_28bit1|DFF2|q~feeder_combout\);

-- Location: FF_X85_Y15_N23
\Counter_28bit1|DFF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_28bit1|DFF1|ALT_INV_q~q\,
	d => \Counter_28bit1|DFF2|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF2|q~q\);

-- Location: MLABCELL_X84_Y15_N18
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \X[1]~input_o\ & ( (!\X[0]~input_o\ & (!\X[2]~input_o\ & \Counter_28bit1|DFF2|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[0]~input_o\,
	datab => \ALT_INV_X[2]~input_o\,
	datac => \Counter_28bit1|DFF2|ALT_INV_q~q\,
	dataf => \ALT_INV_X[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X84_Y15_N51
\Counter_28bit1|DFF3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF3|q~0_combout\ = ( !\Counter_28bit1|DFF3|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF3|ALT_INV_q~q\,
	combout => \Counter_28bit1|DFF3|q~0_combout\);

-- Location: FF_X84_Y15_N38
\Counter_28bit1|DFF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_28bit1|DFF2|ALT_INV_q~q\,
	asdata => \Counter_28bit1|DFF3|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF3|q~q\);

-- Location: MLABCELL_X84_Y15_N33
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \X[0]~input_o\ & ( (\X[1]~input_o\ & (!\X[2]~input_o\ & \Counter_28bit1|DFF3|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000000000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[1]~input_o\,
	datac => \ALT_INV_X[2]~input_o\,
	datad => \Counter_28bit1|DFF3|ALT_INV_q~q\,
	datae => \ALT_INV_X[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X84_Y15_N27
\Counter_28bit1|DFF4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF4|q~0_combout\ = !\Counter_28bit1|DFF4|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_28bit1|DFF4|ALT_INV_q~q\,
	combout => \Counter_28bit1|DFF4|q~0_combout\);

-- Location: FF_X84_Y15_N8
\Counter_28bit1|DFF4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_28bit1|DFF3|ALT_INV_q~q\,
	asdata => \Counter_28bit1|DFF4|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF4|q~q\);

-- Location: LABCELL_X88_Y15_N33
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \X[2]~input_o\ & ( !\X[1]~input_o\ & ( (\Counter_28bit1|DFF4|q~q\ & !\X[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_28bit1|DFF4|ALT_INV_q~q\,
	datac => \ALT_INV_X[0]~input_o\,
	datae => \ALT_INV_X[2]~input_o\,
	dataf => \ALT_INV_X[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X83_Y15_N15
\Counter_28bit1|DFF5|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF5|q~0_combout\ = !\Counter_28bit1|DFF5|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_28bit1|DFF5|ALT_INV_q~q\,
	combout => \Counter_28bit1|DFF5|q~0_combout\);

-- Location: LABCELL_X83_Y15_N18
\Counter_28bit1|DFF5|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF5|q~feeder_combout\ = ( \Counter_28bit1|DFF5|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF5|ALT_INV_q~0_combout\,
	combout => \Counter_28bit1|DFF5|q~feeder_combout\);

-- Location: FF_X83_Y15_N20
\Counter_28bit1|DFF5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_28bit1|DFF4|ALT_INV_q~q\,
	d => \Counter_28bit1|DFF5|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF5|q~q\);

-- Location: LABCELL_X88_Y15_N45
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \X[2]~input_o\ & ( \X[0]~input_o\ & ( (!\X[1]~input_o\ & \Counter_28bit1|DFF5|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[1]~input_o\,
	datac => \Counter_28bit1|DFF5|ALT_INV_q~q\,
	datae => \ALT_INV_X[2]~input_o\,
	dataf => \ALT_INV_X[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X83_Y15_N54
\Counter_28bit1|DFF6|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF6|q~0_combout\ = !\Counter_28bit1|DFF6|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_28bit1|DFF6|ALT_INV_q~q\,
	combout => \Counter_28bit1|DFF6|q~0_combout\);

-- Location: LABCELL_X83_Y15_N42
\Counter_28bit1|DFF6|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF6|q~feeder_combout\ = ( \Counter_28bit1|DFF6|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF6|ALT_INV_q~0_combout\,
	combout => \Counter_28bit1|DFF6|q~feeder_combout\);

-- Location: FF_X83_Y15_N44
\Counter_28bit1|DFF6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_28bit1|DFF5|ALT_INV_q~q\,
	d => \Counter_28bit1|DFF6|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF6|q~q\);

-- Location: MLABCELL_X84_Y15_N21
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Counter_28bit1|DFF6|q~q\ & ( (!\X[0]~input_o\ & (\X[2]~input_o\ & \X[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[0]~input_o\,
	datab => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_X[1]~input_o\,
	dataf => \Counter_28bit1|DFF6|ALT_INV_q~q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X82_Y15_N44
\Counter_28bit1|DFF7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_28bit1|DFF6|ALT_INV_q~q\,
	d => \Counter_28bit1|DFF7|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF7|q~q\);

-- Location: MLABCELL_X82_Y15_N57
\Counter_28bit1|DFF7|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF7|q~0_combout\ = ( !\Counter_28bit1|DFF7|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF7|ALT_INV_q~q\,
	combout => \Counter_28bit1|DFF7|q~0_combout\);

-- Location: MLABCELL_X82_Y15_N42
\Counter_28bit1|DFF7|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_28bit1|DFF7|q~feeder_combout\ = ( \Counter_28bit1|DFF7|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_28bit1|DFF7|ALT_INV_q~0_combout\,
	combout => \Counter_28bit1|DFF7|q~feeder_combout\);

-- Location: FF_X82_Y15_N43
\Counter_28bit1|DFF7|q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_28bit1|DFF6|ALT_INV_q~q\,
	d => \Counter_28bit1|DFF7|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_28bit1|DFF7|q~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y15_N45
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \X[0]~input_o\ & ( \X[2]~input_o\ & ( (\X[1]~input_o\ & \Counter_28bit1|DFF7|q~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[1]~input_o\,
	datac => \Counter_28bit1|DFF7|ALT_INV_q~DUPLICATE_q\,
	datae => \ALT_INV_X[0]~input_o\,
	dataf => \ALT_INV_X[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X29_Y4_N3
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


