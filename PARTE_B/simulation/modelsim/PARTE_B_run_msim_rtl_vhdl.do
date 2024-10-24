transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Sorteito/Desktop/Lab_FPGA/PARTE_B/D_FF.vhd}
vcom -93 -work work {C:/Users/Sorteito/Desktop/Lab_FPGA/PARTE_B/RestadorCompleto.vhd}

