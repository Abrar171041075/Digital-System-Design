LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY four_D_tb IS
END four_D_tb;
 
ARCHITECTURE behavior OF four_D_tb IS  
    COMPONENT four_d_up_counter
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         count : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal D : std_logic := '1';
   signal CLK : std_logic := '1';
   signal RST : std_logic := '1';
	--BiDirs
   signal count : std_logic_vector(3 downto 0);
   -- Clock period definitions
   constant CLK_period : time := 10 ns; 
BEGIN 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_d_up_counter PORT MAP (
          D => D,
          CLK => CLK,
          RST => RST,
          count => count
        );
   CLK_process :process
   begin
	   RST <= '0';
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
   stim_proc: process
   begin		
      wait for 100 ns;	
      wait for CLK_period*10;
      wait;
   end process;

END;
