# C-Class on ARTY-A7-100t Board

This repo contains the flow for porting an instance of the C-class on the [ARTY A7-100T](https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/) board from digilent. 

## Features Available
Please see Soc.defines for the memory-map.
* __C-class Config__:
    1. RV64IMAC
    2. No Caches
    3. No Supervisor
    4. No Branch Predictor 
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

## Steps to build

Make sure you have connected your arty-board before running the last command


```
./manager.sh update_deps
make generate_verilog
make ip_build arty_build
make program
```

## Connecting to the board

Currently the arty build only supports booting in debug mode. On reset the, the core will start executing the infinite debug-loop at `0x00000000`. Once the board has been programmed using the above commands do the following:

1. Open a terminal and launch OpenOCD
`cd shakti-soc/fpga/boards/artya7-100t/c-class`
`openocd -f shakti_ocd.cfg`

2. Open another terminal and launch gdb
`riscv64-unknown-elf-gdb -x gdb.script`

3. Open another terminal to capture UART output
`sudo miniterm /dev/ttyUSB1 19200`

Using the GDB you can now load programs into the DDR and execute form there.

## Reporting Issues
While reporting issues with this board/build please make sure to mark the issues with the `arty-a7-100t` label
