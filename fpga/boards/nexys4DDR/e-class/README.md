# E-Class on NEXYS4-DDR Board

This repo contains the flow for porting an instance of the E-class on the [Nexys4-DDR](https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/) board from digilent. 

## Features Available
Please see Soc.defines for the memory-map. Given below are the default configs that have been used.
* __E-class Config__:
    1. RV64IMAC
    2. User-Traps enabled
    3. 4 pmp regions
    4. 2 Triggers
    5. 4 performance counters
* __UART__: Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/uart/uart_driver.c) for more info on the uart.
* __DEBUGGER__: Connects with riscv-openocd.
* __CLINT__: Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/clint/clint.defines) for more info.
* __MIG-DDR3__: 128MB accessible.

## Requirements
1. __Vivado 2017__ or above should be used
2. `vivado` command should be available in your `$PATH` variable.
3. `bsc` command should be available in your `$PATH` variable.
4. `riscv-openocd` should be installed in your system.
5. `miniterm` should be installed.

## Quick Start (default Config) :: Get started with an Nexys4-DDR 

### [A] Debug Interface over integrated Xilinx tunneled bscan tap (recomended)
``` bash
git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git
cd shakti-soc/fpga/boards/artya7-100t/e-class
make quick_build_xilinx
echo "Please Disconnect and Reconnect and Reset The Nexys4-DDR Board ! "
```
#### Connect to target and Launch Debugger
In a New Terminal window     
``` bash
sudo openocd -f openocd.cfg
```
In yet Another Terminal window
``` bash
riscv64-unknown-elf-gdb -x gdb.script
```
#### Launch UART Console
```bash
sudo miniterm /dev/ttyUSB1 19200
```

## Reporting Issues
While reporting issues with this board/build please make sure to mark the issues with the `nexys4-ddr` label
