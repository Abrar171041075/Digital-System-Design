
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y0 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC);
end decoder;

architecture data of decoder is

begin
	y0 <= ((not a) and (not b));
	y1 <= ((not a) and b);
	y2 <= ( a and (not b));
	y3 <= (a and b);


end data;

