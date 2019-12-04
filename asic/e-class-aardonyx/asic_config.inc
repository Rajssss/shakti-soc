ISA=RV32IMAC
MUL=asic
SYNTH=SIM
USERTRAPS=enable
USER=enable
COREFABRIC=AXI4Lite
MULSTAGES=4
DIVSTAGES=32
PADDR=32
RESETPC=16
ARITHTRAP=disable

CAUSESIZE=6
DEBUG=enable
OPENOCD=enable

# Verilator options
COVERAGE=none
TRACE=disable
THREADS=1
VERILATESIM=fast

VERBOSITY=disable
RTLDUMP=disable
ASSERTIONS=disable

# Trigger Setup
TRIGGERS=2

# performance counters
COUNTERS=2

# pmp
PMP=enable
PMPSIZE=4

# For Vivado Synthesis
FPGA=xc7a35ticsg324-1l
SYNTHTOP=fpga_top
JOBS=4
