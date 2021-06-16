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

entity SevenSegments is

    port(binNumber  : in std_logic_vector(3 downto 0);     
         segmentLed : out std_logic_vector(6 downto 0));
			

end SevenSegments;

-- Architecture definition

architecture Behavioral of SevenSegments is

begin
	process(binNumber)
	begin
		case binNumber is
			when "0000"  =>
				segmentLed <= "1000000"; -- segment 0
			when "0001"  =>   
				segmentLed <= "1111001"; -- segment 1
			when "0010"  =>   
				segmentLed <= "0100100"; -- segment 2
			when "0011"  =>   
				segmentLed <= "0110000"; -- segment 3
			when "0100"  =>   
				segmentLed <= "0011001"; -- segment 4
			when "0101"  =>   
				segmentLed <= "0010010"; -- segment 5
			when "0110"  =>   
				segmentLed <= "0000010"; -- segment 6
			when "0111"  =>   
				segmentLed <= "1111000"; -- segment 7
			when "1000"  =>   
				segmentLed <= "0000000"; -- segment 8
			when "1001"  =>   
				segmentLed <= "0011000"; -- segment 9
			when others  =>   
				segmentLed <= "0111111"; -- segment -
		end case;
	end process;

end;