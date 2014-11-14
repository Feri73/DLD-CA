library verilog;
use verilog.vl_types.all;
entity Q2_ALU is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic_vector(4 downto 0);
        si              : in     vl_logic;
        ci              : in     vl_logic;
        R               : out    vl_logic_vector(7 downto 0);
        N               : out    vl_logic;
        Z               : out    vl_logic;
        O               : out    vl_logic;
        E               : out    vl_logic;
        Co              : out    vl_logic
    );
end Q2_ALU;
