###############################
E-Class ASIC Dev Kit (AARDONYX)
###############################

This project contains a simple SoC targtted for dev modules which uses the e-class core.

Features Available
------------------

Please see Soc.defines for the memory-map. Given below are the default configs that have been used.

* **E-class Core Config**:
1. RV32IMAC
2. 2 Triggers
3. 2 Counters
4. 4 PMP regions
5. Early out multiplier with max-4 cycles
6. Non-restoring divider with constant 32 cycles.
7. AXI4Lite fabric for interconnect

* **Devices**: 
1. **UART** : Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/-/blob/master/uart_v2/uart_driver.c>`_ for more info on the uart.
2. **SPI** : Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/blob/master/spi/>`_
3. **PWM** : Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/blob/master/pwm/>`_
4. **QSPI** : Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/blob/master/qspi>`_
5. **BOOTROM** : Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/blob/master/bootrom/>`_
6. **DEBUGGER** : Connects with riscv-openocd. Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/blob/master/riscvDebug013>`_
7. **CLINT** : Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/blob/master/clint/clint.defines>`_ for more info.
8. **SDRAM** : Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/blob/master/sdram/32-bit>`_ for more info.

* **PinMap**: `Excel sheet	<https://docs.google.com/spreadsheets/d/1yA-pKs3_cNw3IYSj8Q-fh1bL_jA87MuPH5vjwz0L73s/edit#gid=0>`_

* **Memory MAP**:
Following is the SoC Config for Aadronyx:

============  ============
  Config      base-address
============  ============
DebugBase     'h000000010
DebugEnd      'h00000001F
QSPI0Base     'h0000_0100
QSPI0End      'h0000_01FF
SDRAMCfgBase  'h0000_0200
SDRAMCfgEnd   'h0000_02FF
Uart0Base     'h0001_1300
Uart0End      'h0001_1340
Uart1Base     'h0001_1400
Uart1End      'h0001_1440
Uart2Base     'h0001_1500
Uart2End      'h0001_1540
SPI0Base      'h0002_0000
SPI0End       'h0002_00FF
SPI1Base      'h0002_0100
SPI1End       'h0002_01FF
SPI2Base      'h0002_0200
SPI2End       'h0002_02FF
PWM0Base      'h0003_0000
PWM0End       'h0003_00FF
PWM1Base      'h0003_0100
PWM1End       'h0003_01FF
PWM2Base      'h0003_0200
PWM2End       'h0003_02FF
PWM3Base      'h0003_0300
PWM3End       'h0003_03FF
PWM4Base      'h0003_0400
PWM4End       'h0003_04FF
PWM5Base      'h0003_0500
PWM5End       'h0003_05FF
I2C0Base      'h0004_0000
I2C0End       'h0004_00FF
GPIOBase      'h0004_0100
GPIOEnd       'h0004_01FF
BootromBase   'h0004_0200
BootromEnd    'h0004_02FF
PinmuxBase    'h0004_0300
PinmuxConfig  'h0004_0310
PinmuxEnd     'h0004_03FF
I2C1Base      'h0004_0400
I2C1End       'h0004_04FF
ClintBase     'h0200_0000
ClintEnd      'h020B_FFFF
PLICBase      'h0C00_0000
PLICEnd       'h0C01_001F
QSPI0MemBase  'h1000_0000
QSPI0MemEnd   'h1FFF_FFFF
SDRAMMemBase  'h8000_0000
SDRAMMemEnd   'hBFFF_FFFF
============  ============

Generating ASIC RTL
-------------------

The following commands will generate the RTL for ASIC synthesis in the ``verilog`` folder:

.. code-block:: yaml
 
  $ make CONFIG=asic_config.inc
  $ cd shakti-soc/asic/e-class-aardonyx/


Porting to ARTY-A7-100t
-----------------------

The same RTL can be ported to ARTY-A7-100t. However the SDRAM should be replaced with BRAMs of
512KB. To build the bitstream of ARTY-A7 do the following:

.. code-block:: yaml

  $ cd shakti-soc/asic/e-class-aardonyx/
  $ make CONFIG=fpga_arty.inc
  $ cd fpga/test/artya7-100t-eval/
  $ make

For Simulation
--------------

A tesbench is available which can be used to simulate the aardonyx chip:

.. code-block:: yaml

  $ make CONFIG=sim_config.inc generate_verilog link_ncverilog

The above command will generate an ``out`` executable in the ``bin`` folder. 

Following arguments can be used along with the ``out``:

1. ``+rtldump``: This will generate a trace of instruction execution in rtldump
2. ``+fullverbose``: This will print all the display statements on the screen
3. ``+debugmode``: This will wait for openocd and gdb to connect

Requirements
------------
1. ``bsc`` command should be available in your ``$PATH`` variable.

Reporting Issues
^^^^^^^^^^^^^^^^
While reporting issues with this board/build please make sure to mark the issues with the ``e-class-aardonyx`` label
