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
# TODO: inputs - tms, tdi, trst
set_input_delay [expr ${ID_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [all_inputs] 
# TODO: outputs - tdo
set_output_delay [expr ${OD_RATIO} * ${MAINPERIOD}] -clock [get_clocks ${MAINCLK}] [all_inputs]
set_clock_uncertainty [expr ${MAINPERIOD}*${UNCERTAINTY}] ${MAINCLK}

create_clock -name ${JTAGCLK} -period ${JTAGPERIOD} -waveform ${JTAGWAVE} [get_ports CLK_tck_clk]
# TODO: inputs should be only : tms, tdi, trst
set_input_delay [expr ${ID_RATIO} * ${JTAGPERIOD}] -clock [get_clocks ${JTAGCLK}] [all_inputs]
# TODO: outputs should be only : tdo
set_output_delay [expr ${OD_RATIO} * ${JTAGPERIOD}] -clock [get_clocks ${JTAGCLK}] [all_inputs]
set_clock_uncertainty [expr ${JTAGPERIOD}*${UNCERTAINTY}] ${JTAGCLK}


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

# multicycle paths
set_multicycle_path -setup 4 -from [get_clocks ${JTAGCLK}] -to [get_clocks ${MAINCLK}] -end
set_multicycle_path -hold 3 -from [get_clocks ${JTAGCLK}] -to [get_clocks ${MAINCLK}] -end
set_multicycle_path -setup 4 -from [get_clocks ${MAINCLK}] -to [get_clocks ${JTAGCLK}] -start
set_multicycle_path -hold 4 -from [get_clocks ${MAINCLK}] -to [get_clocks ${JTAGCLK}] -start

