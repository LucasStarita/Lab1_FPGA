library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PARTE_C_tb is
end PARTE_C_tb;

architecture behavior of PARTE_C_tb is

    component PARTE_C
        port(
            A0, A1, A2, A3     : in  std_logic;
            B0, B1, B2, B3     : in  std_logic;
            Bin                : in  std_logic;
            ASINC              : in  std_logic;
            CLK                : in  std_logic;
            C0, C1, C2, C3     : out std_logic;
            Z, B               : out std_logic
        );
    end component;

    signal A0_tb, A1_tb, A2_tb, A3_tb : std_logic := '0';
    signal B0_tb, B1_tb, B2_tb, B3_tb : std_logic := '0';
    signal Bin_tb                     : std_logic := '0';
    signal ASINC_tb                   : std_logic := '1';
    signal CLK_tb                     : std_logic := '0';
    signal C0_tb, C1_tb, C2_tb, C3_tb : std_logic;
    signal Z_tb, B_tb                 : std_logic;

    constant clk_period : time := 10 ns;

begin

    uut: PARTE_C
        port map (
            A0 => A0_tb,
            A1 => A1_tb,
            A2 => A2_tb,
            A3 => A3_tb,
            B0 => B0_tb,
            B1 => B1_tb,
            B2 => B2_tb,
            B3 => B3_tb,
            Bin => Bin_tb,
            ASINC => ASINC_tb,
            CLK => CLK_tb,
            C0 => C0_tb,
            C1 => C1_tb,
            C2 => C2_tb,
            C3 => C3_tb,
            Z => Z_tb,
            B => B_tb
        );

    clk_process : process
    begin
        while true loop
            CLK_tb <= '0';
            wait for clk_period / 2;
            CLK_tb <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    stimulus_process : process
    begin
        wait for clk_period; -- Espera un ciclo de reloj antes de comenzar
        A0_tb <= '1'; A1_tb <= '0'; A2_tb <= '0'; A3_tb <= '0';
        B0_tb <= '0'; B1_tb <= '1'; B2_tb <= '0'; B3_tb <= '0';
        Bin_tb <= '0';
        wait for clk_period * 2;

        A0_tb <= '0'; A1_tb <= '0'; A2_tb <= '1'; A3_tb <= '1';
        B0_tb <= '1'; B1_tb <= '0'; B2_tb <= '1'; B3_tb <= '0';
        Bin_tb <= '1';
        wait for clk_period * 2;

        A0_tb <= '1'; A1_tb <= '1'; A2_tb <= '1'; A3_tb <= '1';
        B0_tb <= '0'; B1_tb <= '0'; B2_tb <= '0'; B3_tb <= '0';
        Bin_tb <= '1';
        wait for clk_period * 2;

        A0_tb <= '0'; A1_tb <= '1'; A2_tb <= '0'; A3_tb <= '1';
        B0_tb <= '0'; B1_tb <= '1'; B2_tb <= '0'; B3_tb <= '1';
        Bin_tb <= '0';
        wait for clk_period * 2;

        wait;
    end process;

end behavior;

