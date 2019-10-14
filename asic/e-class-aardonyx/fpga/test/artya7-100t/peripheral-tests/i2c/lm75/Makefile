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

bspinc:=../../bsp/include
bspdri:=../../bsp/drivers
bsplib:=../../bsp/libwrap
bspboard:=../../bsp/third_party/$(TARGET)

all: create_dir
	make lm75.riscv

create_dir:
	@mkdir -p ./output


lm75.riscv: crt.o syscalls.shakti create_dir
	@echo -e "$(GREEN) Compiling code $(NC)"
	@echo -e "$(RED) Caveat: Code starts at 0x80000000. Configure RTL appropriately $(NC)"
	@riscv$(XLEN)-unknown-elf-gcc -w $(DC) -mcmodel=medany -static -std=gnu99 -fno-builtin-printf  -I$(bspinc) -I$(bspdri) $(flags) -c ./lm75.c -o ./output/lm75.o -march=rv$(XLEN)imafd -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -w $(DC) -mcmodel=medany -static -std=gnu99 -fno-builtin-printf  -I$(bspinc)  -c $(bspboard)/uart.c -o ./output/uart.o -march=rv$(XLEN)imafd -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -w $(DC) -mcmodel=medany -static -std=gnu99 -fno-builtin-printf  -I$(bspinc)  -c $(bsplib)/util.c -o ./output/util.o -march=rv$(XLEN)imafdc -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -w $(DC) -mcmodel=medany -static -std=gnu99 -fno-builtin-printf  -I$(bspinc) -I$(bspdri)  -I$(bspboard)  -c $(bspdri)/i2c/i2c_driver.c -o ./output/i2c_driver.o -march=rv$(XLEN)imafdc -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -T $(bspboard)/link.ld   ./output/util.o ./output/i2c_driver.o ./output/lm75.o ./output/syscalls.shakti ./output/uart.o ./output/crt.o -o ./output/lm75.shakti -static -nostartfiles -lm -lgcc
	@riscv$(XLEN)-unknown-elf-objdump -D ./output/lm75.shakti > ./output/lm75.dump


crt.o: create_dir
	@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf -D__ASSEMBLY__=1 -c $(bspinc)/crt.S -o ./output/crt.o

syscalls.shakti:
	@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf  -c $(bsplib)/syscalls.c -o ./output/syscalls.shakti -I$(bspinc)

