-- DFF_David.vhd

--***********************************************************************
--	Description: Data flip flop (1-bit)
--	
--	Inputs: 	clk, dff works on every rising edge of clock
--			 	rst, forces q=0, 
--				pre, forces q=1, 	
--				en, enables q=d,
--				d, data input		
--	
--	Outputs: q, data output
--***********************************************************************

--------------------------------------------------------------------------
---------------------------- LIBRARIES -----------------------------------
--------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

--------------------------------------------------------------------------
------------------------ Entity Declaration ------------------------------
--------------------------------------------------------------------------

entity DFF_David is
   port
   (
      clock	: in std_logic;
      rst 	: in std_logic;
      pre 	: in std_logic;
      en  	: in std_logic;    
      d 		: in std_logic;
      q 		: out std_logic);
   
end entity DFF_David;

-- Architecture definition
 
architecture Behavioral of DFF_David is

--------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
--------------------------------------------------------------------------

begin
   process (clock) is
   begin
      if rising_edge(clock) then  
			-- Reset signal puts a 0 on Q
         if (rst='1') then   
            q <= '0';
			-- Preset signal puts a 1 on Q
         elsif (pre='1') then
            q <= '1';
			-- Enable signal makes the dff store last d value
         elsif (en='1') then
            if (d ='1') then
             q <= '1';
         elsif (d ='0') then 
             q<= '0';
            end if;
         end if;
      end if;
   end process;
	
end;