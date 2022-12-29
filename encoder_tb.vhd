
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY encoder_tb IS
END encoder_tb;
 
ARCHITECTURE behavior OF encoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder
    PORT(
         y0 : IN  std_logic;
         y1 : IN  std_logic;
         y2 : IN  std_logic;
         y3 : IN  std_logic;
         a0 : OUT  std_logic;
         a1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal y0 : std_logic := '0';
   signal y1 : std_logic := '0';
   signal y2 : std_logic := '0';
   signal y3 : std_logic := '0';

 	--Outputs
   signal a0 : std_logic;
   signal a1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder PORT MAP (
          y0 => y0,
          y1 => y1,
          y2 => y2,
          y3 => y3,
          a0 => a0,
          a1 => a1
        );

 

   -- Stimulus process
   stim_proc: process
   begin	
	   y0 <= '0';
		y1 <= '0';
		y2 <= '0';
		y3 <= '1';
      wait for 100 ns;
			
    
      wait;
   end process;

END;
