SHELL := /bin/bash # Use bash syntax
XLEN=32
DC=

#default target board
TARGET ?=aardonyx
DEBUG ?=
MARCH ?=
MABI  ?=

ifeq ($(TARGET),aardonyx)
	XLEN=32
	flags= -D ARTIX7_35T
	MARCH=rv32imafdc
	MABI=ilp32d
endif
ifeq ($(TARGET),artix7_35t)
	XLEN=32
	flags= -D ARTIX7_35T
	MARCH=rv32imac
	MABI=ilp32
endif
ifeq ($(TARGET),artix7_100t)
	XLEN=64
	flags= -D ARTIX7_100T
	MARCH=rv64imafdc
	MABI=lp64d
endif

ifeq ($(DEBUG),DEBUG)
	DC=-g
endif

#bsp incl file path
bspinc:=../../bsp/include
#bsp lib file path
bsplib:=../../bsp/libwrap
#bsp board specific files path
bspboard:=../../bsp/third_party/$(TARGET)

all: create_dir
	make mcp3202_adc.riscv

mcp3202_adc.riscv: crt.o syscalls.shakti create_dir
	@echo -e "$(GREEN) Compiling code $(NC)"
	@echo $(TARGET)
	@echo -e "$(RED) Caveat: Code starts at 0x80000000. Configure RTL appropriately $(NC)"
	@riscv$(XLEN)-unknown-elf-gcc -w $(DC) -mcmodel=medany -static -std=gnu99 -fno-builtin-printf $(flags) -I$(bspinc)  -c ./spi.c -o ./output/mcp3202_adc.o -march=$(MARCH) -mabi=$(MABI) -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -w $(DC) -mcmodel=medany -static -std=gnu99 -fno-builtin-printf  -I$(bspinc)  -c $(bspboard)/uart.c -o ./output/uart.o -march=$(MARCH) -mabi=$(MABI) -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -T $(bspboard)/link.ld ./output/mcp3202_adc.o ./output/syscalls.shakti ./output/uart.o ./output/crt.o -o ./output/mcp3202_adc.shakti -static -nostartfiles -lm -lgcc
	@riscv$(XLEN)-unknown-elf-objdump -D ./output/mcp3202_adc.shakti > ./output/mcp3202_adc.dump

create_dir:
	@mkdir -p ./output

crt.o: create_dir
	@riscv$(XLEN)-unknown-elf-gcc -march=$(MARCH) -mabi=$(MABI)  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf -D__ASSEMBLY__=1 -c $(bspinc)/crt.S -o ./output/crt.o

syscalls.shakti:
	@riscv$(XLEN)-unknown-elf-gcc -march=$(MARCH) -mabi=$(MABI)  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf  -c $(bsplib)/syscalls.c -o ./output/syscalls.shakti -I$(bspinc)
