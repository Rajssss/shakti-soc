###########################
E-Class on NEXYS4-DDR Board
###########################

This repo contains the flow for porting an instance of the E-class on the `Nexys4-DDR
<https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/>`_ board from digilent. 

Features Available
------------------

Please see Soc.defines for the memory-map. Given below are the default configs that have been used.

* **E-class Config**:
1. RV64IMAC
2. User-Traps enabled
3. 4 pmp regions
4. 2 Triggers
5. 4 performance counters

* **Devices**:
1. **_UART** : Refer `here	<https://gitlab.com/shaktiproject/uncore/devices/blob/master/uart/uart_driver.c>`_ for more info on the uart.
2. **DEBUGGER**: Connects with riscv-openocd.
3. **CLINT** : Refer `here	<https://gitlab.com/shaktiproject/uncore/devices/blob/master/clint/clint.defines>`_ for more info.
4. **MIG-DDR3** : 128MB accessible.

Requirements
------------

1. **Vivado 2017** or above should be used
2. ``vivado`` command should be available in your ``$PATH`` variable.
3. ``bsc`` command should be available in your ``$PATH`` variable.
4. ``riscv-openocd`` should be installed in your system.
5. ``miniterm`` should be installed.

Quick Start (default Config) :: Get started with an Nexys4-DDR 
--------------------------------------------------------------

[A] Debug Interface over integrated Xilinx tunneled bscan tap (recomended)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: yaml

  $ git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git
  $ cd shakti-soc/fpga/boards/artya7-100t/e-class
  $ make quick_build_xilinx
  echo "Please Disconnect and Reconnect and Reset The Nexys4-DDR Board ! "

Connect to target and Launch Debugger
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Please make sure you are using the 32-bit toolchain available `here
<https://gitlab.com/shaktiproject/software/shakti-tools/>`_. 
(This toolchain contains the ``openocd`` binary which has been tweaked for our bscan2e based JTAG
protocol)

In a New Terminal window     

.. code-block:: yaml

  $ sudo openocd -f openocd.cfg

In yet Another Terminal window

.. code-block:: yaml

  $ riscv32-unknown-elf-gdb -x gdb.script

Launch UART Console

.. code-block:: yaml

  $ sudo miniterm /dev/ttyUSB1 19200

Reporting Issues
^^^^^^^^^^^^^^^^
While reporting issues with this board/build please make sure to mark the issues with the ``nexys4-ddr`` label
