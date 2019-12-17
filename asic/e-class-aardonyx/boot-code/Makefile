SHELL := /bin/bash # Use bash syntax
XLEN=32

OUTPUT:=./outputs

#ASCII Escape codes
RED='\033[0;31m' #Red
GREEN='\033[0;32m' #Green
NC='\033[0m' # No Color

all: create_dir	boot.shakti
	

create_dir:
	@mkdir -p $(OUTPUT)

boot.shakti: create_dir
	@echo -e "$(GREEN) Generating boot code $(NC)"
	@riscv$(XLEN)-unknown-elf-gcc -w -mcmodel=medlow -static -std=gnu99 -fno-builtin-printf  -c boot.s -o $(OUTPUT)/boot.o -march=rv$(XLEN)ic
	@riscv$(XLEN)-unknown-elf-gcc -T link.ld $(OUTPUT)/boot.o -o $(OUTPUT)/boot.shakti -static -nostartfiles
	@riscv$(XLEN)-unknown-elf-objdump -D $(OUTPUT)/boot.shakti > $(OUTPUT)/boot.dump
	@elf2hex 4 256 $(OUTPUT)/boot.shakti 2147483648 > $(OUTPUT)/boot.mem

boot_simulation.shakti: create_dir
	@echo -e "$(GREEN) Generating boot code for simulation $(NC)"
	@riscv$(XLEN)-unknown-elf-gcc -w -mcmodel=medlow -static -std=gnu99 -fno-builtin-printf  -c boot_simulation.s -o $(OUTPUT)/boot.o -march=rv$(XLEN)ic
	@riscv$(XLEN)-unknown-elf-gcc -T link.ld $(OUTPUT)/boot.o -o $(OUTPUT)/boot.shakti -static -nostartfiles
	@riscv$(XLEN)-unknown-elf-objdump -D $(OUTPUT)/boot.shakti > $(OUTPUT)/boot.dump
	@elf2hex 4 256 $(OUTPUT)/boot.shakti 2147483648 > $(OUTPUT)/boot.mem

clean: 
	@rm -rf $(OUTPUT)
	@echo "cleaned"
