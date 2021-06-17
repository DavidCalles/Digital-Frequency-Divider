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

-- DATE "06/17/2021 18:22:45"

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
	selector : IN std_logic_vector(2 DOWNTO 0);
	Y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DCalles_Lab4_OctalDecoder;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_selector : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Counter_32bit1|DFF0|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF0|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF0|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF1|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF1|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF2|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF2|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF2|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF3|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF3|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF3|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF4|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF4|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF4|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF5|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF5|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF5|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF6|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF6|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF6|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF7|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF7|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF7|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF8|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF8|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF8|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF9|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF9|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF9|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF10|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF10|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF10|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF11|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF11|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF12|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF12|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF12|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF13|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF13|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF14|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF14|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF14|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF15|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF15|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF15|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF16|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF16|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF16|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF17|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF17|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF17|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF18|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF18|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF18|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF19|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF19|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF19|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF20|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF20|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF20|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF21|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF21|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF21|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF22|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF22|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF22|q~q\ : std_logic;
SIGNAL \selector[2]~input_o\ : std_logic;
SIGNAL \selector[1]~input_o\ : std_logic;
SIGNAL \selector[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF23|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF23|q~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF24|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF24|q~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF25|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF25|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF25|q~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF26|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF26|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF26|q~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF27|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF27|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF27|q~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF28|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF28|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF28|q~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF29|q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF29|q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF29|q~feeder_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF29|q~DUPLICATE_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF29|ALT_INV_q~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_selector[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_selector[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_selector[2]~input_o\ : std_logic;
SIGNAL \Counter_32bit1|DFF0|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF2|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF3|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF4|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF5|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF6|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF7|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF8|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF9|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF10|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF12|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF14|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF15|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF16|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF17|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF18|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF19|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF20|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF21|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF29|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF28|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF27|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF26|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF25|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF22|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Counter_32bit1|DFF0|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF1|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF2|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF3|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF4|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF5|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF6|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF7|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF8|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF9|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF10|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF11|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF12|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF13|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF14|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF15|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF16|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF17|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF18|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF19|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF20|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF21|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF29|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF28|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF27|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF26|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF25|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF24|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF23|ALT_INV_q~q\ : std_logic;
SIGNAL \Counter_32bit1|DFF22|ALT_INV_q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_selector <= selector;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Counter_32bit1|DFF29|ALT_INV_q~DUPLICATE_q\ <= NOT \Counter_32bit1|DFF29|q~DUPLICATE_q\;
\ALT_INV_selector[1]~input_o\ <= NOT \selector[1]~input_o\;
\ALT_INV_selector[0]~input_o\ <= NOT \selector[0]~input_o\;
\ALT_INV_selector[2]~input_o\ <= NOT \selector[2]~input_o\;
\Counter_32bit1|DFF0|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF0|q~0_combout\;
\Counter_32bit1|DFF2|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF2|q~0_combout\;
\Counter_32bit1|DFF3|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF3|q~0_combout\;
\Counter_32bit1|DFF4|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF4|q~0_combout\;
\Counter_32bit1|DFF5|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF5|q~0_combout\;
\Counter_32bit1|DFF6|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF6|q~0_combout\;
\Counter_32bit1|DFF7|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF7|q~0_combout\;
\Counter_32bit1|DFF8|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF8|q~0_combout\;
\Counter_32bit1|DFF9|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF9|q~0_combout\;
\Counter_32bit1|DFF10|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF10|q~0_combout\;
\Counter_32bit1|DFF12|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF12|q~0_combout\;
\Counter_32bit1|DFF14|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF14|q~0_combout\;
\Counter_32bit1|DFF15|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF15|q~0_combout\;
\Counter_32bit1|DFF16|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF16|q~0_combout\;
\Counter_32bit1|DFF17|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF17|q~0_combout\;
\Counter_32bit1|DFF18|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF18|q~0_combout\;
\Counter_32bit1|DFF19|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF19|q~0_combout\;
\Counter_32bit1|DFF20|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF20|q~0_combout\;
\Counter_32bit1|DFF21|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF21|q~0_combout\;
\Counter_32bit1|DFF29|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF29|q~0_combout\;
\Counter_32bit1|DFF28|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF28|q~0_combout\;
\Counter_32bit1|DFF27|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF27|q~0_combout\;
\Counter_32bit1|DFF26|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF26|q~0_combout\;
\Counter_32bit1|DFF25|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF25|q~0_combout\;
\Counter_32bit1|DFF22|ALT_INV_q~0_combout\ <= NOT \Counter_32bit1|DFF22|q~0_combout\;
\Counter_32bit1|DFF0|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF0|q~q\;
\Counter_32bit1|DFF1|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF1|q~q\;
\Counter_32bit1|DFF2|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF2|q~q\;
\Counter_32bit1|DFF3|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF3|q~q\;
\Counter_32bit1|DFF4|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF4|q~q\;
\Counter_32bit1|DFF5|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF5|q~q\;
\Counter_32bit1|DFF6|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF6|q~q\;
\Counter_32bit1|DFF7|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF7|q~q\;
\Counter_32bit1|DFF8|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF8|q~q\;
\Counter_32bit1|DFF9|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF9|q~q\;
\Counter_32bit1|DFF10|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF10|q~q\;
\Counter_32bit1|DFF11|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF11|q~q\;
\Counter_32bit1|DFF12|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF12|q~q\;
\Counter_32bit1|DFF13|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF13|q~q\;
\Counter_32bit1|DFF14|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF14|q~q\;
\Counter_32bit1|DFF15|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF15|q~q\;
\Counter_32bit1|DFF16|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF16|q~q\;
\Counter_32bit1|DFF17|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF17|q~q\;
\Counter_32bit1|DFF18|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF18|q~q\;
\Counter_32bit1|DFF19|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF19|q~q\;
\Counter_32bit1|DFF20|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF20|q~q\;
\Counter_32bit1|DFF21|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF21|q~q\;
\Counter_32bit1|DFF29|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF29|q~q\;
\Counter_32bit1|DFF28|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF28|q~q\;
\Counter_32bit1|DFF27|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF27|q~q\;
\Counter_32bit1|DFF26|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF26|q~q\;
\Counter_32bit1|DFF25|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF25|q~q\;
\Counter_32bit1|DFF24|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF24|q~q\;
\Counter_32bit1|DFF23|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF23|q~q\;
\Counter_32bit1|DFF22|ALT_INV_q~q\ <= NOT \Counter_32bit1|DFF22|q~q\;

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X80_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X80_Y0_N19
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

-- Location: IOOBUF_X84_Y0_N2
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

-- Location: IOOBUF_X89_Y6_N5
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

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X33_Y2_N21
\Counter_32bit1|DFF0|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF0|q~0_combout\ = !\Counter_32bit1|DFF0|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF0|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF0|q~0_combout\);

-- Location: LABCELL_X33_Y2_N6
\Counter_32bit1|DFF0|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF0|q~feeder_combout\ = ( \Counter_32bit1|DFF0|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF0|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF0|q~feeder_combout\);

-- Location: FF_X33_Y2_N8
\Counter_32bit1|DFF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Counter_32bit1|DFF0|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF0|q~q\);

-- Location: LABCELL_X37_Y2_N57
\Counter_32bit1|DFF1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF1|q~0_combout\ = ( !\Counter_32bit1|DFF1|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF1|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF1|q~0_combout\);

-- Location: FF_X37_Y2_N44
\Counter_32bit1|DFF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF0|ALT_INV_q~q\,
	asdata => \Counter_32bit1|DFF1|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF1|q~q\);

-- Location: LABCELL_X37_Y2_N24
\Counter_32bit1|DFF2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF2|q~0_combout\ = !\Counter_32bit1|DFF2|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF2|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF2|q~0_combout\);

-- Location: LABCELL_X37_Y2_N48
\Counter_32bit1|DFF2|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF2|q~feeder_combout\ = ( \Counter_32bit1|DFF2|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF2|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF2|q~feeder_combout\);

-- Location: FF_X37_Y2_N50
\Counter_32bit1|DFF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF1|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF2|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF2|q~q\);

-- Location: LABCELL_X43_Y4_N27
\Counter_32bit1|DFF3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF3|q~0_combout\ = ( !\Counter_32bit1|DFF3|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF3|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF3|q~0_combout\);

-- Location: LABCELL_X43_Y4_N36
\Counter_32bit1|DFF3|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF3|q~feeder_combout\ = \Counter_32bit1|DFF3|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF3|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF3|q~feeder_combout\);

-- Location: FF_X43_Y4_N38
\Counter_32bit1|DFF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF2|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF3|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF3|q~q\);

-- Location: LABCELL_X43_Y4_N3
\Counter_32bit1|DFF4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF4|q~0_combout\ = !\Counter_32bit1|DFF4|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF4|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF4|q~0_combout\);

-- Location: LABCELL_X43_Y4_N48
\Counter_32bit1|DFF4|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF4|q~feeder_combout\ = \Counter_32bit1|DFF4|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_32bit1|DFF4|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF4|q~feeder_combout\);

-- Location: FF_X43_Y4_N50
\Counter_32bit1|DFF4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF3|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF4|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF4|q~q\);

-- Location: LABCELL_X45_Y4_N39
\Counter_32bit1|DFF5|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF5|q~0_combout\ = !\Counter_32bit1|DFF5|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_32bit1|DFF5|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF5|q~0_combout\);

-- Location: LABCELL_X45_Y4_N54
\Counter_32bit1|DFF5|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF5|q~feeder_combout\ = \Counter_32bit1|DFF5|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF5|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF5|q~feeder_combout\);

-- Location: FF_X45_Y4_N56
\Counter_32bit1|DFF5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF4|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF5|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF5|q~q\);

-- Location: LABCELL_X45_Y4_N18
\Counter_32bit1|DFF6|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF6|q~0_combout\ = !\Counter_32bit1|DFF6|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF6|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF6|q~0_combout\);

-- Location: LABCELL_X45_Y4_N33
\Counter_32bit1|DFF6|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF6|q~feeder_combout\ = \Counter_32bit1|DFF6|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF6|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF6|q~feeder_combout\);

-- Location: FF_X45_Y4_N35
\Counter_32bit1|DFF6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF5|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF6|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF6|q~q\);

-- Location: LABCELL_X46_Y4_N6
\Counter_32bit1|DFF7|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF7|q~0_combout\ = ( !\Counter_32bit1|DFF7|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF7|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF7|q~0_combout\);

-- Location: LABCELL_X46_Y4_N0
\Counter_32bit1|DFF7|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF7|q~feeder_combout\ = ( \Counter_32bit1|DFF7|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF7|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF7|q~feeder_combout\);

-- Location: FF_X46_Y4_N2
\Counter_32bit1|DFF7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF6|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF7|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF7|q~q\);

-- Location: LABCELL_X46_Y4_N33
\Counter_32bit1|DFF8|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF8|q~0_combout\ = !\Counter_32bit1|DFF8|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF8|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF8|q~0_combout\);

-- Location: LABCELL_X46_Y4_N42
\Counter_32bit1|DFF8|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF8|q~feeder_combout\ = \Counter_32bit1|DFF8|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF8|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF8|q~feeder_combout\);

-- Location: FF_X46_Y4_N44
\Counter_32bit1|DFF8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF7|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF8|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF8|q~q\);

-- Location: MLABCELL_X47_Y4_N39
\Counter_32bit1|DFF9|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF9|q~0_combout\ = ( !\Counter_32bit1|DFF9|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF9|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF9|q~0_combout\);

-- Location: MLABCELL_X47_Y4_N6
\Counter_32bit1|DFF9|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF9|q~feeder_combout\ = \Counter_32bit1|DFF9|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF9|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF9|q~feeder_combout\);

-- Location: FF_X47_Y4_N8
\Counter_32bit1|DFF9|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF8|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF9|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF9|q~q\);

-- Location: MLABCELL_X47_Y4_N30
\Counter_32bit1|DFF10|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF10|q~0_combout\ = !\Counter_32bit1|DFF10|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF10|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF10|q~0_combout\);

-- Location: MLABCELL_X47_Y4_N48
\Counter_32bit1|DFF10|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF10|q~feeder_combout\ = ( \Counter_32bit1|DFF10|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF10|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF10|q~feeder_combout\);

-- Location: FF_X47_Y4_N50
\Counter_32bit1|DFF10|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF9|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF10|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF10|q~q\);

-- Location: LABCELL_X48_Y4_N54
\Counter_32bit1|DFF11|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF11|q~0_combout\ = ( !\Counter_32bit1|DFF11|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF11|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF11|q~0_combout\);

-- Location: FF_X48_Y4_N17
\Counter_32bit1|DFF11|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF10|ALT_INV_q~q\,
	asdata => \Counter_32bit1|DFF11|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF11|q~q\);

-- Location: LABCELL_X48_Y4_N3
\Counter_32bit1|DFF12|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF12|q~0_combout\ = !\Counter_32bit1|DFF12|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF12|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF12|q~0_combout\);

-- Location: LABCELL_X48_Y4_N45
\Counter_32bit1|DFF12|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF12|q~feeder_combout\ = ( \Counter_32bit1|DFF12|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF12|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF12|q~feeder_combout\);

-- Location: FF_X48_Y4_N47
\Counter_32bit1|DFF12|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF11|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF12|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF12|q~q\);

-- Location: LABCELL_X51_Y3_N15
\Counter_32bit1|DFF13|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF13|q~0_combout\ = ( !\Counter_32bit1|DFF13|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF13|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF13|q~0_combout\);

-- Location: FF_X51_Y3_N50
\Counter_32bit1|DFF13|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF12|ALT_INV_q~q\,
	asdata => \Counter_32bit1|DFF13|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF13|q~q\);

-- Location: LABCELL_X51_Y3_N45
\Counter_32bit1|DFF14|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF14|q~0_combout\ = !\Counter_32bit1|DFF14|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF14|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF14|q~0_combout\);

-- Location: LABCELL_X51_Y3_N24
\Counter_32bit1|DFF14|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF14|q~feeder_combout\ = ( \Counter_32bit1|DFF14|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF14|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF14|q~feeder_combout\);

-- Location: FF_X51_Y3_N26
\Counter_32bit1|DFF14|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF13|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF14|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF14|q~q\);

-- Location: MLABCELL_X52_Y3_N42
\Counter_32bit1|DFF15|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF15|q~0_combout\ = ( !\Counter_32bit1|DFF15|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF15|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF15|q~0_combout\);

-- Location: MLABCELL_X52_Y3_N48
\Counter_32bit1|DFF15|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF15|q~feeder_combout\ = ( \Counter_32bit1|DFF15|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF15|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF15|q~feeder_combout\);

-- Location: FF_X52_Y3_N50
\Counter_32bit1|DFF15|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF14|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF15|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF15|q~q\);

-- Location: MLABCELL_X52_Y3_N27
\Counter_32bit1|DFF16|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF16|q~0_combout\ = !\Counter_32bit1|DFF16|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF16|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF16|q~0_combout\);

-- Location: MLABCELL_X52_Y3_N18
\Counter_32bit1|DFF16|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF16|q~feeder_combout\ = \Counter_32bit1|DFF16|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF16|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF16|q~feeder_combout\);

-- Location: FF_X52_Y3_N20
\Counter_32bit1|DFF16|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF15|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF16|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF16|q~q\);

-- Location: LABCELL_X53_Y3_N9
\Counter_32bit1|DFF17|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF17|q~0_combout\ = ( !\Counter_32bit1|DFF17|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF17|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF17|q~0_combout\);

-- Location: LABCELL_X53_Y3_N36
\Counter_32bit1|DFF17|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF17|q~feeder_combout\ = ( \Counter_32bit1|DFF17|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF17|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF17|q~feeder_combout\);

-- Location: FF_X53_Y3_N38
\Counter_32bit1|DFF17|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF16|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF17|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF17|q~q\);

-- Location: LABCELL_X53_Y3_N42
\Counter_32bit1|DFF18|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF18|q~0_combout\ = !\Counter_32bit1|DFF18|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF18|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF18|q~0_combout\);

-- Location: LABCELL_X53_Y3_N24
\Counter_32bit1|DFF18|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF18|q~feeder_combout\ = \Counter_32bit1|DFF18|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF18|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF18|q~feeder_combout\);

-- Location: FF_X53_Y3_N26
\Counter_32bit1|DFF18|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF17|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF18|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF18|q~q\);

-- Location: LABCELL_X56_Y3_N36
\Counter_32bit1|DFF19|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF19|q~0_combout\ = ( !\Counter_32bit1|DFF19|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF19|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF19|q~0_combout\);

-- Location: LABCELL_X56_Y3_N57
\Counter_32bit1|DFF19|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF19|q~feeder_combout\ = \Counter_32bit1|DFF19|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF19|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF19|q~feeder_combout\);

-- Location: FF_X56_Y3_N59
\Counter_32bit1|DFF19|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF18|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF19|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF19|q~q\);

-- Location: LABCELL_X56_Y3_N15
\Counter_32bit1|DFF20|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF20|q~0_combout\ = !\Counter_32bit1|DFF20|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF20|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF20|q~0_combout\);

-- Location: LABCELL_X56_Y3_N51
\Counter_32bit1|DFF20|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF20|q~feeder_combout\ = ( \Counter_32bit1|DFF20|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF20|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF20|q~feeder_combout\);

-- Location: FF_X56_Y3_N53
\Counter_32bit1|DFF20|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF19|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF20|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF20|q~q\);

-- Location: LABCELL_X57_Y3_N48
\Counter_32bit1|DFF21|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF21|q~0_combout\ = ( !\Counter_32bit1|DFF21|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF21|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF21|q~0_combout\);

-- Location: LABCELL_X57_Y3_N30
\Counter_32bit1|DFF21|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF21|q~feeder_combout\ = \Counter_32bit1|DFF21|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_32bit1|DFF21|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF21|q~feeder_combout\);

-- Location: FF_X57_Y3_N32
\Counter_32bit1|DFF21|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF20|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF21|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF21|q~q\);

-- Location: LABCELL_X57_Y3_N21
\Counter_32bit1|DFF22|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF22|q~0_combout\ = !\Counter_32bit1|DFF22|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_32bit1|DFF22|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF22|q~0_combout\);

-- Location: LABCELL_X57_Y3_N27
\Counter_32bit1|DFF22|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF22|q~feeder_combout\ = \Counter_32bit1|DFF22|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_32bit1|DFF22|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF22|q~feeder_combout\);

-- Location: FF_X57_Y3_N29
\Counter_32bit1|DFF22|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF21|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF22|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF22|q~q\);

-- Location: IOIBUF_X12_Y0_N18
\selector[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(2),
	o => \selector[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\selector[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(1),
	o => \selector[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\selector[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(0),
	o => \selector[0]~input_o\);

-- Location: LABCELL_X60_Y2_N27
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( !\selector[1]~input_o\ & ( !\selector[0]~input_o\ & ( (\Counter_32bit1|DFF22|q~q\ & !\selector[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_32bit1|DFF22|ALT_INV_q~q\,
	datac => \ALT_INV_selector[2]~input_o\,
	datae => \ALT_INV_selector[1]~input_o\,
	dataf => \ALT_INV_selector[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X59_Y3_N54
\Counter_32bit1|DFF23|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF23|q~0_combout\ = !\Counter_32bit1|DFF23|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF23|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF23|q~0_combout\);

-- Location: FF_X59_Y3_N50
\Counter_32bit1|DFF23|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF22|ALT_INV_q~q\,
	asdata => \Counter_32bit1|DFF23|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF23|q~q\);

-- Location: LABCELL_X60_Y2_N6
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\selector[1]~input_o\ & ( \Counter_32bit1|DFF23|q~q\ & ( (!\selector[2]~input_o\ & \selector[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_selector[2]~input_o\,
	datac => \ALT_INV_selector[0]~input_o\,
	datae => \ALT_INV_selector[1]~input_o\,
	dataf => \Counter_32bit1|DFF23|ALT_INV_q~q\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X60_Y3_N15
\Counter_32bit1|DFF24|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF24|q~0_combout\ = ( !\Counter_32bit1|DFF24|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF24|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF24|q~0_combout\);

-- Location: FF_X60_Y3_N50
\Counter_32bit1|DFF24|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF23|ALT_INV_q~q\,
	asdata => \Counter_32bit1|DFF24|q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF24|q~q\);

-- Location: LABCELL_X60_Y2_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \selector[1]~input_o\ & ( !\selector[0]~input_o\ & ( (\Counter_32bit1|DFF24|q~q\ & !\selector[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_32bit1|DFF24|ALT_INV_q~q\,
	datac => \ALT_INV_selector[2]~input_o\,
	datae => \ALT_INV_selector[1]~input_o\,
	dataf => \ALT_INV_selector[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X60_Y3_N27
\Counter_32bit1|DFF25|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF25|q~0_combout\ = !\Counter_32bit1|DFF25|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF25|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF25|q~0_combout\);

-- Location: LABCELL_X60_Y3_N54
\Counter_32bit1|DFF25|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF25|q~feeder_combout\ = ( \Counter_32bit1|DFF25|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF25|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF25|q~feeder_combout\);

-- Location: FF_X60_Y3_N56
\Counter_32bit1|DFF25|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF24|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF25|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF25|q~q\);

-- Location: LABCELL_X60_Y2_N54
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Counter_32bit1|DFF25|q~q\ & ( (\selector[1]~input_o\ & (!\selector[2]~input_o\ & \selector[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[1]~input_o\,
	datab => \ALT_INV_selector[2]~input_o\,
	datac => \ALT_INV_selector[0]~input_o\,
	datae => \Counter_32bit1|DFF25|ALT_INV_q~q\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X61_Y3_N12
\Counter_32bit1|DFF26|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF26|q~0_combout\ = ( !\Counter_32bit1|DFF26|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF26|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF26|q~0_combout\);

-- Location: LABCELL_X61_Y3_N57
\Counter_32bit1|DFF26|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF26|q~feeder_combout\ = \Counter_32bit1|DFF26|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_32bit1|DFF26|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF26|q~feeder_combout\);

-- Location: FF_X61_Y3_N59
\Counter_32bit1|DFF26|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF25|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF26|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF26|q~q\);

-- Location: LABCELL_X60_Y2_N48
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\selector[1]~input_o\ & ( !\selector[0]~input_o\ & ( (\selector[2]~input_o\ & \Counter_32bit1|DFF26|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_selector[2]~input_o\,
	datac => \Counter_32bit1|DFF26|ALT_INV_q~q\,
	datae => \ALT_INV_selector[1]~input_o\,
	dataf => \ALT_INV_selector[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X61_Y3_N27
\Counter_32bit1|DFF27|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF27|q~0_combout\ = !\Counter_32bit1|DFF27|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF27|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF27|q~0_combout\);

-- Location: LABCELL_X61_Y3_N48
\Counter_32bit1|DFF27|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF27|q~feeder_combout\ = ( \Counter_32bit1|DFF27|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF27|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF27|q~feeder_combout\);

-- Location: FF_X61_Y3_N50
\Counter_32bit1|DFF27|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF26|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF27|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF27|q~q\);

-- Location: LABCELL_X60_Y2_N33
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\selector[1]~input_o\ & ( (\selector[0]~input_o\ & (\selector[2]~input_o\ & \Counter_32bit1|DFF27|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[2]~input_o\,
	datac => \Counter_32bit1|DFF27|ALT_INV_q~q\,
	datae => \ALT_INV_selector[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X62_Y3_N54
\Counter_32bit1|DFF28|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF28|q~0_combout\ = !\Counter_32bit1|DFF28|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_32bit1|DFF28|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF28|q~0_combout\);

-- Location: LABCELL_X62_Y3_N48
\Counter_32bit1|DFF28|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF28|q~feeder_combout\ = \Counter_32bit1|DFF28|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_32bit1|DFF28|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF28|q~feeder_combout\);

-- Location: FF_X62_Y3_N50
\Counter_32bit1|DFF28|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF27|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF28|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF28|q~q\);

-- Location: LABCELL_X60_Y2_N12
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Counter_32bit1|DFF28|q~q\ & ( !\selector[0]~input_o\ & ( (\selector[1]~input_o\ & \selector[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[1]~input_o\,
	datab => \ALT_INV_selector[2]~input_o\,
	datae => \Counter_32bit1|DFF28|ALT_INV_q~q\,
	dataf => \ALT_INV_selector[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X62_Y3_N44
\Counter_32bit1|DFF29|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF28|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF29|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF29|q~q\);

-- Location: LABCELL_X62_Y3_N27
\Counter_32bit1|DFF29|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF29|q~0_combout\ = ( !\Counter_32bit1|DFF29|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF29|ALT_INV_q~q\,
	combout => \Counter_32bit1|DFF29|q~0_combout\);

-- Location: LABCELL_X62_Y3_N42
\Counter_32bit1|DFF29|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_32bit1|DFF29|q~feeder_combout\ = ( \Counter_32bit1|DFF29|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter_32bit1|DFF29|ALT_INV_q~0_combout\,
	combout => \Counter_32bit1|DFF29|q~feeder_combout\);

-- Location: FF_X62_Y3_N43
\Counter_32bit1|DFF29|q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_32bit1|DFF28|ALT_INV_q~q\,
	d => \Counter_32bit1|DFF29|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_32bit1|DFF29|q~DUPLICATE_q\);

-- Location: LABCELL_X60_Y2_N42
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Counter_32bit1|DFF29|q~DUPLICATE_q\ & ( (\selector[1]~input_o\ & (\selector[2]~input_o\ & \selector[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[1]~input_o\,
	datab => \ALT_INV_selector[2]~input_o\,
	datac => \ALT_INV_selector[0]~input_o\,
	dataf => \Counter_32bit1|DFF29|ALT_INV_q~DUPLICATE_q\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X3_Y79_N3
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


