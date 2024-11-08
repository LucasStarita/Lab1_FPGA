library verilog;
use verilog.vl_types.all;
entity Circuito_Final is
    port(
        Dato_Guardado   : out    vl_logic_vector(7 downto 0);
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        MiDireccion     : in     vl_logic_vector(6 downto 0);
        DireccionDestino: out    vl_logic_vector(6 downto 0)
    );
end Circuito_Final;
