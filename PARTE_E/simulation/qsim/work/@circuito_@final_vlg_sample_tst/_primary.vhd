library verilog;
use verilog.vl_types.all;
entity Circuito_Final_vlg_sample_tst is
    port(
        MiDireccion     : in     vl_logic_vector(6 downto 0);
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Circuito_Final_vlg_sample_tst;
