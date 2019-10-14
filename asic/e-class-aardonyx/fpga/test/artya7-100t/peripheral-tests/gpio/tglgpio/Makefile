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
endif

ifeq ($(TARGET),artix7_100t)
	XLEN=64
	flags= -D ARTIX7_100T
endif

ifeq ($(DEBUG),DEBUG)
	DC=-g
endif

#bsp incl file path
bspinc:=../../bsp/include
#bsp lib file path
bsplib:=../../bsp/libwrap
#bsp board specific files path
bspboard:=../../bsp/third_party/$(TARGET)/


all: create_dir
	make tglgpio.riscv


tglgpio.riscv: crt.o syscalls.shakti create_dir
	@echo -e "$(GREEN) Compiling code $(NC)"
	@echo -e "$(RED) Caveat: Code starts at 0x80000000. Configure RTL appropriately $(NC)"
	@riscv$(XLEN)-unknown-elf-gcc -w $(DC) -mcmodel=medany -static -std=gnu99 -fno-builtin-printf $(flags) -I$(bspinc)  -I$(bspboard) -c ./tglgpio.c -o ./output/tglgpio.o -march=rv$(XLEN)imafdc -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -w $(DC) -mcmodel=medany -static -std=gnu99 -fno-builtin-printf  -I$(bspinc)  -c $(bsplib)/util.c -o ./output/util.o -march=rv$(XLEN)imafdc -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -T $(bspboard)link.ld  ./output/util.o ./output/tglgpio.o ./output/syscalls.shakti ./output/crt.o -o ./output/tglgpio.shakti -static -nostartfiles -lm -lgcc
	@riscv$(XLEN)-unknown-elf-objdump -D ./output/tglgpio.shakti > ./output/tglgpio.dump


create_dir:
	@mkdir -p ./output


crt.o: create_dir
	@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf -D__ASSEMBLY__=1 -c $(bspinc)/crt.S -o ./output/crt.o

syscalls.shakti:
	@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf  -c $(bsplib)/syscalls.c -o ./output/syscalls.shakti -I$(bspinc)

