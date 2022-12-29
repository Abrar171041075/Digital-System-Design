
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity shiftregister is
port(
din : in STD_LOGIC; 
clk : in STD_LOGIC; 
reset : in STD_LOGIC;
dout : out STD_LOGIC_VECTOR(2 downto 0)
);

end shiftregister;

architecture Behavioral of shiftregister is
componentd_flip_flop is 
(clk : in STD_LOGIC; 
din : in STD_LOGIC; 
reset : in STD_LOGIC; 
dout : out STD_LOGIC
);
end component;
signal s : std_logic_vector (2 downto 0); 
begin
u0 : d_flip_flop port map (clk => clk,din => din, reset => reset, dout => s(0));
u1 : d_flip_flop port map (clk => clk,din => s(0), reset => reset, dout => s(1));
u2 : d_flip_flop port map (clk => clk,din => s(1), reset => reset, dout => s(2));
dout <= s;

end Behavioral;

