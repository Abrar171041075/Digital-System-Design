
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY d_tb IS
END d_tb;
 
ARCHITECTURE behavior OF d_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d
    PORT(
         d : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qb : std_logic;

   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d PORT MAP (
          d => d,
          rst => rst,
          clk => clk,
          q => q,
          qb => qb
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		rst <= '0';
		d <= '0';
      wait for 100 ns;	

     

      -- insert stimulus here 

      wait;
   end process;

END;
