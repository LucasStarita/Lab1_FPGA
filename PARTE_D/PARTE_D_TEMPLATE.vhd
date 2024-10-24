library ieee;
use ieee.std_logic_1164.all;

entity PARTE_D_TEMPLATE is
	port(
		clk   : in  std_logic;
		X : in  std_logic;
		reset : in  std_logic;
		LED1  : out std_logic;
		LED2  : out std_logic;
		LED3  : out std_logic;
		LED4  : out std_logic
	);
end entity;

architecture rtl of PARTE_D_TEMPLATE is
	type state_type is (A, B, C, D, E, F, G);
	signal state : state_type;
begin
	process (clk, reset)
	begin
		if reset = '1' then
			state <= A;
		elsif (rising_edge(clk)) then
			case state is
				when A =>
					if X = '1' then
						state <= E;
					else
						state <= B;
					end if;
				when B =>
					if X = '1' then
						state <= C;
					else
						state <= C;
					end if;
				when C =>
					if X = '1' then
						state <= G;
					else
						state <= D;
					end if;
				when D =>
					if X = '1' then
						state <= A;
					else
						state <= A;
					end if;
				when E =>
					if X = '1' then
						state <= F;
					else
						state <= F;
					end if;
				when F =>
					if X = '1' then
						state <= C;
					else
						state <= C;
					end if;
				when G =>
					if X = '1' then
						state <= A;
					else
						state <= A;
					end if;
			end case;
		end if;
	end process;

	process (state)
	begin
		case state is
			when A =>
				LED1 <= '0'; LED2 <= '0'; LED3 <= '0'; LED4 <= '0';
			when B =>
				LED1 <= '0'; LED2 <= '1'; LED3 <= '1'; LED4 <= '0';
			when C =>
				LED1 <= '1'; LED2 <= '1'; LED3 <= '1'; LED4 <= '1';
			when D =>
				LED1 <= '1'; LED2 <= '0'; LED3 <= '0'; LED4 <= '1';
			when E =>
				LED1 <= '1'; LED2 <= '0'; LED3 <= '0'; LED4 <= '0';
			when F =>
				LED1 <= '1'; LED2 <= '1'; LED3 <= '0'; LED4 <= '0';
			when G =>
				LED1 <= '1'; LED2 <= '1'; LED3 <= '1'; LED4 <= '0';
		end case;
	end process;
end rtl;

