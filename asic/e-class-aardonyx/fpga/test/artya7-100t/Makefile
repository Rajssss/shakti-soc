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


# Default PROGRAM and TARGET
PROGRAM ?= hello
TARGET ?= artix7_35t
DEBUG ?= DEBUG
CLEAR ?=

#############################################################
# Prints help message
#############################################################
.PHONY: help
help:
	@echo " Shakti Software Development Kit "
	@echo " Makefile features:"
	@echo ""
	@echo " list_targets"
	@echo " lists the boards supported"
	@echo ""
	@echo " list_applns"
	@echo " lists the example applns availabel to user"
	@echo ""
	@echo " software [PROGRAM=$(PROGRAM)] [TARGET=$(TARGET)]"
	@echo " Builds the requested PROGRAM for the given TARGET"
	@echo ""
	@echo " debug [PROGRAM=$(PROGRAM)] [TARGET=$(TARGET)]"
	@echo " Builds the requested PROGRAM with debug options"
	@echo ""
	@echo ""
	@echo " clean"
	@echo " Cleans compiled objects in every example applns."
	@echo ""
	@echo " clean [CLEAR=$(PROGRAM)]"
	@echo " Cleans compiled objects of that example appln."



#BOARD_DIR holds the list of boards in a third_party path
BOARD_DIR := $(shell ls ./peripheral-tests/bsp/third_party)


#Below variables hold the list of C files in there path
#Each C file corresponds to a appln. Each appln has a label in makefile
#that corresponds to each C file.

GPIO_DIR := $(shell cd ./peripheral-tests/gpio/ && ls -d * | grep -v Makefile )
UART_DIR := $(shell cd ./peripheral-tests/uart/ && ls -d * | grep -v Makefile )
I2C_DIR := $(shell cd ./peripheral-tests/i2c/ && ls -d * | grep -v Makefile )
SPI_DIR := $(shell cd ./peripheral-tests/spi/ && ls -d * | grep -v Makefile )
QSPI_DIR := $(shell cd ./peripheral-tests/qspi/ && ls -d * | grep -v Makefile )
PWM_DIR := $(shell cd ./peripheral-tests/pwm/ && ls -d * | grep -v Makefile )
PLIC_DIR := $(shell cd ./peripheral-tests/plic/ && ls -d * | grep -v Makefile )
APP_DIR := $(GPIO_DIR) $(UART_DIR) $(I2C_DIR) $(SPI_DIR) $(QSPI_DIR) $(PWM_DIR) $(PLIC_DIR)



#List the boards that are supported by Shakti Sdk
.PHONY: all
all:
	cd  ./peripheral-tests/gpio && $(MAKE) all
	cd  ./peripheral-tests/uart && $(MAKE) all
	cd  ./peripheral-tests/i2c && $(MAKE) all
	cd  ./peripheral-tests/spi && $(MAKE) all
	cd  ./peripheral-tests/qspi && $(MAKE) all
	cd  ./peripheral-tests/pwm && $(MAKE) all
	cd  ./peripheral-tests/plic && $(MAKE) all

.PHONY: target
list_targets:
	@echo $(sort $(BOARD_DIR))

#List the example applns running on Shakti
.PHONY: appln
list_applns:
	@echo $(sort $(APP_DIR))

#Software commands
.PHONY: software
software:
	@echo $(PROGRAM) $(TARGET)
	@echo "make for that program on that board"
	cd ./peripheral-tests/ && $(MAKE) PROGRAM=$(PROGRAM) TARGET=$(TARGET)

.PHONY: debug
debug:
	@echo $(PROGRAM) $(TARGET) $(DEBUG)
	@echo "make for that program on that board"
	cd ./peripheral-tests/ && $(MAKE) PROGRAM=$(PROGRAM) TARGET=$(TARGET) DEBUG=$(DEBUG)

.PHONY: clean
clean:
ifeq ($(CLEAR),hello)
	cd ./peripheral-tests/uart && $(MAKE) clean CLEAR=$(CLEAR)
else
ifeq ($(CLEAR),uartmp3)
	cd ./peripheral-tests/uart && $(MAKE) clean CLEAR=$(CLEAR)
else
ifeq ($(CLEAR),lm75)
	cd ./peripheral-tests/i2c && $(MAKE) clean CLEAR=$(CLEAR)
else
ifeq ($(CLEAR),tglgpio)
	cd ./peripheral-tests/gpio && $(MAKE) clean CLEAR=$(CLEAR)
else
ifeq ($(CLEAR),rdgpio)
	cd ./peripheral-tests/gpio && $(MAKE) clean CLEAR=$(CLEAR)
else
ifeq ($(CLEAR),)
	cd ./software/examples/uart_applns && $(MAKE) clean CLEAR=$(CLEAR)
	cd ./software/examples/i2c_applns && $(MAKE) clean CLEAR=$(CLEAR)
	cd ./software/examples/gpio_applns && $(MAKE) clean CLEAR=$(CLEAR)
else
endif
endif
endif
endif
endif
endif
endif

