onerror {quit -f}
vlib work
vlog -work work licznik7943.vo
vlog -work work licznik7943.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.licznik7943_vlg_vec_tst
vcd file -direction licznik7943.msim.vcd
vcd add -internal licznik7943_vlg_vec_tst/*
vcd add -internal licznik7943_vlg_vec_tst/i1/*
add wave /*
run -all
