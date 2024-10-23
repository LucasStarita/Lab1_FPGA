library verilog;
use verilog.vl_types.all;
entity PARTE_A is
    port(
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        SW3             : in     vl_logic;
        LED             : out    vl_logic
    );
end PARTE_A;
