library verilog;
use verilog.vl_types.all;
entity Division_vlg_sample_tst is
    port(
        dividendo       : in     vl_logic_vector(5 downto 0);
        divisor         : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end Division_vlg_sample_tst;
