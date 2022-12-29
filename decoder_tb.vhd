
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         y0 : OUT  std_logic;
         y1 : OUT  std_logic;
         y2 : OUT  std_logic;
         y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal y0 : std_logic;
   signal y1 : std_logic;
   signal y2 : std_logic;
   signal y3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          a => a,
          b => b,
          y0 => y0,
          y1 => y1,
          y2 => y2,
          y3 => y3
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      
		a <= '1';
		b <= '0';
		
      wait for 100 ns;	

      
      wait;
   end process;

END;
