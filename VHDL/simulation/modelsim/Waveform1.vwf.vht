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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/17/2021 18:24:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DCalles_Lab4_OctalDecoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DCalles_Lab4_OctalDecoder_vhd_vec_tst IS
END DCalles_Lab4_OctalDecoder_vhd_vec_tst;
ARCHITECTURE DCalles_Lab4_OctalDecoder_arch OF DCalles_Lab4_OctalDecoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL selector : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT DCalles_Lab4_OctalDecoder
	PORT (
	clk : IN STD_LOGIC;
	selector : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Y : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DCalles_Lab4_OctalDecoder
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	selector => selector,
	Y => Y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1 ps;
	clk <= '1';
	WAIT FOR 1 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- selector[2]
t_prcs_selector_2: PROCESS
BEGIN
	selector(2) <= '0';
WAIT;
END PROCESS t_prcs_selector_2;
-- selector[1]
t_prcs_selector_1: PROCESS
BEGIN
	selector(1) <= '0';
WAIT;
END PROCESS t_prcs_selector_1;
-- selector[0]
t_prcs_selector_0: PROCESS
BEGIN
	selector(0) <= '0';
WAIT;
END PROCESS t_prcs_selector_0;
END DCalles_Lab4_OctalDecoder_arch;
