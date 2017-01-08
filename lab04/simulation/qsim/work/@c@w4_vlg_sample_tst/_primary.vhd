library verilog;
use verilog.vl_types.all;
entity CW4_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(17 downto 0);
        sampler_tx      : out    vl_logic
    );
end CW4_vlg_sample_tst;
