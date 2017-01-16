onerror {quit -f}
vlib work
vlog -work work asyncmod12.vo
vlog -work work asyncmod12.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.asyncmod12_vlg_vec_tst
vcd file -direction asyncmod12.msim.vcd
vcd add -internal asyncmod12_vlg_vec_tst/*
vcd add -internal asyncmod12_vlg_vec_tst/i1/*
add wave /*
run -all
