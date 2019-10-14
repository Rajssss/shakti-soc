export TARGET
export PROGRAM
export DEBUG

# appln and target board
PROGRAM ?= all
TARGET ?=artix7_35t
DEBUG ?=

# Invoke all possible combinations of applns for different targets
# There is a provision to make in the exact folder where code is written
# We are using that provision to invole appropriate makefile scripts from top folder
all:
	@echo "$(TARGET)"
ifeq ($(PROGRAM),hello)
	cd uart/hello && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
else
ifeq ($(PROGRAM),uart1_hello)
	cd uart/uart1_hello && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
else
ifeq ($(PROGRAM),uartmp3)
	cd uart/uartmp3 && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
else
ifeq ($(PROGRAM),lm75)
	cd i2c/lm75 && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
else
ifeq ($(PROGRAM),tglgpio)
	cd gpio/tglgpio && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
else
ifeq ($(PROGRAM),rdgpio)
	cd gpio/rdgpio && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
else
ifeq ($(PROGRAM),issi_flash)
	cd qspi/issi_flash && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
else
ifeq ($(PROGRAM),pwmled)
	cd pwm/pwmled && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
else
ifeq ($(PROGRAM),spansion_flash)
	cd spi/spansion_flash && $(MAKE) $(PROGRAM).riscv TARGET=$(TARGET) DEBUG=$(DEBUG)
endif
endif
endif
endif
endif
endif
endif
endif
endif
