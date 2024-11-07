library verilog;
use verilog.vl_types.all;
entity Division_vlg_check_tst is
    port(
        cociente        : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end Division_vlg_check_tst;
