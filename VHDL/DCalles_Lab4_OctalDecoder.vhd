-- DCalles_Lab4_OctalDecoder.vhd

--***********************************************************************
--	Description: Frequency divider using a dff-based counter and an 
--					 Octal decoder for selecting the desired output
--					 (8 different possible frequencies at a time)
--	
--	Inputs: 	clk, base clock signal
--				selector[2:0], output frequency selector, by default 
--					2^(29) to 2^(22) dividers power of two
--	
--	Outputs: Y[7:0], output divided clock, the output is selected by the
--					selector input
--***********************************************************************

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration

entity DCalles_Lab4_OctalDecoder is

    port(clk		: in std_logic;
			selector : in std_logic_vector(2 downto 0);     
         Y  		: out std_logic_vector(7 downto 0));
			

end DCalles_Lab4_OctalDecoder;

-- Architecture definition

architecture Behavioral of DCalles_Lab4_OctalDecoder is

--------------------------------------------------------------------------
---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
--------------------------------------------------------------------------

-- Get prescaled clocks through counter bits
	component Counter_32bit
		port(clkC 		: in std_logic;     
			  prescaled : out std_logic_vector(7 downto 0));
	end component;

--------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
--------------------------------------------------------------------------
	signal prescaledSignal : std_logic_vector(7 downto 0);


begin
--------------------------------------------------------------------------
-------------------------- COMPONENTS MAPPING ----------------------------
--------------------------------------------------------------------------

	Counter_32bit1: Counter_32bit 
		port map (clk, prescaledSignal); 
		
--------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
--------------------------------------------------------------------------
	process(selector)
	begin
	-- The output pin will be defined by three selector inputs
		case selector is
			when "000"  =>
				Y <= prescaledSignal and "00000001"; 
			when "001"  =>   
				Y <= prescaledSignal and "00000010"; 
			when "010"  =>   
				Y <= prescaledSignal and "00000100"; 
			when "011"  =>   
				Y <= prescaledSignal and "00001000"; 
			when "100"  =>   
				Y <= prescaledSignal and "00010000"; 
			when "101"  =>   
				Y <= prescaledSignal and "00100000"; 
			when "110"  =>   
				Y <= prescaledSignal and "01000000"; 
			when "111"  =>   
				Y <= prescaledSignal and "10000000"; 
			when others  =>   
				Y <= prescaledSignal and "00000000"; 
		end case;
	end process;

end;