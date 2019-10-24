# E-Class on ARTY-A7-35t Board

This repo contains the flow for porting an instance of the E-class on the [ARTY A7-35t](https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/) board from digilent. 

## Features Available
Please see Soc.defines for the memory-map. Given below are the default configs that have been used.

* __E-class Core Config__:
    1. RV32IMACNU
    2. Reset-PC: 0x1000 (BootRAM)
    3. Multiplier latency - 6 cycles
    4. Divider latency - 32 cycles
    5. 2 triggers
    6. 2 performance counters
    7. 2 pmp regions
    8. Debugger support based on riscv-0.14 draft.
    9. For more details visit this [page](https://gitlab.com/shaktiproject/cores/e-class)

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
    * __BootRAM__ : 8KB of BRAMs as memory. Refer [here](https://gitlab.com/shaktiproject/uncore/devices/blob/master/bram) for more info.
    * __DEBUGGER__: Connects with riscv-openocd.

* Mempry MAP:
  Following is the SoC Config for Aadronyx. Base and bound addresses are inclusive.

| Config  | base-address| bound-address|
|---------|-------------|--------------|
|Debug    | 'h0000_0010 | 'h0000_001F|
|BootRAM  | 'h0000_1000 | 'h0000_2FFF|
|UART0    | 'h0001_1300 | 'h0000_1340|
|UART1    | 'h0001_1400 | 'h0000_1440|
|UART2    | 'h0001_1500 | 'h0000_1540|
|SPI0     | 'h0002_0000 | 'h0002_00FF|
|SPI1     | 'h0002_0100 | 'h0002_01FF|
|SPI2     | 'h0002_0200 | 'h0002_02FF|
|PWM0     | 'h0003_0000 | 'h0003_00FF|
|PWM1     | 'h0003_0100 | 'h0003_01FF|
|PWM2     | 'h0003_0200 | 'h0003_02FF|
|PWM3     | 'h0003_0300 | 'h0003_03FF|
|PWM4     | 'h0003_0400 | 'h0003_04FF|
|PWM5     | 'h0003_0500 | 'h0003_05FF|
|I2C      | 'h0004_0000 | 'h0004_00FF|
|PLIC     | 'h0C00_0000 | 'h0C01_001F|
|GPIO     | 'h0004_0200 | 'h0004_02FF|
|XADC     | 'h0004_1000 | 'h0004_1400|
|Clint    | 'h0200_0000 | 'h020B_FFFF|
|BRAM     | 'h8000_0000 | 'h87FF_FFFF|

## Requirements
1. __Vivado 2017__ or above should be used
2. `vivado` command should be available in your `$PATH` variable.
3. `bsc` command should be available in your `$PATH` variable.
4. `riscv-openocd` should be installed in your system.
5. `miniterm` should be installed.

## Quick Start (default Config) :: Get started with an Arty A7 35t

### Programming the Board

#### [A] Using the pre-built mcs file
The folder `pre-built-mcs` contains an mcs file for this board configured using the above specs. 
``` bash
git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git
cd shakti-soc/fpga/boards/artya7-35t/e-class/pre-built-mcs
wget https://gitlab.com/shaktiproject/cores/shakti-soc/-/jobs/artifacts/master/raw/fpga_top.mcs/?job=e-class-35t -O fpga_top.mcs
make program_mcs_spansion
OR
make program_mcs_micron
```

#### [B] Generating your own mcs file (recomended)
If you are modifying the RTL this is the recommended approach

``` bash
git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git
cd shakti-soc/fpga/boards/artya7-35t/e-class
make quick_build_xilinx
# Please Disconnect and Reconnect and Reset The Arty Board !
```

### Connecting to the Target


Please make sure you are using the 32-bit toolchain available: [here](https://gitlab.com/shaktiproject/software/shakti-tools/): 
This toolchain contains the `openocd` binary which has been tweaked for our bscan2e based JTAG
protocol

In a New Terminal window
``` bash
openocd -f shakti-arty.cfg
```
In yet Another Terminal window
``` bash
riscv32-unknown-elf-gdb -x gdb.script
```

Launch UART Console
```bash
sudo miniterm /dev/ttyUSB1 19200
```

On pressing the `reset-button` on the board the UART console should display the following:
``` bash
                                       ./((*
                                   ,(((((,
                               *((((((,
                          ./(((((((,
                      ./((((((((*
                   *(((((((((/
               .(((((((((((,
            ,((((((((((((/
          ((((((((((((((/
         .((((((((((((((/
             *(((((((((((.
                  /(((((((.
                ,.     *(((/
                    *((,     ,/.
                      ((((((/.
                       ((((((((((/
                        (((((((((((((/
                        ((((((((((((((.
                       ((((((((((((/
                     *((((((((((*
                   ((((((((((.
                /((((((((*
             *(((((((,
          *((((((.
      .(((((.
  ./(((*
  .
                    SHAKTI PROCESSORS
```

## Reporting Issues
While reporting issues with this board/build please make sure to mark the issues with the `arty-a7-35t` label
