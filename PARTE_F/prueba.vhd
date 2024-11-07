library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fixed_point_divider is
  port(
    dividendo : in  signed(7 downto 0); -- Q4.4 formato
    divisor  : in  signed(7 downto 0); -- Q4.4 formato
    result   : out signed(7 downto 0)  -- Q4.4 formato
  );
end entity fixed_point_divider;

architecture Behavioral of fixed_point_divider is
  signal temp_result : signed(15 downto 0); -- Registro intermedio para más precisión
begin
  process(clk)
  begin
  
if divisor /= 0 then
          -- Escalar el dividendo para mantener la precisión fraccional (Q4.4)
          temp_result <= (resize(dividend, 16) sll 4) / divisor;
          -- Ajustar el resultado a Q4.4 cortando los bits extras
          result <= temp_result(11 downto 4); -- Q4.4 formato final
        else
          result <= (others => '0'); -- Manejo de división por cero
        end if;
      end if;
    end if;
  end process;
end architecture Behavioral;
