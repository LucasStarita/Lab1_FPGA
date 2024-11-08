library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador_7bits is
    Port ( a     : in  STD_LOGIC_VECTOR(6 downto 0);
           b     : in  STD_LOGIC_VECTOR(6 downto 0);
           igual : out STD_LOGIC);
end comparador_7bits;

architecture Behavioral of comparador_7bits is
begin

    igual <= '1' when a = b else '0';

end Behavioral;
