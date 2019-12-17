## 			Makefile for E-Class on Arty-A7

ifeq (, $(wildcard ./old_vars))
	old_define_macros = ""
else
	include ./old_vars
endif

CONFIG=core_config.inc

include $(CONFIG)

ifeq ($(define_macros),)
	define_macros+= -D Addr_space=21
else
ifneq (,$(findstring Addr_space,$(define_macros)))
else
	override define_macros+= -D Addr_space=21
endif
endif

SHAKTI_HOME=$(PWD)
export SHAKTI_HOME

TOP_MODULE:=mkSoc
TOP_FILE:=Soc.bsv
TOP_DIR:=./
WORKING_DIR := $(shell pwd)
Vivado_loc=$(shell which vivado)


# ------------------ based on the config generate define macros for bsv compilation --------------#
ifneq (,$(findstring RV64,$(ISA)))
  override define_macros += -D RV64=True
  XLEN=64
endif
ifneq (,$(findstring RV32,$(ISA)))
  override define_macros += -D RV32=True
  XLEN=32
endif
ifneq (,$(findstring M,$(ISA)))
  ifeq ($(MUL), fpga)
    override define_macros += -D muldiv_fpga=True -D muldiv=True
  else
    override define_macros += -D $(MUL)=True -D muldiv=True
  endif
endif
ifneq (,$(findstring A,$(ISA)))
  override define_macros += -D atomic=True
endif
ifneq (,$(findstring C,$(ISA)))
  override define_macros += -D compressed=True
endif
ifeq ($(SYNTH),SIM)
  override define_macros += -D simulate=True
endif
ifeq ($(USERTRAPS), enable)
  override define_macros += -D usertraps=True
endif
ifeq ($(USER), enable)
  override define_macros += -D user=True
endif
ifeq ($(RTLDUMP), enable)
  override define_macros += -D rtldump=True
endif
ifeq ($(ASSERTIONS), enable)
  override define_macros += -D ASSERT=True
endif
ifeq ($(PMP), enable)
	override define_macros += -D pmp=True
endif
ifeq ($(ARITHTRAP), enable)
	override define_macros += -D arith_trap=True
endif
ifeq ($(DEBUG), enable)
	override define_macros += -D debug=True
endif
ifeq ($(OPENOCD), enable)
	override define_macros += -D openocd=True
endif
ifeq ($(BSCAN2E), enable)
	override define_macros += -D bscan2e=True
	JTAG_TYPE:=JTAG_BSCAN2E
else
	JTAG_TYPE:=JTAG_EXTERNAL
endif
ifneq ($(TRIGGERS), 0)
	override define_macros += -D triggers=True -D trigger_num=$(TRIGGERS)
	ifeq ($(XLEN), 64)
		override define_macros += -D mcontext=0 -D scontext=0
	else
		override define_macros += -D mcontext=0 -D scontext=0
	endif
endif

ifneq ($(COUNTERS), 0)
	override define_macros += -D perfmonitors=True -D counters=$(COUNTERS)
endif

override define_macros += -D VERBOSITY=$(VERBOSITY) -D CORE_$(COREFABRIC)=True \
													-D MULSTAGES=$(MULSTAGES) -D DIVSTAGES=$(DIVSTAGES) \
													-D Counters=$(COUNTERS) -D paddr=$(PADDR) -D vaddr=$(XLEN) \
													-D PMPSIZE=$(PMPSIZE) -D resetpc=$(RESETPC) -D causesize=$(CAUSESIZE)\
													-D DTVEC_BASE=$(DTVEC_BASE)
		
# ------------------------------------------------------------------------------------------------ #
# ------------------ Include directories for bsv compilation ------------------------------------- #
CORE:=./e-class/src/core/
M_EXT:=./e-class/src/core/m_ext/
FABRIC:=./fabrics/axi4:./fabrics/axi4lite
PERIPHERALS:=./devices/bootrom:./devices/pwm:./devices/uart:./devices/clint:./devices/bram:./devices/riscvDebug013:./devices/jtagdtm/:./devices/err_slave/:./devices/gpio/:./devices/plic/:./devices/i2c/:./devices/spi/:devices/qspi/
COMMON_BSV:=./common_bsv/
COMMON_VERILOG:=./common_verilog/
BSVINCDIR:=.:%/Prelude:%/Libraries:%/Libraries/BlueNoC:$(CORE):$(M_EXT):$(FABRIC):$(PERIPHERALS):$(COMMON_BSV):$(COMMON_VERILOG)
# ------------------------------------------------------------------------------------------------ #


# ---------------- Setting the variables for bluespec compile  --------------------------------- #
BSC_CMD:= bsc -u -verilog -elab 
BSVCOMPILEOPTS:= +RTS -K40000M -RTS -check-assert  -keep-fires -opt-undetermined-vals \
								 -remove-false-rules -remove-empty-rules -remove-starved-rules -remove-dollar \
								 -unspecified-to X
VERILOGDIR:=./verilog/
BSVBUILDDIR:=./bsv_build/
ifeq (, $(wildcard ${TOOLS_DIR}/shakti-tools/insert_license.sh))
  VERILOG_FILTER:= -verilog-filter ${BLUESPECDIR}/bin/basicinout
else
  VERILOG_FILTER:= -verilog-filter ${BLUESPECDIR}/bin/basicinout \
									 -verilog-filter ${TOOLS_DIR}/shakti-tools/insert_license.sh \
									 -verilog-filter ${TOOLS_DIR}/shakti-tools/rename_translate.sh
  VERILOGLICENSE:= cp ${TOOLS_DIR}/shakti-tools/IITM_LICENSE.txt ${VERILOGDIR}
endif
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------- Makefile TARGETS ----------------------------------------- #
default: generate_verilog ip_build arty_build

.PHONY: help
help: ## This help dialog.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | column	-c2 -t -s :

check-env:
	@if test -z "$$BLUESPECDIR"; then echo "BLUESPECDIR variable not set"; exit 1; fi;

.PHONY: check-restore
check-restore:
	@if [ "$(define_macros)" != "$(old_define_macros)" ];	then	make clean-bsv ;	fi;

.PHONY: call_manager
call_manager:
	@/bin/bash ./manager.sh update_deps

.PHONY: generate_boot_files
generate_boot_files:
	@cd boot-code; make
	@cp boot-code/outputs/boot.mem $(VERILOGDIR)/

.PHONY: set_jtag_bscan2e
set_jtag_bscan2e: 
	@sed -i 's/BSCAN2E=.*/BSCAN2E=enable/g' core_config.inc 

.PHONY: set_raw_jtag_jlink
set_raw_jtag_jlink: 
	@sed -i 's/BSCAN2E=.*/BSCAN2E=disable/g' core_config.inc 

.PHONY: quick_build_xilinx
quick_build_xilinx: call_manager set_jtag_bscan2e generate_verilog generate_boot_files ip_build arty_build generate_mcs program_mcs_spansion
	
.PHONY: quick_build_raw_jtag
quick_build_raw_jtag: call_manager set_raw_jtag_jlink generate_verilog generate_boot_files ip_build arty_build program_fpga_jlink

.PHONY: generate_verilog
generate_verilog: ## Generete verilog from BSV 
generate_verilog: check-restore check-env
	@echo Compiling $(TOP_MODULE) in verilog ...
	@mkdir -p $(BSVBUILDDIR); 
	@mkdir -p $(VERILOGDIR); 
	@echo "old_define_macros = $(define_macros)" > old_vars
	$(BSC_CMD) -vdir $(VERILOGDIR) -bdir $(BSVBUILDDIR) -info-dir $(BSVBUILDDIR)\
  $(define_macros) $(BSVCOMPILEOPTS) $(VERILOG_FILTER) \
  -p $(BSVINCDIR) -g $(TOP_MODULE) $(TOP_DIR)/$(TOP_FILE)  || (echo "BSC COMPILE ERROR"; exit 1) 
	@cp ${BLUESPECDIR}/Verilog.Vivado/RegFile.v ${VERILOGDIR}  
	@cp ${BLUESPECDIR}/Verilog.Vivado/BRAM2BELoad.v ${VERILOGDIR}  
	@cp ${BLUESPECDIR}/Verilog/FIFO2.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFO1.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFO10.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFOL1.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/Counter.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SizedFIFO.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/ResetEither.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/MakeReset0.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncReset0.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/ClockInverter.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncFIFO1.v ${VERILOGDIR}
	@cp ./common_verilog/bram_1rw.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFO20.v ${VERILOGDIR}
#	@cp ${BLUESPECDIR}/Verilog/SyncFIFO.v ${VERILOGDIR}
#	@cp ${BLUESPECDIR}/Verilog/RevertReg.v ${VERILOGDIR}
#	@cp ./common_verilog/bram_1r1w.v ${VERILOGDIR}
#	@cp ${BLUESPECDIR}/Verilog/RegFileLoad.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncRegister.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/MakeClock.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/UngatedClockMux.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/MakeResetA.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncResetA.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncHandshake.v ${VERILOGDIR}
	@$(VERILOGLICENSE)
	@echo Compilation finished



.PHONY: ip_build
ip_build: ## build Xilinx Core-IPs used in this project
	vivado -log ipbuild.log -nojournal -mode tcl -notrace -source tcl/create_ip_project.tcl \
		-tclargs $(FPGA) $(XLEN) $(MULSTAGES) $(ISA) $(JOBS) \
		|| (echo "Could not create IP project"; exit 1)

.PHONY: arty_build
arty_build:
	vivado -nojournal -nolog -mode tcl -notrace -source tcl/create_project.tcl -tclargs $(SYNTHTOP) $(FPGA) $(ISA) $(JTAG_TYPE) \
	|| (echo "Could not create core project"; exit 1)
	vivado -nojournal -log artybuild.log -notrace -mode tcl -source tcl/run.tcl \
		-tclargs $(JOBS) || (echo "ERROR: While running synthesis")

.PHONY: program_fpga_jlink
program_fpga_jlink: ## program the fpga
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

.PHONY: program_mcs_micron
program_mcs_micron: ## Program the FPGA Configuration Memory in order to use the onboard ftdi jtag chain
	sudo $(Vivado_loc) -nojournal -nolog -mode tcl -source tcl/program_mcs_arty_a7_micron.tcl
	echo "Please Disconnect and reconnect Your Arty Board from your PC"
	echo "After programming reset the device once and run \"sudo openocd \
	-f shakti-arty.cfg\" to start a gdb server at localhost:3333 "

.PHONY: clean-bsv
clean-bsv: ## clean bsv build director
	rm -rf $(BSVBUILDDIR) old_vars

clean-verilog: ## delete verilog folder
clean-verilog:
	rm -rf verilog/

clean-fpga: ## delete fpga_prject and journal/log files as well
	rm -rf fpga_project *.jou *.log

restore: ## clean bsv-build, verilog and fpga folders
restore: clean-bsv clean-verilog clean-fpga
	@cd boot-code; make clean

#	@vivado -mode tcl -notrace -source $(SHAKTI_HOME)/src/tcl/create_nexys4_mig.tcl ||\
(echo "Could not create NEXYS4DDR-MIG  IP"; exit 1)
#	@vivado -mode tcl -notrace -source $(SHAKTI_HOME)/src/tcl/create_divider.tcl -tclargs $(XLEN) $(DIVSTAGES) ||\
(echo "Could not create Divider IP"; exit 1)

