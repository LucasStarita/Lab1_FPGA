library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity dato is
    port (
        hab_dato : in std_logic;      
        SCL      : in std_logic;      
        fin_dato : out std_logic;     
        registro : out std_logic_vector(7 downto 0) 
    );
end dato;

architecture Behavioral of dato is
    signal contador : std_logic_vector(3 downto 0) := (others => '0');
begin

    process(SCL)
    begin
        if rising_edge(SCL) then
            if hab_dato = '1' then
                -- Incrementa el contador y almacena el valor en el registro
                contador <= contador + 1;
                registro <= SCL;

                -- Activa fin_dato cuando el contador alcanza 8 (00001000 en binario)
                if contador = "1000" then
                    fin_dato <= '1';
                    contador <= (others => '0'); -- Reinicia el contador
                else
                    fin_dato <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;