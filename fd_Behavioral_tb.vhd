
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY fd_Behavioral_tb IS
END fd_Behavioral_tb;
 
ARCHITECTURE behavior OF fd_Behavioral_tb IS 
 
 
    COMPONENT fd_behavioral
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c_in : IN  std_logic;
         sum : OUT  std_logic;
         c_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c_in : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal c_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fd_behavioral PORT MAP (
          a => a,
          b => b,
          c_in => c_in,
          sum => sum,
          c_out => c_out
        );


  -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      a <= '0';
		b <= '0';
		c_in <= '0';
      wait for 100 ns;	
		a <= '0';
		b <= '0';
		c_in <= '1';
      wait for 100 ns;
		a <= '0';
		b <= '1';
		c_in <= '0';
      wait for 100 ns;
		a <= '0';
		b <= '1';
		c_in <= '1';
      wait for 100 ns;
		a <= '1';
		b <= '0';
		c_in <= '0';
      wait for 100 ns;
		a <= '1';
		b <= '0';
		c_in <= '1';
      wait for 100 ns;
		a <= '1';
		b <= '1';
		c_in <= '0';
      wait for 100 ns;
		a <= '1';
		b <= '1';
		c_in <= '1';
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
