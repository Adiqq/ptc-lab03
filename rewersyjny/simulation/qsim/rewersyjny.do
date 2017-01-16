onerror {quit -f}
vlib work
vlog -work work rewersyjny.vo
vlog -work work rewersyjny.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.rewersyjny_vlg_vec_tst
vcd file -direction rewersyjny.msim.vcd
vcd add -internal rewersyjny_vlg_vec_tst/*
vcd add -internal rewersyjny_vlg_vec_tst/i1/*
add wave /*
run -all
