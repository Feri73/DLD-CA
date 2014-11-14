library verilog;
use verilog.vl_types.all;
entity Barel is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        C               : in     vl_logic_vector(7 downto 0);
        SbarR           : in     vl_logic;
        S               : out    vl_logic_vector(7 downto 0)
    );
end Barel;
