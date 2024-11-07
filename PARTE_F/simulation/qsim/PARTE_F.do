onerror {quit -f}
vlib work
vlog -work work PARTE_F.vo
vlog -work work PARTE_F.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Division_vlg_vec_tst
vcd file -direction PARTE_F.msim.vcd
vcd add -internal Division_vlg_vec_tst/*
vcd add -internal Division_vlg_vec_tst/i1/*
add wave /*
run -all
