onerror {quit -f}
vlib work
vlog -work work CW4.vo
vlog -work work CW4.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CW4_vlg_vec_tst
vcd file -direction CW4.msim.vcd
vcd add -internal CW4_vlg_vec_tst/*
vcd add -internal CW4_vlg_vec_tst/i1/*
add wave /*
run -all
