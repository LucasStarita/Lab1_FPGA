library verilog;
use verilog.vl_types.all;
entity PARTE_E_vlg_check_tst is
    port(
        Hab_ACK         : in     vl_logic;
        Hab_Dat         : in     vl_logic;
        Hab_Dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end PARTE_E_vlg_check_tst;
