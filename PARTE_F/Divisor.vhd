library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Division is
port(
		divisor : in std_logic_vector(5 downto 0);--este vector debe tener siempre como bit menos significativo un 0 a(4,2)
		dividendo:  in std_logic_vector(5 downto 0);-- b(3,3)
		cociente: out std_logic_vector(9 downto 0)--c(7,0) descarto la parte decimal 
		--resto: out std_logic_vector(9 downto 0)
		);
end Division;

architecture behavioral of Division is

signal divisor_uns: unsigned(5 downto 0);
signal dividendo_uns: unsigned(5 downto 0);
signal cociente_uns: unsigned(9 downto 0);

begin 
aritmetica: process (divisor,dividendo) is 
begin 
divisor_uns <= unsigned(divisor);
dividendo_uns <= unsigned(dividendo);
cociente_uns <= divisor_uns / dividendo_uns;
cociente <= std_logic_vector(cociente_uns);

end process aritmetica;
    
end behavioral;
