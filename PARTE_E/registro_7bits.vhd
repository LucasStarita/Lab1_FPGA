library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_7bits is
    Port ( clk     : in  STD_LOGIC;
           rst     : in  STD_LOGIC;
           d       : in  STD_LOGIC;
           q       : out STD_LOGIC_VECTOR(6 downto 0));
end registro_7bits;

architecture Behavioral of registro_7bits is
    signal reg : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
begin

    process(clk, rst)
    begin
        if rst = '1' then
            reg <= "0000000";
        elsif rising_edge(clk) then
            reg <= reg(5 downto 0) & d;
        end if;
    end process;

    q <= reg;

end Behavioral;

