library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity DFF is
   port
   (
      clock	: in std_logic;
      rst 	: in std_logic;
      pre 	: in std_logic;
      en  	: in std_logic;    
      d 		: in std_logic;
      q 		: out std_logic);
   
end entity DFF;
 
architecture Behavioral of DFF is

begin
   process (clock) is
   begin
      if rising_edge(clock) then  
         if (rst='1') then   
            q <= '0';
         elsif (pre='1') then
            q <= '1';
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