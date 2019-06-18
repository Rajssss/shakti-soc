ISA=RV32IM
MUL=fpga
SYNTH=FPGA
VERBOSITY=0
USERTRAPS=disable
USER=enable
COREFABRIC=AXI4Lite
MULSTAGES=6
DIVSTAGES=32
PADDR=32
RESETPC=16
ARITHTRAP=disable

CAUSESIZE=6
DEBUG=enable
OPENOCD=disable

# Verilator options
COVERAGE=none
TRACE=disable
THREADS=1
VERILATESIM=fast

# DebugOptions
RTLDUMP=disable
ASSERTIONS=disable

# Trigger Setup
TRIGGERS=0

# performance counters
COUNTERS=0

# pmp
PMP=disable
PMPSIZE=0

# For Vivado Synthesis
FPGA=xc7a35ticsg324-1l
SYNTHTOP=fpga_top
JOBS=4
