library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity full_adder_p is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           c_in : in  STD_LOGIC;
           c_out : out  STD_LOGIC;
           s : out  STD_LOGIC);
end full_adder_p;

architecture data of full_adder_p is

begin

c_out <= ( x and y ) or (x and c_in) or (y and c_in);
s <= x xor y xor c_in;

end data;

