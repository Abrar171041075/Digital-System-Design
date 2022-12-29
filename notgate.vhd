
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity notgate is
    Port ( a : in  STD_LOGIC;
           b : out  STD_LOGIC);
end notgate;

architecture Behavioral of notgate is

begin
b <= not a;

end Behavioral;

