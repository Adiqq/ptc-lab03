onerror {quit -f}
vlib work
vlog -work work licznik74193.vo
vlog -work work licznik74193.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.licznik74193_vlg_vec_tst
vcd file -direction licznik74193.msim.vcd
vcd add -internal licznik74193_vlg_vec_tst/*
vcd add -internal licznik74193_vlg_vec_tst/i1/*
add wave /*
run -all
