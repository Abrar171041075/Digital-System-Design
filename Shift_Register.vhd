
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shift_Register is
port(
din : in STD_LOGIC; clk : in STD_LOGIC; reset : in STD_LOGIC;
dout : out STD_LOGIC_VECTOR(3 downto 0)
);

end Shift_Register;

architecture Behavioral of Shift_Register is
component D_flipflop is 
port(
clk : in STD_LOGIC; din : in STD_LOGIC; reset : in STD_LOGIC; dout : out STD_LOGIC
);

end component;

signal s : std_logic_vector (3 downto 0); 
begin
u0 : D_flipflop port map (clk => clk,din => din, reset => reset, dout => s(0));
u1 : D_flipflop port map (clk => clk,din => s(0), reset => reset, dout => s(1));
u2 : D_flipflop port map (clk => clk,din => s(1), reset => reset, dout => s(2));
u3 : D_flipflop port map (clk => clk,din => s(2), reset => reset, dout => s(3));



dout <= s;


end Behavioral;

