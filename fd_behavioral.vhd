library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity fd_behavioral is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c_in : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           c_out : out  STD_LOGIC);
end fd_behavioral;

architecture Behavioral of fd_behavioral is

begin
process (a,b,c_in)
begin
sum <= a xor b xor c_in;
c_out <= ( a and b ) or (a and c_in) or (b and c_in);
end process;
	
end Behavioral;

