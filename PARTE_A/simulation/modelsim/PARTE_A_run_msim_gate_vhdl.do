transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {PARTE_A_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/Sorteito/Desktop/Lab_FPGA/PARTE_A/PARTE_A_TESTBENCH.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=PARTE_A_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  PARTE_A_TESTBENCH

add wave *
view structure
view signals
run -all
