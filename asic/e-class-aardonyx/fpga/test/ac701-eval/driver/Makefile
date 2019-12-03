SHELL := /bin/bash # Use bash syntax
XLEN=32

SDRAM_DIR:=./sdram/
SDRAM_OUT:=./sdram/outputs/
CommonDIR:=./Common/

#ASCII Escape codes
RED='\033[0;31m' #Red
GREEN='\033[0;32m' #Green
NC='\033[0m' # No Color

all: create_dir
	make sdram.riscv

create_dir:
	@mkdir -p ./sdram/outputs/


sdram.riscv: crt.o syscalls_e.shakti create_dir
	@echo -e "$(GREEN) Compiling QSPI_ISSI code $(NC)"
	@echo -e "$(RED) Caveat: SDRAM Code starts at 0x80000000. Configure RTL appropriately $(NC)"
	@riscv$(XLEN)-unknown-elf-gcc -g -w -mcmodel=medany -static -std=gnu99 -fno-builtin-printf  -c $(SDRAM_DIR)/sdram.c -o $(SDRAM_OUT)/sdram.o -march=rv$(XLEN)imafd -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd -g -T $(CommonDIR)/link.ld $(SDRAM_OUT)/sdram.o $(CommonDIR)/syscalls_e.shakti $(CommonDIR)/crt.o -o $(SDRAM_OUT)/sdram.shakti -static -nostartfiles -lm -lgcc
	@riscv$(XLEN)-unknown-elf-objdump -D $(SDRAM_OUT)/sdram.shakti > $(SDRAM_OUT)/sdram.dump
	@elf2hex 4 4096  $(SDRAM_OUT)/sdram.shakti 2147483648 > $(SDRAM_OUT)/code.mem

crt.o:
	@riscv$(XLEN)-unknown-elf-gcc -g -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf -D__ASSEMBLY__=1 -c $(CommonDIR)/crt.S -o $(CommonDIR)/crt.o

syscalls_e.shakti:
		@riscv$(XLEN)-unknown-elf-gcc -g -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf -O2 -c $(CommonDIR)/syscalls_e.c -o $(CommonDIR)/syscalls_e.shakti

clean:
	@rm -rf $(CommonDIR)/syscalls_e.shakti $(CommonDIR)/crt.o $(SDRAM_OUT)/
	@find -type l -delete
	@echo "cleaned"
