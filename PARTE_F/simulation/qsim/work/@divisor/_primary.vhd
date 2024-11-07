library verilog;
use verilog.vl_types.all;
entity Divisor is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        divisor         : in     vl_logic_vector(7 downto 0);
        dividendo       : in     vl_logic_vector(7 downto 0);
        cociente        : out    vl_logic_vector(7 downto 0);
        resto           : out    vl_logic_vector(7 downto 0)
    );
end Divisor;
