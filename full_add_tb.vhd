LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY fd_tb IS
END fd_tb;
 
ARCHITECTURE behavior OF fd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_p
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         c_in : IN  std_logic;
         c_out : OUT  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal c_in : std_logic := '0';

 	--Outputs
   signal c_out : std_logic;
   signal s : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_p PORT MAP (
          x => x,
          y => y,
          c_in => c_in,
          c_out => c_out,
          s => s
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      x <= '0';
		y <= '0';
		c_in <= '0';
      wait for 100 ns;	
		x <= '0';
		y <= '0';
		c_in <= '1';
      wait for 100 ns;
		x <= '0';
		y <= '1';
		c_in <= '0';
      wait for 100 ns;
		x <= '0';
		y <= '1';
		c_in <= '1';
      wait for 100 ns;
		x <= '1';
		y <= '0';
		c_in <= '0';
      wait for 100 ns;
		x <= '1';
		y <= '0';
		c_in <= '1';
      wait for 100 ns;
		x <= '1';
		y <= '1';
		c_in <= '0';
      wait for 100 ns;
		x <= '1';
		y <= '1';
		c_in <= '1';
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
