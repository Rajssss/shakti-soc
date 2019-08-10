### The included bitstream(s) can only be used to program Xilinx devices.
### Using the pre-built mcs file
### Using the pre-built mcs file
Download the mcs file using the following command in the current folder (pre-built-mcs):

```
wget https://gitlab.com/shaktiproject/cores/shakti-soc/-/jobs/artifacts/master/raw/fpga_top.mcs/?job=c-class-100t 
```

Burn the flash with the mcs file using the Makefile in this folder and the following commands:
```
make program_mcs_spansion
OR
make make program_mcs_micron
```

