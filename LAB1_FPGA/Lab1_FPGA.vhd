library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PARTE_A is
	Port ( 
				SW1: in STD_LOGIC;
				SW2: in STD_LOGIC;
				SW3: in STD_LOGIC;
				LED: out STD_LOGIC);
end PARTE_A;


architecture Behavioral of PARTE_A is

signal SW2n: STD_LOGIC;

begin

SW2n <= not SW2;
LED <= (SW1 xor SW2n) or (SW2n and SW3);


end Behavioral;