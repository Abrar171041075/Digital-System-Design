
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity encoder is
    Port ( y0 : in  STD_LOGIC;
           y1 : in  STD_LOGIC;
           y2 : in  STD_LOGIC;
           y3 : in  STD_LOGIC;
           a0 : out  STD_LOGIC;
           a1 : out  STD_LOGIC);
end encoder;

architecture Behavioral of encoder is

begin
process (y0,y1,y2,y3)
begin
a0 <= (((not y0) and (not y2)) and (y1 xor y3));
a1 <= (((not y0) and (not y1)) and (y2 xor y3));
end process;

end Behavioral;

