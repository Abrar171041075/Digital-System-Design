
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity parallel_ad is
	port(
	x,y : IN std_logic_vector(3 downto 0);
	c_in : IN std_logic;
	sum : OUT std_logic_vector(3 downto 0);
	c_out: OUT std_logic
	);
end parallel_ad;

architecture structural of parallel_ad is
 --- task1: component declarartion

	component  full_adder_p
	 Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           c_in : in  STD_LOGIC;
           c_out : out  STD_LOGIC;
           s : out  STD_LOGIC);
	end component;
--- task2: signal declaration coonection
	signal C1,C2,C3 : std_logic;
begin

----- task3: port mapping
FA0 : full_adder_p port map(x => x(0), y => y(0),c_in => c_in , s => sum(0) ,c_out => C1);
FA1 : full_adder_p port map(x => x(1), y => y(1),c_in => C1 , s => sum(1) ,c_out => C2);
FA2 : full_adder_p port map(x => x(2), y => y(2),c_in => C2 , s => sum(2) ,c_out => C3);
FA3 : full_adder_p port map(x => x(3), y => y(3),c_in => C3 , s => sum(3) ,c_out => c_out);


end structural;