--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:25:49 12/01/2022
-- Design Name:   
-- Module Name:   C:/.Xilinx/lab1/parallel_ad_tb.vhd
-- Project Name:  lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: parallel_ad
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY parallel_ad_tb IS
END parallel_ad_tb;
 
ARCHITECTURE behavior OF parallel_ad_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT parallel_ad
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : IN  std_logic_vector(3 downto 0);
         c_in : IN  std_logic;
         sum : OUT  std_logic_vector(3 downto 0);
         c_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal y : std_logic_vector(3 downto 0) := (others => '0');
   signal c_in : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   signal c_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: parallel_ad PORT MAP (
          x => x,
          y => y,
          c_in => c_in,
          sum => sum,
          c_out => c_out
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
	x <= "1001";
	y <= "0011";
	c_in <= '0';
   wait for 100 ns;	
	x <= "1001";
	y <= "1000";
	c_in <= '1';
   wait for 100 ns;	



      -- insert stimulus here 

      wait;
   end process;

END;
