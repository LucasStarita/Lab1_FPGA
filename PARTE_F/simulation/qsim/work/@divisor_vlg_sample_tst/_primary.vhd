library verilog;
use verilog.vl_types.all;
entity Divisor_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dividendo       : in     vl_logic_vector(7 downto 0);
        divisor         : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Divisor_vlg_sample_tst;
