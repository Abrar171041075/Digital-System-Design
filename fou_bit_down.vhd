
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fou_bit_down is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : inout  STD_LOGIC_VECTOR (3 downto 0));
end fou_bit_down;

architecture Behavioral of fou_bit_down is

begin
process(clk, rst)
begin
if ( rst = '1') then
count <= "1111";
elsif ( RISING_EDGE(clk)) then

count <= count-1;

end if;
end process;


end Behavioral;

