### 			Makefile for E-Class AARDONYX SoC

ifeq (, $(wildcard ./old_vars))
	old_define_macros = ""
else
	include ./old_vars
endif

CONFIG?=asic_config.inc

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
Vivado_loc=$(shell which vivado || which vivado_lab)

BSC_DIR:=$(shell which bsc)
BSC_VDIR:=$(subst bin/bsc,bin/,${BSC_DIR})../lib/Verilog

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
	TOP_MODULE=mkTbSoc
	TOP_FILE=TbSoc.bsv
endif
ifeq ($(SYNTH),WRAPPER_SIM)
  override define_macros += -D simulate=True
	TOP_MODULE=mktb_wrapper
	TOP_FILE=bsvmkaardonyx_wrapper_tb.bsv
endif
ifeq ($(SYNTH),FPGA_ARTY)
  override define_macros += -D fpga_arty=True
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

override define_macros += -D CORE_$(COREFABRIC)=True \
													-D MULSTAGES=$(MULSTAGES) -D DIVSTAGES=$(DIVSTAGES) \
													-D Counters=$(COUNTERS) -D paddr=$(PADDR) -D vaddr=$(XLEN) \
													-D PMPSIZE=$(PMPSIZE) -D resetpc=$(RESETPC) -D causesize=$(CAUSESIZE)\
													-D DTVEC_BASE=$(DTVEC_BASE)
		
# ------------------------------------------------------------------------------------------------ #
# ------------------ Include directories for bsv compilation ------------------------------------- #
CORE:=./e-class/src/core/
M_EXT:=./e-class/src/core/m_ext/
FABRIC:=./fabrics/axi4:./fabrics/axi4lite
PERIPHERALS:=./devices/pwm:./devices/uart_v2:./devices/clint:./devices/bram:./devices/riscvDebug013:./devices/jtagdtm/:./devices/err_slave/:./devices/gpio/:./devices/plic/:./devices/i2c/:./devices/spi/:devices/qspi/:devices/sdram/32-bit/
COMMON_BSV:=./common_bsv/
COMMON_VERILOG:=./common_verilog/
BSVINCDIR:=.:%/Prelude:%/Libraries:%/Libraries/BlueNoC:$(CORE):$(M_EXT):$(FABRIC):$(PERIPHERALS):$(COMMON_BSV):$(COMMON_VERILOG)
# ------------------------------------------------------------------------------------------------ #

# ----------------- Setting up flags for verilator ----------------------------------------------- #
VERILATOR_FLAGS += --stats -O3 $(verilate_fast) -LDFLAGS "-static" --x-assign fast --x-initial fast \
--noassert sim_main.cpp --bbox-sys -Wno-STMTDLY -Wno-UNOPTFLAT -Wno-WIDTH \
-Wno-lint -Wno-COMBDLY -Wno-INITIALDLY --autoflush $(coverage) $(trace) --threads $(THREADS) \
-DBSV_RESET_FIFO_HEAD -DBSV_RESET_FIFO_ARRAY -DBSV_ASYNC_RESET
VCS_MACROS =  +define+BSV_RESET_FIFO_HEAD=True +define+BSV_RESET_FIFO_ARRAY=True

ifeq (enable,$(VERBOSITY))
	VERILATOR_FLAGS += -DVERBOSE
	VCS_MACROS += +define+VERBOSE=True
endif
# ------------------------------------------------------------------------------------------------ #

# ---------------- Setting the variables for bluespec compile  --------------------------------- #
BSC_CMD:= bsc -u -verilog -elab 
BSVCOMPILEOPTS:= +RTS -K40000M -RTS -check-assert  -keep-fires -opt-undetermined-vals \
								 -remove-false-rules -remove-empty-rules -remove-starved-rules -remove-dollar \
								 -unspecified-to X
VERILOGDIR:=./verilog/
BSVBUILDDIR:=./bsv_build/
BSVOUTDIR:=./bin
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------- Makefile TARGETS ----------------------------------------- #
default: call_manager generate_verilog

.PHONY: help
help: ## This help dialog.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | column	-c2 -t -s :

check-env:
	@if test -z "$(BSC_DIR)"; then echo "BSC_DIR variable not set"; exit 1; fi;
	@if test -z "$(BSC_VDIR)"; then echo "BSC_VDIR variable not set"; exit 1; fi;

.PHONY: check-restore
check-restore:
	@if [ "$(define_macros)" != "$(old_define_macros)" ];	then	make clean-bsv;	fi;

.PHONY: call_manager
call_manager:
	@/bin/bash ./manager.sh update_deps


.PHONY: generate_verilog 
generate_verilog: ## Generete verilog from BSV 
generate_verilog: check-restore check-env
	@echo Compiling $(TOP_MODULE) in verilog ...
	@mkdir -p $(BSVBUILDDIR); 
	@mkdir -p $(VERILOGDIR); 
	@echo "old_define_macros = $(define_macros)" > old_vars
	$(BSC_CMD) -vdir $(VERILOGDIR) -bdir $(BSVBUILDDIR) -info-dir $(BSVBUILDDIR)\
  $(define_macros) $(BSVCOMPILEOPTS) \
  -p $(BSVINCDIR) -g $(TOP_MODULE) $(TOP_DIR)/$(TOP_FILE)  || (echo "BSC COMPILE ERROR"; exit 1) 
	@cp ${BSC_VDIR}/../Verilog.Vivado/RegFile.v ${VERILOGDIR}  
	@cp ${BSC_VDIR}/FIFO2.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/FIFO1.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/FIFO10.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/FIFOL1.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/Counter.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/SizedFIFO.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/ResetEither.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/MakeReset0.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/SyncReset0.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/ClockInverter.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/SyncFIFO1.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/FIFO20.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/../Verilog.Vivado/BRAM2BELoad.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/SyncRegister.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/MakeClock.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/UngatedClockMux.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/MakeResetA.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/SyncResetA.v ${VERILOGDIR}
	@cp ${BSC_VDIR}/SyncHandshake.v ${VERILOGDIR}
	@cp aardonyx.v ${VERILOGDIR}
	@cp devices/sdram/32-bit/controller/* ${VERILOGDIR}
	@echo Compilation finished

.PHONY: link_vcs
link_vcs: ## Generate simulation executable using Synopsys VCS
	@rm -rf $(BSVOUTDIR)
	@mkdir -p $(BSVOUTDIR)
	vcs -LDFLAGS -Wl,--no-as-needed -l vcs_compile.log -sverilog +vpi +v2k -lca +define+TOP=$(TOP_MODULE) $(VCS_MACROS) \
	+define+BSV_TIMESCALE=1ns/1ps +cli+4 +libext+.v +notimingcheck \
	-y $(VERILOGDIR)/ -y bfms/ bfms/main.v -o out
	@mv csrc out* $(BSVOUTDIR)

.PHONY: link_ncverilog
link_ncverilog: ## Generate simulation executable using Cadence NCVerilog
	@echo "Linking $(TOP_MODULE) using ncverilog..."
	@rm -rf work include $(BSVOUTDIR)/work
	@mkdir -p $(BSVOUTDIR)
	@mkdir work
	@echo "define work ./work" > cds.lib
	@echo "define WORK work" > hdl.var
	ncvlog -sv -cdslib ./cds.lib -hdlvar ./hdl.var +define+TOP=$(TOP_MODULE) $(VCS_MACROS) \
	bfms/main.v -y $(VERILOGDIR)/ -y bfms/
	@ncelab -access +r -cdslib ./cds.lib -hdlvar ./hdl.var work.main -timescale 1ns/1ps
	@echo 'ncsim -cdslib ./cds.lib -hdlvar ./hdl.var work.main "$$@"' > $(BSVOUTDIR)/out
	@mv work cds.lib hdl.var $(BSVOUTDIR)/
	@chmod +x $(BSVOUTDIR)/out
	@echo Linking finished

.PHONY: link_ncverilog_openocd
link_ncverilog_openocd: ## Generate simulation executable using Synopsys VCS with VPI for GDB
	@echo "Linking $(TOP_MODULE) using ncverilog..."
	@rm -rf work include ${BSVOUTDIR}/work
	@mkdir -p bin
	@mkdir work
	@echo "Building RBB VPI"
	@cp libs/*.so ./	
	@echo "define work ./work" > cds.lib
	@echo "define WORK work" > hdl.var
	@ncvlog -64BIT -sv -cdslib ./cds.lib -hdlvar ./hdl.var +define+TOP=$(TOP_MODULE) \
	bfms/main.v -y $(VERILOGDIR)/ -y ${BLUESPECDIR}/Verilog/ -y bfms/
	@ncelab -64BIT -cdslib ./cds.lib -hdlvar ./hdl.var work.main -loadvpi rbb_vpi.so: -timescale 1ns/1ps
	@echo 'ncsim -64BIT -cdslib ./cds.lib -hdlvar ./hdl.var -loadvpi rbb_vpi.so: work.main "$$@"' > $(BSVOUTDIR)/out
	@mv ./*.so $(BSVOUTDIR)/
	@mv work cds.lib hdl.var $(BSVOUTDIR)/
	@chmod +x $(BSVOUTDIR)/out
	@echo Linking finished

#.PHONY: link_irun
#link_irun:
#	rm -rf $(BSVOUTDIR) INCA_libs ncelab.log ncvlog.log irun.log irun.history
#	irun -libext .v +define+TOP=$(TOP_MODULE) $(VCS_MACROS) -timescale 1ns/1ps \
#		bfms/main.v -y $(VERILOGDIR)/ -y bfms/

.PHONY: link_irun
link_irun:
	@cp bfms/* verilog/.
	@cp aardonyx_wrapper.v verilog/.
	@cp code.mem verilog/.
	@irun -define TOP=mktb_wrapper -logfile ncsim.log -access +r -timescale 1ns/1ps \
-libext .v $(VERILOGDIR)/main.v -ncsimargs "+fullverbose" -define VERBOSE \
	-y $(VERILOGDIR)/ \
	-y ${BLUESPECDIR}/Verilog/

.PHONY: link_msim
link_msim: ## Generate simulation executable using Mentor's ModelSim tool
	@echo "Linking $(TOP_MODULE) using modelsim..."
	@rm -rf work* $(BSVOUTDIR)/*
	@mkdir -p $(BSVOUTDIR)
	vlib work
	vlog -work work +libext+.v+.vqm -y $(VERILOGDIR) -y ${BLUESPECDIR}/Verilog \
		+define+TOP=$(TOP_MODULE) $(VCS_MACROS) ${BLUESPECDIR}/Verilog/main.v \
		./$(VERILOGDIR)/$(TOP_MODULE).v  > compile_log
	mv compile_log ./$(BSVOUTDIR)
	mv work ./$(BSVOUTDIR)
	echo 'vsim -quiet -novopt -lib work -do "run -all; quit" -c main' > $(BSVOUTDIR)/out
	@chmod +x $(BSVOUTDIR)/out
	@echo Linking finished


.PHONY: link_verilator
link_verilator: ## Generate simulation executable using Verilator
	@echo "Linking $(TOP_MODULE) using verilator"
	@mkdir -p $(BSVOUTDIR) obj_dir
	@echo "#define TOPMODULE V$(TOP_MODULE)" > sim_main.h
	@echo '#include "V$(TOP_MODULE).h"' >> sim_main.h
	verilator $(VERILATOR_FLAGS) --cc $(TOP_MODULE).v -y $(VERILOGDIR) -y common_verilog --exe
	@ln -f -s sim_main.cpp obj_dir/sim_main.cpp
	@ln -f -s sim_main.h obj_dir/sim_main.h
	@make -j8 -C obj_dir -f V$(TOP_MODULE).mk
	@cp obj_dir/V$(TOP_MODULE) $(BSVOUTDIR)/out

.PHONY: link_verilator_gdb
link_verilator_gdb: ## Generate simulation executable using Verilator and VPI for GDB
	@echo "Linking Verilator With the Shakti RBB Vpi"
	@mkdir -p bin
	@echo "#define TOPMODULE V$(TOP_MODULE)_edited" >sim_main.h
	@echo '#include "V$(TOP_MODULE)_edited.h"' >> sim_main.h
	@sed  -f devices/jtagdtm/sed_script.txt  $(VERILOGDIR)/$(TOP_MODULE).v > tmp1.v
	@cat  devices/jtagdtm/verilator_config.vlt \
	      devices/jtagdtm/vpi_sv.v \
	      tmp1.v                         > $(VERILOGDIR)/$(TOP_MODULE)_edited.v
	@rm   -f  tmp1.v
	verilator --threads-dpi all --cc $(TOP_MODULE)_edited.v --exe sim_main.cpp devices/jtagdtm/RBB_Shakti.c -y $(VERILOGDIR) $(VERILATOR_FLAGS)
	@ln -f -s sim_main.cpp obj_dir/sim_main.cpp
	@ln -f -s sim_main.h obj_dir/sim_main.h
	@ln -f -s ./devices/jtagdtm/RBB_Shakti.c obj_dir/RBB_Shakti.c
	@echo "INFO: Linking verilated files"
	@make -j8 -C obj_dir -f V$(TOP_MODULE)_edited.mk
	@cp obj_dir/V$(TOP_MODULE)_edited bin/out
	@cp gdb_setup/code.mem* ./bin/
	@echo Linking finished

.PHONY: generate_boot_files
generate_boot_files: ## to generate boot files for simulation
generate_boot_files: update_xlen
	@mkdir -p bin
	@cd verification/dts/; make;
	@cut -c1-8 verification/dts/boot.hex > bin/boot.MSB
	@if [ "$(XLEN)" = "64" ]; then\
	  cut -c9-16 verification/dts/boot.hex > bin/boot.LSB;\
    else cp bin/boot.MSB bin/boot.LSB;\
  fi

.PHONY: generate_boot_files_wrapper
generate_boot_files_wrapper: 
	@cd boot-code;make boot_simulation.shakti;cp outputs/boot.mem .;./gen_bootrom_bsvi.sh; 
	@cp boot-code/bootrom.bsvi .


.PHONY: program
program: ## program the fpga
	sudo $(Vivado_loc) -nojournal -nolog -mode tcl -source tcl/program.tcl

.PHONY: clean-bsv
clean-bsv: ## clean bsv build director
	rm -rf $(BSVBUILDDIR) old_vars $(BSVOUTDIR)

clean-verilog: ## delete verilog folder
clean-verilog:
	rm -rf verilog/

clean-fpga: ## delete fpga_prject and journal/log files as well
	rm -rf fpga_project *.jou *.log

restore: ## clean bsv-build, verilog and fpga folders
restore: clean-bsv clean-verilog clean-fpga

#	@vivado -mode tcl -notrace -source $(SHAKTI_HOME)/src/tcl/create_nexys4_mig.tcl ||\
(echo "Could not create NEXYS4DDR-MIG  IP"; exit 1)
#	@vivado -mode tcl -notrace -source $(SHAKTI_HOME)/src/tcl/create_divider.tcl -tclargs $(XLEN) $(DIVSTAGES) ||\
(echo "Could not create Divider IP"; exit 1)

