ISA=RV32I
MUL=asic
SYNTH=fpga
VERBOSITY=0
USERTRAPS=enable
USER=enable
COREFABRIC=AXI4Lite
MULSTAGES=8
DIVSTAGES=64
FPGA=xc7a100tcsg324-1
SYNTHTOP=mkriscv
PADDR=32
RESETPC=4096
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
TRIGGERS=2

# performance counters
COUNTERS=2

# pmpsize
PMP=disable
PMPSIZE=2
