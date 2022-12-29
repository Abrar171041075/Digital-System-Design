LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Shift_Register_tb IS
END Shift_Register_tb;
ARCHITECTURE behavior OF Shift_Register_tb IS 
    COMPONENT Shift_Register
    PORT(
         din : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         dout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
  --Inputs
   signal din : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
 	--Outputs
   signal dout : std_logic_vector(3 downto 0);
   constant clk_period : time := 10 ns;
BEGIN
   uut: Shift_Register PORT MAP (
          din => din,
          clk => clk,
          reset => reset,
          dout => dout
        );
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
   stim_proc: process
   begin		
      reset <= '1';
		wait for 150 ns; 
		reset <= '0'; 
wait for 150 ns;
 din <= '1';
wait for 150 ns;
      wait;
   end process;
END;
