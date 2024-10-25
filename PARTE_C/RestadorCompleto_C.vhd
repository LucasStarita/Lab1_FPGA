library ieee;
use ieee.std_logic_1164.all;

entity RestadorCompleto_C is
    Port (
        A          : in  std_logic;  
        B          : in  std_logic;  
        Bin        : in  std_logic;   
		  Diff      : out std_logic;  
        Bout      : out std_logic   
    );
end RestadorCompleto_C;

architecture Behavioral of RestadorCompleto_C is

begin

	Diff <= A xor B xor Bin;  
	Bout <= ((not A and B) or (not A and Bin) or (B and Bin)); 

	
end Behavioral;