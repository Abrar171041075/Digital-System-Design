
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity tflipflop is
port(
		T, clk : IN std_logic;
		q : OUT std_logic
		);
		
end tflipflop;

architecture Behavioral of tflipflop is
	signal qt :std_logic := '0';  --initial value declaration( variable)

begin
	process(T, clk)
	begin
		if T = '1' and falling_edge(clk) then
			qt <= not qt;
			
		end if;
	end process;
	q<= qt;                -- assigning to the output port
	
			

end Behavioral;

