library verilog;
use verilog.vl_types.all;
entity asyncmod12 is
    port(
        pin_name2       : out    vl_logic;
        pin_name1       : in     vl_logic;
        pin_name3       : out    vl_logic;
        pin_name4       : out    vl_logic;
        pin_name5       : out    vl_logic
    );
end asyncmod12;
