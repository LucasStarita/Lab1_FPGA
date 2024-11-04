transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Sorteito/Desktop/Lab_FPGA/PARTE_A/PARTE_A.vhd}

vcom -93 -work work {C:/Users/Sorteito/Desktop/Lab_FPGA/PARTE_A/PARTE_A_TESTBENCH.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  PARTE_A_TESTBENCH

add wave *
view structure
view signals
run -all
