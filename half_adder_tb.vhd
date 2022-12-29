--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:41:34 11/24/2022
-- Design Name:   
-- Module Name:   C:/.Xilinx/lab1/half_adder_tb.vhd
-- Project Name:  lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_add
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
 
ENTITY half_adder_tb IS
END half_adder_tb;
 
ARCHITECTURE behavior OF half_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_add
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_add PORT MAP (
          A => A,
          B => B,
          Sum => Sum,
          Carry => Carry
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A <= '0';
		B <= '0';
      wait for 100 ns;	
		A <= '0';
		B <= '1';
      wait for 100 ns;
		A <= '1';
		B <= '0';
      wait for 100 ns;
		A <= '1';
		B <= '1';
      wait for 100 ns;
      

      -- insert stimulus here 

      wait;
   end process;

END;
