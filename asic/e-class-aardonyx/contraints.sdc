## common parameter settings
set DUTYCYCLE   0.5;
set OD_RATIO    0.6;
set ID_RATIO    0.6;
set UNCERTAINTY 0.1;
set ITRANSITION 0.5;
set OLOAD       0.2;

## clock specific parameters
set MAINCLK     CLK;
set MAINPERIOD  10;
set MAINWAVE    [list 0.0000 [expr ${MAINPERIOD}*${DUTYCYCLE}]];

set JTAGCLK     CLK_tck_clk
set JTAGPERIOD  60;
set JTAGWAVE    [list 0.0000 [expr ${JTAGPERIOD}*${DUTYCYCLE}]];


# create clocks
create_clock -name ${MAINCLK} -period ${MAINPERIOD} -waveform ${MAINWAVE} [get_ports CLK]

set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports boot_mode] 
set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports uart0_io_SIN] 
set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports uart1_io_SIN] 
set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports uart2_io_SIN] 
set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports i2c_out_scl_in_in] 
set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports i2c_out_sda_in_in] 
set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports gpio_io_gpio_in_inp] 
set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports ext_interrupts_i] 

set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports pwm0_io_pwm_o]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports pwm1_io_pwm_o]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports pwm2_io_pwm_o]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports pwm3_io_pwm_o]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports pwm4_io_pwm_o]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports pwm5_io_pwm_o]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports spi0_io_nss]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports spi1_io_nss]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports spi2_io_nss]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports uart0_io_SOUT]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports uart1_io_SOUT]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports uart2_io_SOUT]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports i2c_out_scl_out]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports i2c_out_scl_out]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports i2c_out_sda_out_en]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports i2c_out_sda_out_en]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports gpio_io_gpio_out]
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [get_ports gpio_io_gpio_out_en]
set_clock_uncertainty [expr ${MAINPERIOD}*${UNCERTAINTY}] ${MAINCLK}

create_clock -name ${JTAGCLK} -period ${JTAGPERIOD} -waveform ${JTAGWAVE} [get_ports CLK_tck_clk]
set_input_delay [expr ${ID_RATIO} * ${JTAGPERIOD}] -clock [get_clocks ${JTAGCLK}] [get_ports tms]
set_input_delay [expr ${ID_RATIO} * ${JTAGPERIOD}] -clock [get_clocks ${JTAGCLK}] [get_ports tdi]
set_input_delay [expr ${ID_RATIO} * ${JTAGPERIOD}] -clock [get_clocks ${JTAGCLK}] [get_ports trst]
set_output_delay [expr ${OD_RATIO} * ${JTAGPERIOD}] -clock [get_clocks ${JTAGCLK}] [get_ports tdo]
set_clock_uncertainty [expr ${JTAGPERIOD}*${UNCERTAINTY}] ${JTAGCLK}

# multicycle paths
set_multicycle_path -setup 4 -from [get_clocks ${JTAGCLK}] -to [get_clocks ${MAINCLK}] -end
set_multicycle_path -hold 3 -from [get_clocks ${JTAGCLK}] -to [get_clocks ${MAINCLK}] -end
set_multicycle_path -setup 4 -from [get_clocks ${MAINCLK}] -to [get_clocks ${JTAGCLK}] -start
set_multicycle_path -hold 4 -from [get_clocks ${MAINCLK}] -to [get_clocks ${JTAGCLK}] -start

# constraints for SPI0
create_generated_clock -name SpiClk0 -edges {0 5 10} -source [get_pins ??] [get_ports spi0_io_sclk]
set_output_delay -clock [get_clocks SpiClk0] -max 1.3 [get_ports spi0_io_mosi]
set_output_delay -clock [get_clocks SpiClk0] -min -1.3 [get_ports spi0_io_mosi]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports spi0_io_mosi] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports spi0_io_mosi] -to [get_clocks ${MAINCLK}]
set_input_delay -clock [get_clocks SpiClk0] -max 1.5 [get_ports spi0_io_miso_dat]
set_input_delay -clock [get_clocks SpiClk0] -min 0.4 [get_ports spi0_io_miso_dat]
set_multicycle_path -setup -end 2 -from [get_clocks SpiClk0] -through [get_ports spi0_io_miso_dat] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -end 7 -from [get_clocks SpiClk0] -through [get_ports spi0_io_miso_dat] -to [get_clocks ${MAINCLK}]

# constraints for SPI1
create_generated_clock -name SpiClk1 -edges {0 5 10} -source [get_pins ??] [get_ports spi1_io_sclk]
set_output_delay -clock [get_clocks SpiClk1] -max 1.3 [get_ports spi1_io_mosi]
set_output_delay -clock [get_clocks SpiClk1] -min -1.3 [get_ports spi1_io_mosi]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports spi1_io_mosi] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports spi1_io_mosi] -to [get_clocks ${MAINCLK}]
set_input_delay -clock [get_clocks SpiClk1] -max 1.5 [get_ports spi1_io_miso_dat]
set_input_delay -clock [get_clocks SpiClk1] -min 0.4 [get_ports spi1_io_miso_dat]
set_multicycle_path -setup -end 2 -from [get_clocks SpiClk1] -through [get_ports spi1_io_miso_dat] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -end 7 -from [get_clocks SpiClk1] -through [get_ports spi1_io_miso_dat] -to [get_clocks ${MAINCLK}]

# constraints for SPI2
create_generated_clock -name SpiClk2 -edges {0 5 10} -source [get_pins ??] [get_ports spi2_io_sclk]
set_output_delay -clock [get_clocks SpiClk2] -max 1.3 [get_ports spi2_io_mosi]
set_output_delay -clock [get_clocks SpiClk2] -min -1.3 [get_ports spi2_io_mosi]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports spi2_io_mosi] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports spi2_io_mosi] -to [get_clocks ${MAINCLK}]
set_input_delay -clock [get_clocks SpiClk2] -max 1.5 [get_ports spi2_io_miso_dat]
set_input_delay -clock [get_clocks SpiClk2] -min 0.4 [get_ports spi2_io_miso_dat]
set_multicycle_path -setup -end 2 -from [get_clocks SpiClk2] -through [get_ports spi2_io_miso_dat] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -end 7 -from [get_clocks SpiClk2] -through [get_ports spi2_io_miso_dat] -to [get_clocks ${MAINCLK}]

# constraints for QSPI
create_generated_clock -name QSpiClk -edges {0 5 10} -source [get_pins ??] [get_ports qspi_io_clk_o]
set_output_delay -clock [get_clocks QSpiClk] -max 1.3 [get_ports qspi_io_io_out[0]]
set_output_delay -clock [get_clocks QSpiClk] -min -1.3 [get_ports qspi_io_io_out[0]]
set_output_delay -clock [get_clocks QSpiClk] -max 1.3 [get_ports qspi_io_io_out[1]]
set_output_delay -clock [get_clocks QSpiClk] -min -1.3 [get_ports qspi_io_io_out[1]]
set_output_delay -clock [get_clocks QSpiClk] -max 1.3 [get_ports qspi_io_io_out[2]]
set_output_delay -clock [get_clocks QSpiClk] -min -1.3 [get_ports qspi_io_io_out[2]]
set_output_delay -clock [get_clocks QSpiClk] -max 1.3 [get_ports qspi_io_io_out[3]]
set_output_delay -clock [get_clocks QSpiClk] -min -1.3 [get_ports qspi_io_io_out[3]]
set_output_delay -clock [get_clocks QSpiClk] -max 1.3 [get_ports qspi_io_io_enable[0]]
set_output_delay -clock [get_clocks QSpiClk] -min -1.3 [get_ports qspi_io_io_enable[0]]
set_output_delay -clock [get_clocks QSpiClk] -max 1.3 [get_ports qspi_io_io_enable[1]]
set_output_delay -clock [get_clocks QSpiClk] -min -1.3 [get_ports qspi_io_io_enable[1]]
set_output_delay -clock [get_clocks QSpiClk] -max 1.3 [get_ports qspi_io_io_enable[2]]
set_output_delay -clock [get_clocks QSpiClk] -min -1.3 [get_ports qspi_io_io_enable[2]]
set_output_delay -clock [get_clocks QSpiClk] -max 1.3 [get_ports qspi_io_io_enable[3]]
set_output_delay -clock [get_clocks QSpiClk] -min -1.3 [get_ports qspi_io_io_enable[3]]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_out[0]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_out[0]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_out[1]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_out[1]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_out[2]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_out[2]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_out[3]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_out[3]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_enable[0]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_enable[0]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_enable[1]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_enable[1]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_enable[2]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_enable[2]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -start 2 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_enable[3]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -start 7 -from [get_clocks ${MAINCLK}] -through [get_ports qspi_io_io_enable[3]] -to [get_clocks ${MAINCLK}]
set_input_delay -clock [get_clocks QSpiClk] -max 1.5 [get_ports qspi_io_io_in_io_in[0]]
set_input_delay -clock [get_clocks QSpiClk] -min 0.4 [get_ports qspi_io_io_in_io_in[0]]
set_input_delay -clock [get_clocks QSpiClk] -max 1.5 [get_ports qspi_io_io_in_io_in[1]]
set_input_delay -clock [get_clocks QSpiClk] -min 0.4 [get_ports qspi_io_io_in_io_in[1]]
set_input_delay -clock [get_clocks QSpiClk] -max 1.5 [get_ports qspi_io_io_in_io_in[2]]
set_input_delay -clock [get_clocks QSpiClk] -min 0.4 [get_ports qspi_io_io_in_io_in[2]]
set_input_delay -clock [get_clocks QSpiClk] -max 1.5 [get_ports qspi_io_io_in_io_in[3]]
set_input_delay -clock [get_clocks QSpiClk] -min 0.4 [get_ports qspi_io_io_in_io_in[3]]
set_multicycle_path -setup -end 2 -from [get_clocks QSpiClk] -through [get_ports qspi_io_io_in_io_in[0]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -end 7 -from [get_clocks QSpiClk] -through [get_ports qspi_io_io_in_io_in[0]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -end 2 -from [get_clocks QSpiClk] -through [get_ports qspi_io_io_in_io_in[1]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -end 7 -from [get_clocks QSpiClk] -through [get_ports qspi_io_io_in_io_in[1]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -end 2 -from [get_clocks QSpiClk] -through [get_ports qspi_io_io_in_io_in[2]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -end 7 -from [get_clocks QSpiClk] -through [get_ports qspi_io_io_in_io_in[2]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -setup -end 2 -from [get_clocks QSpiClk] -through [get_ports qspi_io_io_in_io_in[3]] -to [get_clocks ${MAINCLK}]
set_multicycle_path -hold -end 7 -from [get_clocks QSpiClk] -through [get_ports qspi_io_io_in_io_in[3]] -to [get_clocks ${MAINCLK}]
