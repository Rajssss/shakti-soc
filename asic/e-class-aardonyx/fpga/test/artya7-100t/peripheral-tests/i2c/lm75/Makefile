#Created by Sathya Narayanan N
# Email id: sathya281@gmail.com

#   Copyright (C) 2019  IIT Madras. All rights reserved.

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

SHELL := /bin/bash # Use bash syntax
XLEN=64
DC=

TARGET ?= artix7_35t
DEBUG ?=

bspinc:=../../bsp/include
bspdri:=../../bsp/drivers
bsplib:=../../bsp/libwrap
bspboard:=../../bsp/third_party/$(TARGET)

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

