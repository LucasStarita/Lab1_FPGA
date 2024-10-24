library ieee;
use ieee.std_logic_1164.all;

entity RestadorCompleto is
    Port (
        in_A          : in  std_logic;  
        in_B          : in  std_logic;  
        in_Cin        : in  std_logic;  
        clk           : in  std_logic;  
		  out_Diff      : out std_logic;  
        out_Cout      : out std_logic   
    );
end RestadorCompleto;

architecture Behavioral of RestadorCompleto is

component D_FF
	port( D,CLOCK: in std_logic;
		Q: out std_logic);
end component;


	signal A,B,Cin,Cout,Diff: std_logic;

begin

	Diff <= A xor B xor Cin;  
	Cout <= ((not A and B) or (not A and Cin) or (B and Cin)); 

--D1: D_FF port map (in_A,clk,A);
--D2: D_FF port map (in_B,clk,B);
--D3: D_FF port map (in_Cin,clk,Cin);
--D4: D_FF port map (out_Diff,clk,Diff);
--D5: D_FF port map (out_Cout,clk,Cout);

    D1: D_FF port map (D => in_A, CLOCK => clk, Q => A);
    D2: D_FF port map (D => in_B, CLOCK => clk, Q => B);
    D3: D_FF port map (D => in_Cin, CLOCK => clk, Q => Cin);
    D4: D_FF port map (D => Diff, CLOCK => clk, Q => out_Diff);
    D5: D_FF port map (D => Cout, CLOCK => clk, Q => out_Cout);	
	
end Behavioral;