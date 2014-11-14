library verilog;
use verilog.vl_types.all;
entity Q1_Barrel_Shifter is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        C               : in     vl_logic_vector(7 downto 0);
        SBarR           : in     vl_logic;
        S               : out    vl_logic_vector(7 downto 0)
    );
end Q1_Barrel_Shifter;
