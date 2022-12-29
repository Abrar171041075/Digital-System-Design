
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_flipflop is
port(
clk : in STD_LOGIC; din : in STD_LOGIC; reset : in STD_LOGIC; dout : out STD_LOGIC
);

end D_flipflop;

architecture Behavioral of D_flipflop is

begin
dff : process (din,clk,reset) is 
begin
if (reset='1') then dout <= '0';
elsif (rising_edge (clk)) then dout <= din;
end if;
end process dff; 


end Behavioral;

