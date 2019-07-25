ISA=RV32I
MUL=asic
SYNTH=fpga
VERBOSITY=0
USERTRAPS=disable
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
TRIGGERS=0

# performance counters
COUNTERS=0

# pmpsize
PMP=disable
PMPSIZE=0
