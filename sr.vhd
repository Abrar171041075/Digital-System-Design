
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity sr is
    Port ( s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end sr;

architecture Behavioral of sr is

begin
process ( s,r,rst,clk)
begin
 if (rst = '1') then
 q<= '0';
 elsif (RISING_EDGE(clk)) then
 if (s /= r) then
 q <= s;
 qb <= r;
 elsif( s ='1' and r = '1') then
 q <= 'Z';
 qb <= 'Z';
 
 
end if;
end if;
end process;


end Behavioral;

