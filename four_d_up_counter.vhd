library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity four_d_up_counter is
    Port ( 
	         D: in  STD_LOGIC;
	        CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           count : inout  STD_LOGIC_VECTOR (3 downto 0));
end four_d_up_counter;

architecture Behavioral of four_d_up_counter is
 component d_ff
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
			  qb : out  STD_LOGIC);
end component;

begin
      dff0 : d_ff port map ( d => D, rst => RST, clk => CLK ,  q=> count(0));
		dff1 : d_ff port map ( d => count(0), rst => RST, clk =>CLK,   q=> count(1));
		dff2 : d_ff port map ( d => count(1), rst => RST, clk => CLK , q => count(2));
		dff3 : d_ff port map ( d => count(2), rst => RST, clk => CLK ,q => count(3));




end Behavioral;


