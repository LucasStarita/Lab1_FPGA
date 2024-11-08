library verilog;
use verilog.vl_types.all;
entity Circuito_Final_vlg_check_tst is
    port(
        Dato_Guardado   : in     vl_logic_vector(7 downto 0);
        DireccionDestino: in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end Circuito_Final_vlg_check_tst;
