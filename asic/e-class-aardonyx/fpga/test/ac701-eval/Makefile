## 			Makefile for E-Class on Arty-A7

ifeq (, $(wildcard ./old_vars))
	old_define_macros = ""
else
	include ./../../../old_vars
endif

FPGA:=xc7a200tfbg676-2
JTAG_TYPE:=JTAG_EXTERNAL
ISA=RV32IMAC
SYNTHTOP=fpga_top
JOBS=4
XLEN=32

SHAKTI_HOME=$(PWD)
export SHAKTI_HOME

WORKING_DIR := $(shell pwd)
Vivado_loc=$(shell which vivado)



# ------------------------------------- Makefile TARGETS ----------------------------------------- #
default: ip_build ac701_build generate_mcs program

.PHONY: help
help: ## This help dialog.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | column	-c2 -t -s :

.PHONY: ip_build
ip_build: ## build Xilinx Core-IPs used in this project
	vivado -log ipbuild.log -nojournal -mode tcl -notrace -source tcl/create_ip_project.tcl \
                -tclargs $(FPGA) $(ISA) $(JOBS) \
                || (echo "Could not create IP project"; exit 1)

.PHONY: ac701_build
ac701_build:
	vivado -nojournal -nolog -mode tcl -notrace -source tcl/create_project.tcl -tclargs $(SYNTHTOP) $(FPGA) $(ISA) $(JTAG_TYPE) \
	|| (echo "Could not create core project"; exit 1)
	vivado -nojournal -log artybuild.log -notrace -mode tcl -source tcl/run.tcl \
		-tclargs $(JOBS) || (echo "ERROR: While running synthesis")

.PHONY: program
program: ## program the fpga
	sudo $(Vivado_loc) -nojournal -nolog -mode tcl -source tcl/program.tcl

.PHONY: generate_mcs
generate_mcs: ## Generate the FPGA Configuration Memory file.
	vivado -nojournal -nolog -mode tcl -source tcl/generate_mcs.tcl

.PHONY: program_mcs_spansion
program_mcs_spansion: ## Program the FPGA Configuration Memory in order to use the onboard ftdi jtag chain
	sudo $(Vivado_loc) -nojournal -nolog -mode tcl -source tcl/program_mcs_arty_a7_spansion.tcl
	echo "Please Disconnect and reconnect Your Arty Board from your PC"
	echo "After programming reset the device once and run \"sudo openocd \
	-f shakti-arty.cfg\" to start a gdb server at localhost:3333 "

clean-fpga: ## delete fpga_prject and journal/log files as well
	sudo rm -rf fpga_project *.jou *.log

restore: ## clean bsv-build, verilog and fpga folders
restore: clean-fpga

#	@vivado -mode tcl -notrace -source $(SHAKTI_HOME)/src/tcl/create_divider.tcl -tclargs $(XLEN) $(DIVSTAGES) ||\
(echo "Could not create Divider IP"; exit 1)

