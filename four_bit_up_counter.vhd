
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;




entity four_bit_up_counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : inout  STD_LOGIC_VECTOR (3 downto 0));
end four_bit_up_counter;

architecture Behavioral of four_bit_up_counter is

begin
process (clk, rst)
begin

if (rst = '1') then
count <= "0000";

elsif (RISING_EDGE(clk)) then

count <= count+1;

end if;
end process;


end Behavioral;

