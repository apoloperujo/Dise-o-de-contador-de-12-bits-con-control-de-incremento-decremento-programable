library verilog;
use verilog.vl_types.all;
entity Integrador is
    port(
        PAUSA           : out    vl_logic;
        K               : in     vl_logic_vector(2 downto 0);
        ERROR           : out    vl_logic;
        Clock           : in     vl_logic;
        Recargar        : in     vl_logic;
        LOAD_I          : in     vl_logic;
        DATA            : inout  vl_logic_vector(11 downto 0);
        LOAD_F          : in     vl_logic;
        UpDown          : in     vl_logic;
        START           : in     vl_logic;
        FIN             : out    vl_logic;
        Continuar       : in     vl_logic;
        A               : out    vl_logic_vector(11 downto 0);
        B               : out    vl_logic_vector(11 downto 0)
    );
end Integrador;
