LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY parallelsub_tb IS
END parallelsub_tb;
 
ARCHITECTURE behavior OF parallelsub_tb IS 
    COMPONENT parallelsub
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
  	 --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';
 	--Outputs
   signal s : std_logic_vector(3 downto 0);
BEGIN
   uut: parallelsub PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s
        );

   stim_proc: process
   begin		
   a <= "0111";
	b <= "1010";
	cin <= '1';
   wait for 100 ns;	
      wait;
   end process;

END;
