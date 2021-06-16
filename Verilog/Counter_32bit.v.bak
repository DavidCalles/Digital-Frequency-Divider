-- Counter_32bit.vhd

--***********************************************************************
--	Description: 32 bit timer/counter using D 
--					flip flops.
--	
--	Inputs: clk, base clock signal
--	
--	Outputs: prescaled[7:0] any 8 bits value from timer
--***********************************************************************

--------------------------------------------------------------------------
---------------------------- LIBRARIES -----------------------------------
--------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

--------------------------------------------------------------------------
------------------------ Entity Declaration ------------------------------
--------------------------------------------------------------------------

entity Counter_32bit is

    port(clkC 			: in std_logic;     
         prescaled  	: out std_logic_vector(7 downto 0));
			

end Counter_32bit;

-- Architecture definition

architecture sequecial of Counter_32bit is


--------------------------------------------------------------------------
---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
--------------------------------------------------------------------------

-- Get DATA FLIP FLOP (Behavioural)
	component DFF_David
		port( clock	: in std_logic;
				rst 	: in std_logic;
				pre 	: in std_logic;
				en  	: in std_logic;    
				d 		: in std_logic;
				q 		: out std_logic);
	end component;

--------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
--------------------------------------------------------------------------
	-- Flip flop signals
	signal enable  : std_logic := '1';
	signal reset	: std_logic := '0';
	signal preset	: std_logic := '0';
	
	signal dSign 	: std_logic_vector(31 downto 0);
	signal qSign	: std_logic_vector(31 downto 0);

--------------------------------------------------------------------------
-------------------------- COMPONENTS MAPPING ----------------------------
--------------------------------------------------------------------------
	
begin
	
	dSign <= not qSign;
	
	-- Connections mapping for d flip flops
	DFF0: DFF_David port map (clkC, 		reset, preset, enable, dSign(0), qSign(0));
	DFF1: DFF_David port map (dSign(0), reset, preset, enable, dSign(1), qSign(1));
	DFF2: DFF_David port map (dSign(1), reset, preset, enable, dSign(2), qSign(2));
	DFF3: DFF_David port map (dSign(2), reset, preset, enable, dSign(3), qSign(3));
	DFF4: DFF_David port map (dSign(3), reset, preset, enable, dSign(4), qSign(4));
	DFF5: DFF_David port map (dSign(4), reset, preset, enable, dSign(5), qSign(5));
	DFF6: DFF_David port map (dSign(5), reset, preset, enable, dSign(6), qSign(6));
	DFF7: DFF_David port map (dSign(6), reset, preset, enable, dSign(7), qSign(7));

	DFF8: DFF_David port map (dSign(7), reset, preset, enable, dSign(8), qSign(8));
	DFF9: DFF_David port map (dSign(8), reset, preset, enable, dSign(9), qSign(9));
	DFF10: DFF_David port map (dSign(9), reset, preset, enable, dSign(10), qSign(10));
	DFF11: DFF_David port map (dSign(10), reset, preset, enable, dSign(11), qSign(11));
	DFF12: DFF_David port map (dSign(11), reset, preset, enable, dSign(12), qSign(12));
	DFF13: DFF_David port map (dSign(12), reset, preset, enable, dSign(13), qSign(13));
	DFF14: DFF_David port map (dSign(13), reset, preset, enable, dSign(14), qSign(14));
	DFF15: DFF_David port map (dSign(14), reset, preset, enable, dSign(15), qSign(15));
	DFF16: DFF_David port map (dSign(15), reset, preset, enable, dSign(16), qSign(16));
	DFF17: DFF_David port map (dSign(16), reset, preset, enable, dSign(17), qSign(17));
	DFF18: DFF_David port map (dSign(17), reset, preset, enable, dSign(18), qSign(18));
	DFF19: DFF_David port map (dSign(18), reset, preset, enable, dSign(19), qSign(19));
	DFF20: DFF_David port map (dSign(19), reset, preset, enable, dSign(20), qSign(20));
	DFF21: DFF_David port map (dSign(20), reset, preset, enable, dSign(21), qSign(21));
	DFF22: DFF_David port map (dSign(21), reset, preset, enable, dSign(22), qSign(22));
	DFF23: DFF_David port map (dSign(22), reset, preset, enable, dSign(23), qSign(23));
	DFF24: DFF_David port map (dSign(23), reset, preset, enable, dSign(24), qSign(24));
	DFF25: DFF_David port map (dSign(24), reset, preset, enable, dSign(25), qSign(25));
	DFF26: DFF_David port map (dSign(25), reset, preset, enable, dSign(26), qSign(26));
	DFF27: DFF_David port map (dSign(26), reset, preset, enable, dSign(27), qSign(27));
	
	DFF28: DFF_David port map (dSign(27), reset, preset, enable, dSign(28), qSign(28));
	DFF29: DFF_David port map (dSign(28), reset, preset, enable, dSign(29), qSign(29));
	DFF30: DFF_David port map (dSign(29), reset, preset, enable, dSign(30), qSign(30));
	DFF31: DFF_David port map (dSign(30), reset, preset, enable, dSign(31), qSign(31));


-- Output any 8 bits
prescaled <= qSign(29 downto 22);

end;