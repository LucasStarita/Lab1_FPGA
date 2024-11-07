library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Division is
port(
		divisor : in std_logic_vector(5 downto 0);
		dividendo:  in std_logic_vector(5 downto 0);
		cociente: out std_logic_vector(9 downto 0)
		--resto: out std_logic_vector(9 downto 0)
		);
end Division;

architecture behavioral of Division is

signal divisor_uns: unsigned(9 downto 0);
signal dividendo_uns: unsigned(9 downto 0);
signal cociente_uns: unsigned(9 downto 0);

begin 
aritmetica: process (divisor,dividendo) is 
begin 
cociente <= std_logic_vector(to_unsigned(to_integer(unsigned(dividendo))/to_integer(unsigned(divisor)),10));
--divisor_uns <= unsigned(divisor & "0000");
--dividendo_uns <= unsigned(dividendo & "0000");
--cociente_uns <= divisor_uns / dividendo_uns;
--cociente <= std_logic_vector(cociente_uns);

end process aritmetica;
    
end behavioral;
