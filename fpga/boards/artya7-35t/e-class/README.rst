############################
E-Class on ARTY-A7-35t Board
############################

This repo contains the flow for porting an instance of the E-class on the `ARTY A7-35t
<https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/>`_ board from digilent. 

Features Available
------------------

Please see Soc.defines for the memory-map. Given below are the default configs that have been used.

* **E-class Core Config**:
1. RV32IMACNU
2. Reset-PC: 0x1000 (BootRAM)
3. Multiplier latency - 6 cycles
4. Divider latency - 32 cycles
5. 2 triggers
6. 2 performance counters
7. 2 pmp regions
8. Debugger support based on riscv-0.14 draft.
9. For more details visit this `page    <https://gitlab.com/shaktiproject/cores/e-class>`_

* **Devices**: 
1. **UART** : 2 instances. Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/-/blob/master/uart_v2/uart_driver.c>`_ for more info on the uart.
2. **SPI** : 2 instances. Refer `here   <https://gitlab.com/shaktiproject/uncore/devices/blob/master/spi>`_ for more info.
3. **PWM** : 6 instances. Refer `here   <https://gitlab.com/shaktiproject/uncore/devices/blob/master/pwm>`_ for more info.
4. **I2C** : 1 instance. Refer `here    <https://gitlab.com/shaktiproject/uncore/devices/blob/master/i2c>`_ for more info.
5. **GPIO** : 16 gpios. Refer `here    <https://gitlab.com/shaktiproject/uncore/devices/blob/master/gpio>`_ for more info.
6. **PLIC** : 1 instance.
7. **CLINT** : 1 instance. Refer `here    <https://gitlab.com/shaktiproject/uncore/devices/blob/master/clint/clint.defines>`_ for more info.
8. **XADC** : 1 instance of Xilinx's XADC.
9. **BRAM** : 128KB of BRAMs as memory. Refer `here    <https://gitlab.com/shaktiproject/uncore/devices/blob/master/bram>`_ for more info.
10. **BootRAM** : 8KB of BRAMs as memory. Refer `here    <https://gitlab.com/shaktiproject/uncore/devices/blob/master/bram>`_ for more info.
11. **DEBUGGER** : Connects with riscv-openocd.

* **Memory MAP**:
Following is the SoC Config for Aadronyx. Base and bound addresses are inclusive.

=======  ============  =============
Config   base-address  bound-address
=======  ============  =============
Debug    'h0000_0010   'h0000_001F
BootRAM  'h0000_1000   'h0000_2FFF
UART0    'h0001_1300   'h0000_1340
UART1    'h0001_1400   'h0000_1440
SPI0     'h0002_0000   'h0002_00FF
SPI1     'h0002_0100   'h0002_01FF
PWM0     'h0003_0000   'h0003_00FF
PWM1     'h0003_0100   'h0003_01FF
PWM2     'h0003_0200   'h0003_02FF
PWM3     'h0003_0300   'h0003_03FF
PWM4     'h0003_0400   'h0003_04FF
PWM5     'h0003_0500   'h0003_05FF
I2C      'h0004_0000   'h0004_00FF
PLIC     'h0C00_0000   'h0C01_001F
GPIO     'h0004_0200   'h0004_02FF
XADC     'h0004_1000   'h0004_1400
Clint    'h0200_0000   'h020B_FFFF
BRAM     'h8000_0000   'h87FF_FFFF
=======  ============  =============

Requirements
------------

1. **Vivado 2017** or above should be used
2. ``vivado`` command should be available in your ``$PATH`` variable.
3. ``bsc`` command should be available in your ``$PATH`` variable.
4. ``riscv-openocd`` should be installed in your system.
5. ``miniterm`` should be installed.

Quick Start (default Config) :: Get started with an Arty A7 35t
---------------------------------------------------------------

Programming the Board
^^^^^^^^^^^^^^^^^^^^^

[A] Generating your own mcs file (recommended)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
If you are modifying the RTL this is the recommended approach

.. code-block:: yaml

 $ git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git
 $ cd shakti-soc/fpga/boards/artya7-35t/e-class
 $ make quick_build_xilinx
 # Please Disconnect and Reconnect and Reset The Arty Board !

Connecting to the Target
^^^^^^^^^^^^^^^^^^^^^^^^
Please make sure you are using the 32-bit toolchain available `here
<https://gitlab.com/shaktiproject/software/shakti-tools/>`_. 
(This toolchain contains the ``openocd`` binary which has been tweaked for our bscan2e based JTAG
protocol)

In a New Terminal window

.. code-block:: yaml

  $ openocd -f shakti-arty.cfg

In yet Another Terminal window

.. code-block:: yaml

  $ riscv32-unknown-elf-gdb -x gdb.script

Launch UART Console

.. code-block:: yaml

  $ sudo miniterm /dev/ttyUSB1 19200

On pressing the ``reset-button`` on the board the UART console should display the following:

.. code-block:: yaml

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


Reporting Issues
^^^^^^^^^^^^^^^^
While reporting issues with this board/build please make sure to mark the issues with the ``arty-a7-35t`` label
