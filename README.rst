###################################
Central repository for Shakti SoC's
###################################

Getting Started
---------------

This repository consists of various FPGA Emulation for different classes of Shakti Processors. The entire processor design is implemented in Bluespec System Verilog (BSV), an open-source high-level hardware description language.

Prerequisites
-------------

* Operating System: Ubuntu 18.04
* Tools Required: Bluespec Compiler, Verilator, RISC-V Toolchain, DTC, Vivado, Miniterm

Install Open Bluespec Compiler
------------------------------

An open source version of the Bluespec Compiler is available `here
<https://github.com/B-Lang-org/bsc>`_. 

By installing the open-source Bluespec compiler, you will be able to generate synthesizable verilog compatible for FPGA targets.

.. code-block:: yaml

  $ sudo apt-get install ghc libghc-regex-compat-dev libghc-syb-dev libghc-old-time-dev libfontconfig1-dev libx11-dev libxft-dev flex bison
  $ git clone --recursive  https://github.com/B-Lang-org/bsc
  $ cd bsc
  $ make PREFIX=</path/to/install>

After you have done the above, add the path you have installed the bsc compiler to your $PATH in the .bashrc or .cshrc 

.. code-block:: yaml

  $ export PATH=$(pwd)/inst/bin:$PATH

Typing bsc in your terminal should display the following help options:

.. code-block:: yaml

  Usage:
   bsc -help                                to get help
   bsc [flags] file.bsv                     to partially compile a Bluespec file
   bsc [flags] -verilog -g mod file.bsv     to compile a module to Verilog
   bsc [flags] -verilog -g mod -u file.bsv  to recursively compile modules to Verilog
   bsc [flags] -verilog -e topmodule        to link Verilog into a simulation model
   bsc [flags] -sim -g mod file.bsv         to compile to a Bluesim object
   bsc [flags] -sim -g mod -u file.bsv      to recursively compile to Bluesim objects
   bsc [flags] -sim -e topmodule            to link objects into a Bluesim binary
   bsc [flags] -systemc -e topmodule        to link objects into a SystemC model

**Note**: The latest compiler has been tested and known to work for Ubuntu
18.04. Also a binary built on 16.04 will not work on 18.04 due to libgc version mismatch. It is
suggested you do a fresh install for 16.04.

Install Verilator
-----------------

While we support commercial verilog simulators, our entire verification and simulation environments
are heavily driven by Verilator, and suggest you install verilator as well.

.. code-block:: yaml

  $ sudo apt-get install git make autoconf g++ flex bison
  $ git clone https://git.veripool.org/git/verilator
  $ cd verilator
  $ git checkout stable
  $ autoconf
  $ ./configure
  $ make
  $ sudo make install

Install RISC-V Toolchain
------------------------

You will need to install the ``riscv-gnu-toolchain``, ``riscv-isa-sim`` and ``riscv-openocd`` 
in-order to compile assembly tests or C/C++ benchmarks, convert them to hex, compare with spike 
and simulate them on the C-class cores through gdb. If you already have them installed
then you can skip this step.

To install riscv-gnu-toolchain:

.. code-block:: yaml

  $ mkdir /path/to/install/riscv/toolchain
  $ export RISCV=/path/to/install/riscv/toolchain
  $ sudo apt-get install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev libusb-1.0-0-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev device-tree-compiler pkg-config libexpat-dev
  $ git clone --recursive https://github.com/riscv/riscv-opcodes.git
  $ git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
  $ cd riscv-gnu-toolchain
  $ ./configure --prefix=$RISCV # for 64-bit toolchain
  $ make
  $ ./configure --prefix=$RISCV --with-arch=rv32gc --with-abi=ilp32d # for  32-bit toolchain
  $ make

Now install riscv-isa-sim: 

.. code-block:: yaml

  $ git clone https://github.com/riscv/riscv-isa-sim.git
  $ cd riscv-isa-sim
  $ git checkout 6d15c93fd75db322981fe58ea1db13035e0f7add
  $ git apply  </your download path>/c-class/configure/spike.patch
  $ mkdir build
  $ cd build
  $ ../configure --prefix=$RISCV
  $ make
  $ make install

Now install riscv-openocd:

.. code-block:: yaml

 git clone https://github.com/riscv/riscv-openocd --recursive
  $ ./configure --enable-jlink --enable-remote-bitbang --enable-jtag_vpi --enable-ftdi --prefix=$RISCV
  $ make
  $ make install

Make sure to add the /path/to/install/riscv/toolchain/bin to your ``$PATH`` in
the `.bashrc` or `.cshrc`

Install DTC (device tree compiler)
----------------------------------

We use the DTC 1.4.7 to generate the device tree string in the boot-files. 
To install DTC follow the below commands:

.. code-block:: yaml

  $ sudo wget https://git.kernel.org/pub/scm/utils/dtc/dtc.git/snapshot/dtc-1.4.7.tar.gz
  $ sudo tar -xvzf dtc-1.4.7.tar.gz
  $ cd dtc-1.4.7/
  $ sudo make NO_PYTHON=1 PREFIX=/usr/
  $ sudo make install NO_PYTHON=1 PREFIX=/usr/

Install Vivado
--------------

Requirements
^^^^^^^^^^^^
1. If you dont have a Xilinx account, create a free account (https://www.xilinx.com/registration/create-account.html)

Installing Vivado HLx 2018.3
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
1. On your local machine, download the [Vivado HLx 2018.3 Linux Self Extracting Web Installer](https://www.xilinx.com/member/forms/download/xef-vivado.html?filename=Xilinx_Vivado_SDK_Web_2018.3_1207_2324_Lin64.bin) (for Linux 64 bit OS).
2. Make the Vivado installer executable and run it using:

.. code-block:: yaml

  $ chmod +x Xilinx_*.bin
  $ sudo ./Xilinx_*.bin

3. Once the installer loads, click "Next".
4. Then enter your Xilinx username and password and leave "Download and Install Now" selected.  Click "Next".
5. Click "I Agree" to all three statements if you agree :-).  Click "Next".
6. Select "Vivado HL WebPACK" and click "Next".
7. Under "Design Tools", make sure that "Vivado Design Suite" and "Software Developer Kit (SDK)" are selected.
8. In the "Devices" menu, de-select all parts except "SoCs" -> "Zynq-7000".  Click "Next".
9. For the installation directory, create a directory called "/tools/Xilinx" select it.  Then de-select "Create program group entries" and "Create desktop shortcuts".  Click "Next".
10. Click "Install" and wait for the installer to finish.  It will take about an hour.
11. Install the Xilinx cable drivers:

.. code-block:: yaml

  $ cd /tools/Xilinx/Vivado/2018.3/data/xicom/cable_drivers/lin64/install_script/install_drivers
  $ sudo ./install_drivers

12. Do some permissions cleanup:

.. code-block:: yaml

  $ cd ~/.Xilinx/Vivado
  $ sudo chown -R $USER *
  $ sudo chmod -R 777 *
  $ sudo chgrp -R $USER *

13. Add the Vivado binary directory to your path:

.. code-block:: yaml

  $ echo 'export PATH="/tools/Xilinx/Vivado/2018.3/bin:/tools/Xilinx/SDK/2018.3/bin:$PATH"' >> ~/.bashrc
  $ source ~/.bashrc

14. Test Vivado

.. code-block:: yaml

  $ vivado -version
  Vivado v2018.3 (64-bit)
  SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
  IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
  Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

Install Miniterm
----------------

.. code-block:: yaml

  $ sudo apt-get install python-serial

pyserial module provides access to the serial port.
