
length_check_fields=['reset_pc', 'physical_addr_size']

bsc_cmd = '''bsc -u -verilog -elab -vdir {0} -bdir {1} -info-dir {1} \
+RTS -K40000M -RTS -check-assert  -keep-fires \
-opt-undetermined-vals -remove-false-rules -remove-empty-rules \
-remove-starved-rules -remove-dollar -unspecified-to X -show-schedule \
-show-module-use {2}'''

bsc_defines = ''

verilator_cmd = ''' -O3 -LDFLAGS "-static" --x-assign fast \
 --x-initial fast --noassert sim_main.cpp --bbox-sys -Wno-STMTDLY \
 -Wno-UNOPTFLAT -Wno-WIDTH -Wno-lint -Wno-COMBDLY -Wno-INITIALDLY \
 --autoflush {0} {1} --threads {2} -DBSV_RESET_FIFO_HEAD \
 -DBSV_RESET_FIFO_ARRAY --output-split 20000 \
 --output-split-ctrace 10000'''

makefile_temp='''
VERILOGDIR:={0}

BSVBUILDDIR:={1}

BSVOUTDIR:={2}

BSCCMD:={3}

BSC_DEFINES:={4}

BSVINCDIR:={5}

BS_VERILOG_LIB:={6}lib/Verilog/

TOP_MODULE:={7}

TOP_DIR:={8}

TOP_FILE:={9}

XLEN:={10}

TOP_BIN={11}

ISA={12}

FPGA=xc7a100tcsg324-1

SYNTHTOP=fpga_top

BSCAN2E=enable

include depends.mk
'''

dependency_yaml='''
c-class:
  url: https://gitlab.com/shaktiproject/cores/c-class
  checkout: 1.9.6
caches_mmu:
  url: https://gitlab.com/shaktiproject/uncore/caches_mmu
  checkout: 8.2.1
common_bsv:
  url: https://gitlab.com/shaktiproject/common_bsv
  checkout: master
fabrics:
  url: https://gitlab.com/shaktiproject/uncore/fabrics
  checkout: 1.2.0
common_verilog:
  url: https://gitlab.com/shaktiproject/common_verilog
  checkout: master
  patch:
devices:
  url: https://gitlab.com/shaktiproject/uncore/devices
  checkout: 6.3.0
'''
