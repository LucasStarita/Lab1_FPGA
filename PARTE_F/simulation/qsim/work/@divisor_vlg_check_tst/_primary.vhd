library verilog;
use verilog.vl_types.all;
entity Divisor_vlg_check_tst is
    port(
        cociente        : in     vl_logic_vector(7 downto 0);
        resto           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Divisor_vlg_check_tst;
