
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity cv_counter is
	port( 
	cnt : INOUT std_logic_vector(2 downto 0);
	clk : IN std_logic
	);
end cv_counter;

architecture Behavioral of cv_counter is
	component tflipflop 
port(
		T, clk : IN std_logic;
		q : OUT std_logic
		);
		
end component;


begin
		tff0 : tflipflop port map ( T => '1', clk => clk ,  q=> cnt(0));
		tff1 : tflipflop port map ( T => '1', clk => cnt(0) , q=> cnt(1));
		tff2 : tflipflop port map ( T => '1', clk => cnt(1) , q=> cnt(2));


end Behavioral;

