## 			Makefile for C-Class on Arty-A7

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

TOP_MODULE:=mkTbSoc
TOP_FILE:=TbSoc.bsv
TOP_DIR:=./
WORKING_DIR := $(shell pwd)


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
ifneq (,$(findstring F,$(ISA)))
  override define_macros += -D spfpu=True
  FLOAT=--float
endif
ifneq (,$(findstring D,$(ISA)))
  override define_macros += -D dpfpu=True
  FLOAT=--float
endif
ifneq (,$(findstring C,$(ISA)))
  override define_macros += -D compressed=True
endif
ifeq ($(SYNTH),SIM)
  override define_macros += -D simulate=True
endif
ifeq ($(BOOTROM), enable)
  override define_macros += -D BOOTROM=True
endif
ifeq ($(COREFABRIC), AXI4Lite)
  override define_macros += -D CORE_AXI4Lite=True
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
ifeq ($(SUPERVISOR),  enable)
  override define_macros += -D supervisor=True
endif
ifeq ($(ASSERTIONS), enable)
  override define_macros += -D ASSERT=True
endif
ifeq ($(ICACHE), enable)
  override define_macros += -D icache=True
endif
ifeq ($(DCACHE), enable)
  override define_macros += -D dcache=True
endif
ifeq ($(PMP), enable)
	override define_macros += -D pmp=True
endif
ifneq ($(PREDICTOR), none)
	override define_macros += -D bpu=True 
  ifneq (,$(findstring C,$(ISA)))
		override define_macros += -D $(PREDICTOR)_c=True
  else
		override define_macros += -D $(PREDICTOR)_nc=True
  endif
endif
ifeq ($(ARITH_TRAP), enable)
	override define_macros += -D arith_trap=True
endif
ifeq ($(DEBUG), enable)
	override define_macros += -D debug=True
endif
ifeq ($(OPENOCD), enable)
	override define_macros += -D openocd=True
endif
# Generate ifence if icache or bpu is enabled
ifeq ($(ICACHE), enable)
	override define_macros += -D ifence=True
else ifneq ($(PREDICTOR), none)
	override define_macros += -D ifence=True
endif

ifneq ($(TRIGGERS), 0)
	override define_macros += -D triggers=True -D trigger_num=$(TRIGGERS)
	ifeq ($(XLEN), 64)
		override define_macros += -D mcontext=0 -D scontext=0
	else
		override define_macros += -D mcontext=0 -D scontext=0
	endif
endif

override define_macros += -D VERBOSITY=$(VERBOSITY) -D CORE_$(COREFABRIC)=True -D MULSTAGES=$(MULSTAGES) \
								 -D DIVSTAGES=$(DIVSTAGES) -D Counters=$(COUNTERS)\
								 -D iwords=$(IWORDS) -D iblocks=$(IBLOCKS) -D iways=$(IWAYS) -D isets=$(ISETS) \
								 -D ifbsize=$(IFBSIZE) -D irepl=$(IREPL) -D icachereset=$(IRESET) -D iesize=$(IESIZE) \
								 -D idbanks=$(IDBANKS) -D itbanks=$(ITBANKS) -D ddbanks=$(DDBANKS) -D dtbanks=$(DTBANKS) \
								 -D dwords=$(DWORDS) -D dblocks=$(DBLOCKS) -D dways=$(DWAYS) -D dsets=$(DSETS) \
								 -D dfbsize=$(DFBSIZE) -D drepl=$(DREPL) -D dcachereset=$(DRESET) -D desize=$(DESIZE) \
								 -D dsbsize=$(DSBSIZE) -D ibuswidth=$(IBUSWIDTH) \
								 -D PIPE$(PIPE)=True -D paddr=$(PADDR) -D vaddr=$(XLEN) -D PMPSIZE=$(PMPSIZE) \
								 -D resetpc=$(RESETPC) -D asidwidth=$(ASIDWIDTH) \
								 -D btbdepth=$(BTBDEPTH) -D bhtdepth=$(BHTDEPTH) -D histlen=$(HISTLEN) \
								 -D extrahist=$(EXTRAHIST) -D rasdepth=$(RASDEPTH) -D rastagdepth=$(RASTAGDEPTH) \
								 -D bpureset=$(BPURESET) -D causesize=$(CAUSESIZE) -D $(PREDICTOR)=True
		
# ------------------------------------------------------------------------------------------------ #
# ------------------ Include directories for bsv compilation ------------------------------------- #
CORE:=../src/core/:../src/core/predictors/
F_EXT:=../src/core/fpu/
M_EXT:=../src/core/m_ext/
FABRIC:=./fabrics/axi4:./fabrics/axi4lite
CACHES:=./caches_mmu/src/
PERIPHERALS:=./devices/bootrom:./devices/pwm:./devices/uart:./devices/clint:./devices/bram:./devices/riscvDebug013:./devices/jtagdtm/:./devices/err_slave/
COMMON_BSV:=./common_bsv/
COMMON_VERILOG:=./common_verilog/
BSVINCDIR:=.:%/Prelude:%/Libraries:%/Libraries/BlueNoC:$(CORE):$(F_EXT):$(M_EXT):$(FABRIC):$(PERIPHERALS):$(COMMON_BSV):$(COMMON_VERILOG):$(CACHES)
# ------------------------------------------------------------------------------------------------ #


# ---------------- Setting the variables for bluespec compile  --------------------------------- #
BSC_CMD:= bsc -u -verilog -elab 
BSVCOMPILEOPTS:= +RTS -K40000M -RTS -check-assert  -keep-fires -opt-undetermined-vals \
								 -remove-false-rules -remove-empty-rules -remove-starved-rules -remove-dollar
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
default: generate_verilog link_verilator generate_boot_files
gdb: generate_verilog link_verilator_gdb generate_boot_files

.PHONY: help
help: ## This help dialog.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | column	-c2 -t -s :

check-env:
	@if test -z "$$BLUESPECDIR"; then echo "BLUESPECDIR variable not set"; exit 1; fi;

check-py:
	@if ! [ -a /usr/bin/python3 ] ; then echo "Python3 is required in /usr/bin to run AAPG" ; exit 1; fi;

.PHONY: check-restore
check-restore:
	@if [ "$(define_macros)" != "$(old_define_macros)" ];	then	make clean ;	fi;

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
	@cp ${BLUESPECDIR}/Verilog.Vivado/BRAM2BE.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog.Vivado/BRAM2.v ${VERILOGDIR}
	@cp ./common_verilog/bram_1r1w.v ${VERILOGDIR}
	@cp ./common_verilog/bram_1rw.v ${VERILOGDIR}
	@cp ./common_verilog/BRAM1Load.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFO2.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFO1.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFO10.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/RevertReg.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFO20.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/FIFOL1.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncFIFO.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/Counter.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SizedFIFO.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/RegFileLoad.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncReset0.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncRegister.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/MakeClock.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/UngatedClockMux.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/ClockInverter.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/MakeResetA.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/MakeReset0.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncResetA.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/ResetEither.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncHandshake.v ${VERILOGDIR}
	@cp ${BLUESPECDIR}/Verilog/SyncFIFO1.v ${VERILOGDIR}
	@$(VERILOGLICENSE)
	@echo Compilation finished


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

.PHONY: clean
clean:
	rm -rf $(BSVBUILDDIR) *.log 
	rm -f *.jou rm *.log *.mem old_vars log

clean_verilog: clean 
	rm -rf verilog/

restore: clean_verilog
