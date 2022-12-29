library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity parallelsub is
    Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end parallelsub;

architecture Behavioral of parallelsub is
component fulladder 
    Port ( a,b,c : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end component;
component notgate 
    Port ( a : in  STD_LOGIC;
           b : out  STD_LOGIC);
end component;
signal c1,c2,c3,c4,r1,r2,r3,r4 :std_logic;

begin

n1 : notgate port map(b(0),r1);
n2 : notgate port map(b(1),r2);
n3 : notgate port map(b(2),r3);
n4 : notgate port map(b(3),r4);

f1 : fulladder port map(a(0), r1,cin,s(0),c1);
f2 : fulladder port map(a(1), r2,c1,s(1),c2);
f3 : fulladder port map(a(2), r3,c2,s(2),c3);
f4 : fulladder port map(a(3), r4,c3,s(3),c4);


end Behavioral;

