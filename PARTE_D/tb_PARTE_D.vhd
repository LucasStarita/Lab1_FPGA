LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_PARTE_D IS
END tb_PARTE_D;

ARCHITECTURE behavior OF tb_PARTE_D IS

    COMPONENT PARTE_D
        PORT (
            reset : IN STD_LOGIC;
            clock : IN STD_LOGIC;
            X     : IN STD_LOGIC;
            LED1  : OUT STD_LOGIC;
            LED2  : OUT STD_LOGIC;
            LED3  : OUT STD_LOGIC;
            LED4  : OUT STD_LOGIC
        );
    END COMPONENT;

    signal clock_tb  : std_logic := '0';
    signal X_tb      : std_logic := '0';
    signal LED1_tb   : std_logic;
    signal LED2_tb   : std_logic;
    signal LED3_tb   : std_logic;
    signal LED4_tb   : std_logic;

    constant clk_period : time := 20 ns;

BEGIN

    uut: PARTE_D
        PORT MAP (
            reset => '0',
            clock => clock_tb,
            X     => X_tb,
            LED1  => LED1_tb,
            LED2  => LED2_tb,
            LED3  => LED3_tb,
            LED4  => LED4_tb
        );

    clock_process : process
    begin
        while True loop
            clock_tb <= '0';
            wait for clk_period / 2;
            clock_tb <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    stimulus_process : process
    begin
        X_tb <= '0';
        wait for clk_period * 3;

        X_tb <= '1';
        wait for clk_period * 3;

        X_tb <= '0';
        wait for clk_period * 3;

        X_tb <= '1';
        wait for clk_period * 3;

        wait;
    end process;

END behavior;
