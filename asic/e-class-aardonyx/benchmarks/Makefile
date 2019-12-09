xlen ?= 32
linesize=$$(($(xlen)/8))
target ?= SHAKTI
iterations ?= 10000
march ?= imafdc
RISCV_PREFIX ?= riscv$(xlen)-unknown-elf-
RISCV_GCC ?= $(RISCV_PREFIX)gcc
RISCV_LINK_OPTS ?= -static -nostartfiles -lgcc -T ./common/link.ld
RISCV_HEX = elf2hex $(linesize) 65536
RISCV_OBJDUMP ?= $(RISCV_PREFIX)objdump -D
OUTDIR ?= output

.PHONY: dhrystone
dhrystone: 
	@echo "Compiling Dhrystone"
	@mkdir -p output/
	$(RISCV_GCC) -I./common -I./dhrystone -DCONFIG_RISCV64=True \
				-DITERATIONS=$(iterations) -D$(target)=True -mcmodel=medany -static -std=gnu99 -O2 -ffast-math \
				-fno-common -fno-builtin-printf -march=rv$(xlen)$(march) -w -static \
				-nostartfiles -lgcc -T ./common/link.ld -o $(OUTDIR)/dhry.riscv ./dhrystone/dhry_1.c \
				./dhrystone/dhry_2.c ./common/syscalls.c ./common/crt.S
	@$(RISCV_OBJDUMP) $(OUTDIR)/dhry.riscv > $(OUTDIR)/dhry.dump
	@$(RISCV_HEX) $(OUTDIR)/dhry.riscv 2147483648 > $(OUTDIR)/code.mem


.PHONY: hello-shakti
hello-shakti:
	@echo "Compiling Hello-Shakti"
	@mkdir -p output/
	$(RISCV_GCC) -I./common -I./hello-shakti -DCONFIG_RISCV64=True \
				-DITERATIONS=$(iterations) -D$(target)=True -mcmodel=medany -static -std=gnu99 -O2 -ffast-math \
				-fno-common -fno-builtin-printf -march=rv$(xlen)$(march) -w -static \
				-nostartfiles -lgcc -T ./common/link.ld -o $(OUTDIR)/hello.riscv ./hello-shakti/hello.c \
				./common/syscalls.c ./common/crt.S
	@$(RISCV_OBJDUMP) $(OUTDIR)/hello.riscv > $(OUTDIR)/hello.dump
	@$(RISCV_HEX) $(OUTDIR)/hello.riscv 2147483648 > $(OUTDIR)/code.mem

.PHONY: clean
clean:
	rm -rf $(OUTDIR)
