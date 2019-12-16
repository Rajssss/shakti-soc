SHELL := /bin/bash # Use bash syntax
#XLEN=64
XLEN=32

EEPROMI2C_DIR:=./EEPROMI2C/
EEPROMI2C_OUT:=./EEPROMI2C/outputs/
CommonDIR:=./Common/


#ASCII Escape codes
RED='\033[0;31m' #Red
GREEN='\033[0;32m' #Green
NC='\033[0m' # No Color


all: create_dir
	make eepromi2c.riscv


create_dir:
	@mkdir -p ./EEPROMI2C/outputs/


eepromi2c.riscv: crt.o syscalls_e.shakti create_dir
	@echo -e "$(GREEN) Compiling I2C EEPROM code....... $(NC)"
	@echo -e "$(RED) Caveat: I2C EEPROM Code starts at 0x80000000. Configure RTL appropriately $(NC)"
	@riscv$(XLEN)-unknown-elf-gcc -w -mcmodel=medany -static -std=gnu99 -fno-builtin-printf  -c $(EEPROMI2C_DIR)/i2c_eeprom_write.c -o $(EEPROMI2C_OUT)/i2c_eeprom_write.o -march=rv$(XLEN)imafd -lm -lgcc
	@riscv$(XLEN)-unknown-elf-gcc -T $(CommonDIR)/link.ld $(EEPROMI2C_OUT)/i2c_eeprom_write.o $(CommonDIR)/syscalls_e.shakti $(CommonDIR)/crt.o -o $(EEPROMI2C_OUT)/i2c_eeprom_write.shakti -static -nostartfiles -lm -lgcc
	@riscv$(XLEN)-unknown-elf-objdump -D $(EEPROMI2C_OUT)/i2c_eeprom_write.shakti > $(EEPROMI2C_OUT)/i2c_eeprom_write.dump
	@elf2hex 4 524288 $(EEPROMI2C_OUT)/i2c_eeprom_write.shakti 2147483648 > $(EEPROMI2C_OUT)/code.mem
	#@cut -c1-8 $(EEPROMI2C_OUT)/code.mem > $(EEPROMI2C_OUT)/code.mem.MSB
	#@cut -c9-16 $(EEPROMI2C_OUT)/code.mem > $(EEPROMI2C_OUT)/code.mem.LSB


crt.o:
	@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf -D__ASSEMBLY__=1 -c $(CommonDIR)/crt.S -o $(CommonDIR)/crt.o


syscalls.shakti:
	@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf  -c $(CommonDIR)/syscalls.c -o $(CommonDIR)/syscalls.shakti


syscalls_e.shakti:
		@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf -O2 -c $(CommonDIR)/syscalls_e.c -o $(CommonDIR)/syscalls_e.shakti


syscalls_c.shakti:
		@riscv$(XLEN)-unknown-elf-gcc -march=rv$(XLEN)imafd  -mcmodel=medany -static -std=gnu99 -fno-common -fno-builtin-printf -O2 -c $(CommonDIR)/syscalls_c.c -o $(CommonDIR)/syscalls_c.shakti


clean:
	@rm -rf $(CommonDIR)/syscalls.shakti $(CommonDIR)/syscalls_e.shakti $(CommonDIR)/syscalls_c.shakti $(CommonDIR)/crt.o $(EEPROMI2C_OUT)/
	@find -type l -delete
	@echo "cleaned"
