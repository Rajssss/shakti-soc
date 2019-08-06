Vivado_loc=$(shell which vivado)

.PHONY: program_mcs_spansion
program_mcs_spansion: ## Program the FPGA Configuration Memory in order to use the onboard ftdi jtag chain
	sudo $(Vivado_loc) -nojournal -nolog -mode tcl -source program_mcs_arty_a7_spansion.tcl
	echo "Please Disconnect and reconnect Your Arty Board from your PC"
	echo "After programming reset the device once and run \"sudo openocd \
	-f shakti-arty.cfg\" to start a gdb server at localhost:3333 "

.PHONY: program_mcs_micron
program_mcs_micron: ## Program the FPGA Configuration Memory in order to use the onboard ftdi jtag chain
	sudo $(Vivado_loc) -nojournal -nolog -mode tcl -source program_mcs_arty_a7_micron.tcl
	echo "Please Disconnect and reconnect Your Arty Board from your PC"
	echo "After programming reset the device once and run \"sudo openocd \
	-f shakti-arty.cfg\" to start a gdb server at localhost:3333 "


