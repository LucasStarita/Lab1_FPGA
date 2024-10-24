library ieee;
use ieee.std_logic_1164.all;

entity RestadorCompleto_tb is
end RestadorCompleto_tb;

architecture Behavioral of RestadorCompleto_tb is

    component RestadorCompleto
        Port (
            in_A     : in  std_logic;
            in_B     : in  std_logic;
            in_Cin   : in  std_logic;
            clk      : in  std_logic;
            out_Diff : out std_logic;
            out_Cout : out std_logic
        );
    end component;

    signal A_tb, B_tb, Cin_tb, clk_tb: std_logic;
    signal Diff_tb, Cout_tb : std_logic;

    constant clk_period : time := 10 ns;  

begin

    uut: RestadorCompleto
        port map (
            in_A     => A_tb,
            in_B     => B_tb,
            in_Cin   => Cin_tb,
            clk      => clk_tb,
            out_Diff => Diff_tb,
            out_Cout => Cout_tb
        );

    clk_process : process
    begin
        clk_tb <= '0';
        wait for clk_period/2;
        clk_tb <= '1';
        wait for clk_period/2;
    end process;

    stimulus_process : process
    begin
        A_tb   <= '0';
        B_tb   <= '0';
        Cin_tb <= '0';
        wait for 20 ns;

        A_tb <= '0';
        B_tb <= '0';
        Cin_tb <= '0';
        wait for clk_period * 2; 

        A_tb <= '1';
        B_tb <= '0';
        Cin_tb <= '0';
        wait for clk_period * 2;

        A_tb <= '1';
        B_tb <= '1';
        Cin_tb <= '0';
        wait for clk_period * 2;

        A_tb <= '1';
        B_tb <= '1';
        Cin_tb <= '1';
        wait for clk_period * 2;

        A_tb <= '0';
        B_tb <= '1';
        Cin_tb <= '1';
        wait for clk_period * 2;

        wait;
    end process;

end Behavioral;
