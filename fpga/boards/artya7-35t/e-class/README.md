# E-Class on ARTY-A7-35t Board

This repo contains the flow for porting an instance of the E-class on the [ARTY A7-35t](https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/) board from digilent. 

## Features Available
Please see Soc.defines for the memory-map. Given below are the default configs that have been used.

* __E-class Core Config__:
    1. RV32IMACNU
    2. Multiplier latency - 6 cycles
    3. Divider latency - 32 cycles
    4. 2 triggers
    5. 2 performance counters
    6. 2 pmp regions
    7. Debugger support based on riscv-0.14 draft.
    8. For more details visit this [page](https://gitlab.com/shaktiproject/cores/e-class)

* Devices: 
    * __UART__: 3 instances. Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/uart/uart_driver.c) for more info on the uart.
    * __SPI__ : 3 instances. Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/spi) for more info
    * __PWM__ : 6 instances. Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/pwm) for more info.
    * __I2C__ : 1 instance. Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/i2c) for more info.
    * __GPIO__: 16 gpios. Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/gpio) for more info.
    * __PLIC__: 1 instance.
    * __CLINT__: 1 instance. Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/clint/clint.defines) for more info.
    * __XADC__ : 1 instance of Xilinx's XADC.
    * __BRAM__ : 128KB of BRAMs as memory. Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/bram) for more info.
    * __DEBUGGER__: Connects with riscv-openocd.

* Mempry MAP:
  Following is the SoC Config for Aadronyx. Base and bound addresses are inclusive.

| Config  | base-address| bound-address|
|---------|-------------|--------------|
|Debug    | 'h0000_0010| 'h0000_001F|
|UART0    | 'h0001_1300| 'h0000_1340|
|UART1    | 'h0001_1400| 'h0000_1440|
|UART2    | 'h0001_1500| 'h0000_1540|
|SPI0     | 'h0002_0000| 'h0002_00FF|
|SPI1     | 'h0002_0100| 'h0002_01FF|
|SPI2     | 'h0002_0200| 'h0002_02FF|
|PWM0     | 'h0003_0000| 'h0003_00FF|
|PWM1     | 'h0003_0100| 'h0003_01FF|
|PWM2     | 'h0003_0200| 'h0003_02FF|
|PWM3     | 'h0003_0300| 'h0003_03FF|
|PWM4     | 'h0003_0400| 'h0003_04FF|
|PWM5     | 'h0003_0500| 'h0003_05FF|
|I2C      | 'h0004_0000| 'h0004_00FF|
|PLIC     | 'h0004_0100| 'h0004_01FF|
|GPIO     | 'h0004_0200| 'h0004_02FF|
|XADC     | 'h0004_1000| 'h0004_1400|
|Clint    | 'h0200_0000| 'h020B_FFFF|
|BRAM     | 'h8000_0000| 'h87FF_FFFF|

## Requirements
1. __Vivado 2017__ or above should be used
2. `vivado` command should be available in your `$PATH` variable.
3. `bsc` command should be available in your `$PATH` variable.
4. `riscv-openocd` should be installed in your system.
5. `miniterm` should be installed.

## Steps to build

1. Clone the *shakti-soc* repository.
```
$ git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git
```

2. Change present working directory to *shakti-soc/fpga/boards/artya7-35t/e-class*.
```
$ cd shakti-soc/fpga/boards/artya7-35t/e-class
```

3. Run the script to clone various repositories that contain the source code.
```
$ ./manager.sh update_deps
```

4. You can now change required SoC configurations in core_config.inc, or change the address maps in SoC.defines. You can also connect new peripherals by modifying SoC.bsv and SoC.defines. For more information on the SoC parameters, refer [this link](https://gitlab.com/shaktiproject/cores/e-class/blob/master/docs/configuring_core.md).

5. Generate verilog from bluespec source code.
```
$ make generate_verilog
```

6. Generate and synthesize the various Xilinx IPs that have been used
```
$ make ip_build
```

7. Synthesize, implement and generate the bitstream (The bitstream is generated at *shakti-soc/fpga/boards/artya7-35t/e-class/fpga_project/e-class/e-class.runs/core_impl_1/fpga_top.bit*)
```
$ make arty_build
```

8. Connect the Arty-A7 35t board.

9. Program the FPGA with the generated bitstream (Requires sudo access)*
```
$ make program
```
\* The "*make program*" command creates a folder whose owner is root. Therefore, before running "*make arty_build*" command again, delete the *shakti-soc/fpga/boards/artya7-35t/e-class/fpga_project/e-class* folder.

## Connecting to the board

Currently the arty build only supports booting in debug mode. On reset the, the core will start executing the infinite debug-loop at `0x00000010`. Once the board has been programmed using the above commands do the following:

1. Open a terminal and launch OpenOCD with sudo permissions
```
$ cd shakti-soc/fpga/boards/artya7-35t/e-class
$ sudo openocd -f shakti_ocd.cfg
```

2. Open another terminal and launch gdb
```
$ riscv64-unknown-elf-gdb -x gdb.script
```

3. Open another terminal to capture UART output (The default baud rate is 19200)
```
$ sudo miniterm /dev/ttyUSB1 19200
```

## Reporting Issues
While reporting issues with this board/build please make sure to mark the issues with the `arty-a7-35t` label
