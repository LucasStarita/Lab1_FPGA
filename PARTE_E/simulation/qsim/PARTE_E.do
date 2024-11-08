onerror {quit -f}
vlib work
vlog -work work PARTE_E.vo
vlog -work work PARTE_E.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Circuito_Final_vlg_vec_tst
vcd file -direction PARTE_E.msim.vcd
vcd add -internal Circuito_Final_vlg_vec_tst/*
vcd add -internal Circuito_Final_vlg_vec_tst/i1/*
add wave /*
run -all
