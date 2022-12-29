LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY jkflipflop_tb IS
END jkflipflop_tb;
 
ARCHITECTURE behavior OF jkflipflop_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jkflipflop
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 130 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jkflipflop PORT MAP (
          j => j,
          k => k,
          clk => clk,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      j<= '0';
		k<= '0';
		wait for 130 ns;
		j<= '1';
		k<= '0';
		wait for 130 ns;
		j<= '1';
		k<= '1';
		wait for 130 ns;

      wait;
   end process;

END;
