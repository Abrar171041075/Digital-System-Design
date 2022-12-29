library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity fulladder is
    Port ( a,b,c : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end fulladder;


architecture Behavioral of fulladder is

begin

s <= a xor b xor c;
cout <= (a and b) or (b and c) or (c and a);


end Behavioral;

