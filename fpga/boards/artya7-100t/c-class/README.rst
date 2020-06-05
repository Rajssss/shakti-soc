#############################
C-Class on ARTY-A7-100t Board
#############################

This repo contains the flow for porting an instance of the C-class on the `ARTY A7-100T
<https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/>`_ board from digilent. 

Features Available
------------------

Please see Soc.defines for the memory-map. Given below are the default configs that have been used.

* **C-class Config**:
1. RV64IMACSU
2. 16KiB I$ and 16KiB D$
3. Gshare branch predictor


* **Devices**:
1. **UART** : Refer `here	<https://gitlab.com/shaktiproject/uncore/devices/blob/master/uart/uart_driver.c>`_ for more info on the uart.
2. **DEBUGGER** : Connects with riscv-openocd.
3. **CLINT**: Refer `here	<https://gitlab.com/shaktiproject/uncore/devices/blob/master/clint/clint.defines>`_ for more info.
4. **MIG-DDR3**: 128MB accessible.

Requirements
------------

1. **Vivado 2017** or above should be used
2. ``vivado`` command should be available in your ``$PATH`` variable.
3. ``bsc`` command should be available in your ``$PATH`` variable.
4. ``riscv-openocd`` should be installed in your system.
5. ``miniterm`` should be installed.

Quick Start (default Config) :: Get started with an Arty A7 100t
----------------------------------------------------------------

Debug Interface over integrated Xilinx tunneled bscan tap (recomended)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: shell-session

  $ git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git
  $ cd shakti-soc/fpga/boards/artya7-100t/c-class
  $ pip3 install -r requirements.txt
  $ python -m configure.main
  $ make -j<jobs> generate_verilog
  $ make ip_build arty_build generate_mcs program_mcs JOBS=<jobs>

Please Disconnect and Reconnect and Reset The Arty Board ! 

Connect to target and Launch Debugger
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In a New Terminal window     

.. code-block:: yaml

  $ sudo openocd -f shakti-arty.cfg

In yet Another Terminal window

.. code-block:: yaml

  $ riscv64-unknown-elf-gdb -x gdb.script

Launch UART Console

.. code-block:: yaml

  $ sudo miniterm /dev/ttyUSB1 19200

## Extended Setup Guide 

1. Clone the **shakti-soc** repository.

.. code-block:: yaml

  $ git clone https://gitlab.com/shaktiproject/cores/shakti-soc.git

2. Change present working directory to `shakti-soc/fpga/boards/artya7-100t/e-class`.

.. code-block:: yaml

  $ cd shakti-soc/fpga/boards/artya7-100t/c-class

3. Run the script to clone various repositories that contain the source code.

.. code-block:: yaml

  $ ./manager.sh update_deps

4. You can now change required SoC configurations in core_config.inc, or change the address maps in SoC.defines. You can also connect new peripherals by modifying SoC.bsv and SoC.defines. For more information on the SoC parameters, refer `this link	<https://gitlab.com/shaktiproject/cores/c-class/blob/master/docs/configuring_core.md>`_.

5. Generate verilog from bluespec source code.

.. code-block:: yaml

  $ make generate_verilog

6. Generate and synthesize the various Xilinx IPs that have been used

.. code-block:: yaml

  $ make ip_build

7. Synthesize, implement and generate the bitstream (The bitstream is generated at `shakti-soc/fpga/boards/artya7-100t/c-class/fpga_project/c-class/c-class.runs/core_impl_1/fpga_top.bit`)

.. code-block:: yaml

  $ make arty_build

8. Connect the Arty-A7 100T board.

9. Program the FPGA with the generated bitstream (Requires sudo access)*

.. code-block:: yaml

  $ make program

\* The ``make program`` command creates a folder whose owner is root. Therefore, before running ``make arty_build`` command again, delete the `shakti-soc/fpga/boards/artya7-100t/c-class/fpga_project/c-class` folder.

Connecting to the board
^^^^^^^^^^^^^^^^^^^^^^^

Currently the arty build only supports booting in debug mode. On reset the, the core will start executing the infinite debug-loop at ``0x00000000``. Once the board has been programmed using the above commands do the following:

1. Open a terminal and launch OpenOCD with sudo permissions

.. code-block:: yaml

  $ cd shakti-soc/fpga/boards/artya7-100t/c-class
  $ sudo openocd -f shakti_ocd.cfg

2. Open another terminal and launch gdb

.. code-block:: yaml

  $ riscv64-unknown-elf-gdb -x gdb.script

3. Open another terminal to capture UART output (The default baud rate is 9600)

.. code-block:: yaml

  $ sudo miniterm /dev/ttyUSB1 9600

You can now use the gdb to load programs into the memory (DDR3) and run them.

Reporting Issues
^^^^^^^^^^^^^^^^
While reporting issues with this board/build please make sure to mark the issues with the ``arty-a7-100t`` label
