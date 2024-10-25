library ieee;
use ieee.std_logic_1164.all;

entity RestadorCompleto_C is
    Port (
        A          : in  std_logic;  
        B          : in  std_logic;  
        Cin        : in  std_logic;   
		  Diff      : out std_logic;  
        Cout      : out std_logic   
    );
end RestadorCompleto_C;

architecture Behavioral of RestadorCompleto_C is

begin

	Diff <= A xor B xor Cin;  
	Cout <= ((not A and B) or (not A and Cin) or (B and Cin)); 

	
end Behavioral;