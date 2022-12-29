library ieee;
use ieee.std_logic_1164.all;

entity half_add is
	port(
	A, B: IN std_logic;
	Sum, Carry: OUT std_logic
	);
end half_add;


architecture df of half_add is
begin
	Sum <= (A xor B);
	Carry <= (A and B);
	
end df;
