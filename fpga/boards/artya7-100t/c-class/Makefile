## 			Makefile for C-Class on Arty-A7
include makefile.inc
ISA=RV64IMACSU
JOBS:=1

WORKING_DIR := $(shell pwd)
Vivado_loc=$(shell which vivado || which vivado_lab)

ifeq ($(BSCAN2E), enable)
	override BSC_DEFINES += bscan2e=True
	JTAG_TYPE:=JTAG_BSCAN2E
else
	JTAG_TYPE:=JTAG_EXTERNAL
endif

MOREDEFINES=$(addprefix -D , $(BSC_DEFINES))

%.bo:
	$(info building $@)
	@$(BSCCMD) $(MOREDEFINES) -p $(BSVINCDIR) $<


# ------------------------------------- Makefile TARGETS ----------------------------------------- #
default: quick_build_xilinx

.PHONY: help
help: ## This help dialog.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | column	-c2 -t -s :

.PHONY: quick_build_xilinx
quick_build_xilinx: generate_verilog ip_build arty_build generate_mcs program_mcs

.PHONY: generate_verilog
generate_verilog: $(BSVBUILDDIR)/$(TOP_BIN)
	@cp ${BS_VERILOG_LIB}/../Verilog.Vivado/RegFile.v ${VERILOGDIR}  
	@cp ${BS_VERILOG_LIB}/../Verilog.Vivado/BRAM2BELoad.v ${VERILOGDIR}  
	@cp ${BS_VERILOG_LIB}/FIFO2.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/FIFO1.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/FIFO10.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/FIFOL1.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/Counter.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/SizedFIFO.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/ResetEither.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/MakeReset0.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/SyncReset0.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/ClockInverter.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/SyncFIFO1.v ${VERILOGDIR}
	@cp ${BS_VERILOG_LIB}/RevertReg.v ${VERILOGDIR}
	@cp ./common_verilog/bram_1rw.v ${VERILOGDIR}
	@cp ./common_verilog/bram_2rw.v ${VERILOGDIR}
	@cp common_verilog/signedmul.v ${VERILOGDIR}
	@echo Compilation finished


.PHONY: ip_build
ip_build: ## build Xilinx Core-IPs used in this project
	vivado -log ipbuild.log -nojournal -mode tcl -notrace -source tcl/create_ip_project.tcl \
		-tclargs $(FPGA) $(XLEN) $(ISA) $(JOBS) \
		|| (echo "Could not create IP project"; exit 1)

.PHONY: arty_build
arty_build:
	vivado -nojournal -nolog -mode tcl -notrace -source tcl/create_project.tcl -tclargs $(SYNTHTOP) $(FPGA) $(ISA) $(JTAG_TYPE) $(VERILOGDIR)\
	|| (echo "Could not create core project"; exit 1)
	vivado -nojournal -log artybuild.log -notrace -mode tcl -source tcl/run.tcl \
		-tclargs $(JOBS) || (echo "ERROR: While running synthesis")

.PHONY: program_fpga_jlink
program_fpga_jlink: ## program the fpga
	$(Vivado_loc) -nojournal -nolog -mode tcl -source tcl/program.tcl

.PHONY: generate_mcs
generate_mcs: ## Generate the FPGA Configuration Memory file.
	vivado -nojournal -nolog -mode tcl -source tcl/generate_mcs.tcl

.PHONY: program_mcs
program_mcs: ## Program the FPGA Configuration Memory in order to use the onboard ftdi jtag chain
	$(Vivado_loc) -nojournal -nolog -mode tcl -source tcl/program_mcs.tcl
	echo "Please Disconnect and reconnect Your Arty Board from your PC"
	echo "After programming reset the device once and run \"sudo openocd \
	-f shakti-arty.cfg\" to start a gdb server at localhost:3333 "

.PHONY: clean
clean: ## clean bsv build director
	rm -rf $(BSVBUILDDIR)/*
	rm -rf $(VERILOGDIR)/*
	rm -rf fpga_project *.jou *.log

