library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador_7 is
    Port ( clk     : in  STD_LOGIC;
           rst     : in  STD_LOGIC;
           fin     : out STD_LOGIC);
end contador_7;

architecture Behavioral of contador_7 is
    signal cnt : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin

    process(clk, rst)
    begin
        if rst = '1' then
            cnt <= "000";
            fin <= '0';  
        elsif rising_edge(clk) then
            if cnt = "111" then
                cnt <= "000"; 
                fin <= '1';    
            else 
                cnt <= cnt + 1;  
                fin <= '0';      
            end if;
        end if;
    end process;

end Behavioral;

