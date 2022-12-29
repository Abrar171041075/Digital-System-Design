
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_down_tb IS
END four_bit_down_tb;
 
ARCHITECTURE behavior OF four_bit_down_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fou_bit_down
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         count : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '1';
   signal rst : std_logic := '1';

	--BiDirs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fou_bit_down PORT MAP (
          clk => clk,
          rst => rst,
          count => count
        );

   -- Clock process definitions
   clk_process :process
   begin
	   rst <= '0';
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
