library ieee;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY PARTE_A_TESTBENCH IS END PARTE_A_TESTBENCH;

ARCHITECTURE behavior OF PARTE_A_TESTBENCH IS

	COMPONENT PARTE_A
	PORT(
		SW1 : in STD_LOGIC;
		SW2 : in STD_LOGIC;
		SW3 : in STD_LOGIC;
		LED : out STD_LOGIC
		);
		
	END COMPONENT;
	
	--entradas
	signal SW1 : STD_LOGIC := '0';
	signal SW2 : STD_LOGIC := '0';
	signal SW3 : STD_LOGIC := '0';
	
	--salidas
	signal LED : STD_LOGIC;
	
BEGIN
	--instacio la UUT
	
	uut: PARTE_A PORT MAP (
		SW1	=> SW1,
		SW2	=> SW2,
		SW3	=> SW3,
		LED	=> LED
	);
	
	
	stim_proc: process
	begin
		SW1 <= '0'; SW2 <= '0'; SW3 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '0'; SW3 <= '1'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; SW3 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; SW3 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; SW3 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; SW3 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; SW3 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; SW3 <= '1'; wait for 10ns;
		
		wait;
	end process;
	
END;
		