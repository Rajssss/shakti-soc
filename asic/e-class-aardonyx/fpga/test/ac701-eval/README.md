# E-Class ASIC Dev Kit (AARDONYX)

## Porting to AC701 Artix-7
To build the bitstream of AC701 do the following:

```
cd shakti-soc/asic/e-class-aardonyx/
make CONFIG=asic_config.inc
cd fpga/test/ac701-eval/
make
```

