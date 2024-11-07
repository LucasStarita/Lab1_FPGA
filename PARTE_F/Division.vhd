library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Division is
  port(

    divisor   : in  std_logic_vector(5 downto 0);  
    dividendo : in  std_logic_vector(5 downto 0);  
    cociente  : out std_logic_vector(15 downto 0)  

  );
end entity Division;



architecture Behavioral of Division is

signal dividendo_ext : unsigned(15 downto 0); 
signal cuatrozeros : std_logic_vector (3 downto 0);
signal seiszeros : std_logic_vector (5 downto 0);

begin

cuatrozeros <= "0000";
seiszeros <= "000000";

dividendo_ext <= unsigned(seiszeros & dividendo & cuatrozeros) ;

cociente <= std_logic_vector(dividendo_ext / unsigned(divisor)); -- salida en formato Q(12,4)

end architecture Behavioral;

