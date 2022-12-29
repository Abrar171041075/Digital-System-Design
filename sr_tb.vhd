LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY sr_tb IS
END sr_tb;
ARCHITECTURE behavior OF sr_tb IS 
 
    COMPONENT sr
    PORT(
         s : IN  std_logic;
         r : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         qb : OUT  std_logic
        );
    END COMPONENT;  
   --Inputs
   signal s : std_logic := '0';
   signal r : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
 	--Outputs
   signal q : std_logic;
   signal qb : std_logic;
BEGIN

   uut: sr PORT MAP (
          s => s,
          r => r,
          rst => rst,
          clk => clk,
          q => q,
          qb => qb
        ); 
 Clock : process
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
		s <= '0';
		r <= '0';
      wait for 100 ns;	
		s <= '0';
		r <= '1';
      wait for 100 ns;     
      wait;
   end process;

END;
