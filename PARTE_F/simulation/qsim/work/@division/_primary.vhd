library verilog;
use verilog.vl_types.all;
entity Division is
    port(
        divisor         : in     vl_logic_vector(5 downto 0);
        dividendo       : in     vl_logic_vector(5 downto 0);
        cociente        : out    vl_logic_vector(9 downto 0)
    );
end Division;
