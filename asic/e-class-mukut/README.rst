##################
MUKUT: E-class SoC
##################

This project contains a simple SoC targetted for dev modules which uses the e-class core.

Features Available
------------------

Please see Soc.defines for the memory-map. Given below are the default configs that have been used.

* **E-class Core Config**:
1. RV32I
2. 2 Triggers
3. 2 Counters
4. 2 PMP regions
5. AXI4Lite fabric for interconnect

* Devices:
1. **UART** : Refer `here  <https://gitlab.com/shaktiproject/uncore/devices/blob/master/uart/uart_driver.c>`_ for more info on the uart.
2. **SPI** : Refer `here   <https://gitlab.com/shaktiproject/uncore/devices/blob/master/spi>`_ for more info.
3. **BOOTROM** : Refer `here   <https://gitlab.com/shaktiproject/uncore/devices/blob/master/bootrom/>`_
4. **DEBUGGER** : Connects with riscv-openocd. Refer `here   <https://gitlab.com/shaktiproject/uncore/devices/blob/master/riscvDebug013>`_
5. **CLINT** : Refer `here   <https://gitlab.com/shaktiproject/uncore/devices/blob/master/clint/clint.defines>`_ for more info.
6. **I2C** : Refer `here   <https://gitlab.com/shaktiproject/uncore/devices/blob/master/i2c>`_ for more info.
7. **GPIO** : Refer `here   <https://gitlab.com/shaktiproject/uncore/devices/tree/master/gpio>`_ for more info.

* **Memory MAP**:

  Following is the SoC Config for Mukut:

===========  ============  
 Config        address  
===========  ============
DebugBase    'h0000_0010
DebugEnd     'h0000_001F
BootromBase  'h0000_1000
BootromEnd   'h0000_13FF
UART0Base    'h0000_3000
UART0End     'h0000_30FF
Spi0Base     'h0000_3100
Spi0End      'h0000_31FF
Spi1Base     'h0000_3200
Spi1End      'h0000_32FF
I2CBase      'h0000_3300
I2CEnd       'h0000_33FF
GPIOBase     'h0000_3400
GPIOEnd      'h0000_34FF
ClintBase    'h0200_0000
ClintEnd     'h020B_FFFF
===========  ============

Requirements
------------

1. ``bsc`` command should be available in your ``$PATH`` variable.

Steps to build
--------------

1. Clone the *shakti-soc* repository.

.. code-block:: yaml

  $ git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git

2. Change present working directory to *shakti-soc/asic/e-class-mukut*.

.. code-block:: yaml

  $ cd shakti-soc/asic/e-class-mukut

3. Run the script to clone various repositories that contain the source code.

.. code-block:: yaml

  $ ./manager.sh update_deps

4. Generate verilog from bluespec source code.

.. code-block:: yaml

  $ make generate_verilog

Compiling Verilog
^^^^^^^^^^^^^^^^^
If you are not using the attached Makefile for compiling the generated verilog please ensure
that the following macros are enabled while reading all the verilog files:

.. code-block:: yaml

BSV_RESET_FIFO_HEAD 
BSV_RESET_FIFO_ARRAY

Reporting Issues
^^^^^^^^^^^^^^^^
While reporting issues with this board/build please make sure to mark the issues with the ``e-class-mukut`` label

