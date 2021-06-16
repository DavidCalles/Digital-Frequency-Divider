-- PARKING INDICATOR LAB

--****************************************************
--	Description: Get outputs for the 7 segments from 
--					 a 4-bit  input (just 1 digit)
--	
--	Inputs: [3:0] ones, number to be displayed
--	
--	Outputs: reg[6:0] segments, obtained through 
--				behavioral description. (low means ON)
--***************************************************/

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration

entity DCalles_Lab4_OctalDecoder is

    port(clk: in std_logic;
			X  : in std_logic_vector(2 downto 0);     
         Y  : out std_logic_vector(7 downto 0));
			

end DCalles_Lab4_OctalDecoder;

-- Architecture definition

architecture Behavioral of DCalles_Lab4_OctalDecoder is

--------------------------------------------------------------------------
---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
--------------------------------------------------------------------------


-- Get prescaled clocks through counter 
	component Counter_28bit
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

	Counter_28bit1: Counter_28bit 
		port map (clk, prescaledSignal); 
		
--------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
--------------------------------------------------------------------------
	process(X)
	begin
		case X is
			when "000"  =>
				Y <= prescaledSignal and "00000001"; -- segment 0
			when "001"  =>   
				Y <= prescaledSignal and "00000010"; -- segment 1
			when "010"  =>   
				Y <= prescaledSignal and "00000100"; -- segment 2
			when "011"  =>   
				Y <= prescaledSignal and "00001000"; -- segment 3
			when "100"  =>   
				Y <= prescaledSignal and "00010000"; -- segment 4
			when "101"  =>   
				Y <= prescaledSignal and "00100000"; -- segment 5
			when "110"  =>   
				Y <= prescaledSignal and "01000000"; -- segment 6
			when "111"  =>   
				Y <= prescaledSignal and "10000000"; -- segment 7
			when others  =>   
				Y <= prescaledSignal and "00000000"; -- segment -
		end case;
	end process;

end;