onerror {quit -f}
vlib work
vlog -work work licznik74161.vo
vlog -work work licznik74161.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.licznik74161_vlg_vec_tst
vcd file -direction licznik74161.msim.vcd
vcd add -internal licznik74161_vlg_vec_tst/*
vcd add -internal licznik74161_vlg_vec_tst/i1/*
add wave /*
run -all
