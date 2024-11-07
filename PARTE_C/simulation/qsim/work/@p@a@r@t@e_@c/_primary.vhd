library verilog;
use verilog.vl_types.all;
entity PARTE_C is
    port(
        C0              : out    vl_logic;
        CLK             : in     vl_logic;
        A0              : in     vl_logic;
        B0              : in     vl_logic;
        Bin             : in     vl_logic;
        C1              : out    vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        C2              : out    vl_logic;
        A2              : in     vl_logic;
        B2              : in     vl_logic;
        C3              : out    vl_logic;
        A3              : in     vl_logic;
        B3              : in     vl_logic;
        B               : out    vl_logic;
        Z               : out    vl_logic
    );
end PARTE_C;
