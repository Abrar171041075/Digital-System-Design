library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity d is
    Port ( d : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end d;

architecture Behavioral of d is

begin
process ( d, rst, clk)
begin

if ( rst = '1') then
q<= '0';

elsif ( RISING_EDGE(clk)) then
q<= d;
qb <= not d;

end if;
end process;


end Behavioral;

