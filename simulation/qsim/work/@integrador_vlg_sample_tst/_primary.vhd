library verilog;
use verilog.vl_types.all;
entity Integrador_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Continuar       : in     vl_logic;
        DATA            : in     vl_logic_vector(11 downto 0);
        K               : in     vl_logic_vector(2 downto 0);
        LOAD_F          : in     vl_logic;
        LOAD_I          : in     vl_logic;
        Recargar        : in     vl_logic;
        START           : in     vl_logic;
        UpDown          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Integrador_vlg_sample_tst;
