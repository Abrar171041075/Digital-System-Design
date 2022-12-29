
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;




entity jkflipflop is
	port(
	j,k, clk: IN std_logic;
	q : OUT std_logic
	
	);
end jkflipflop;

architecture Behavioral of jkflipflop is
	signal qt : std_logic := '0';

begin
	process(j,k,clk)
	begin
		if rising_edge(clk) then
			if j= '0' and k = '0' then
			  qt <= qt;
			 
			elsif j = '1' and k = '0' then
			  qt <= '1';
			 
			elsif j = '0' and k = '1' then
			  qt <= '0';
			 
			else
			  qt <= not qt;
			  
			end if;
			  
	   end if;
		
	end process;
	
	q <= qt;
			 

end Behavioral;

