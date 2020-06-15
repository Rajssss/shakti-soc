EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title "AARDONYX SKT32E DEVELOPMENT BOARD"
Date ""
Rev "R1V0"
Comp "IIT_MADRAS"
Comment1 ""
Comment2 ""
Comment3 "Aardonyx - SKT32E"
Comment4 "Hierarchial Sheet"
$EndDescr
$Sheet
S 8150 4100 850  900 
U 5D8B3761
F0 "ftdi" 50
F1 "ftdi.sch" 50
F2 "TCK" O L 8150 4200 50 
F3 "TDI" O L 8150 4300 50 
F4 "TDO" I L 8150 4400 50 
F5 "TMS" O L 8150 4500 50 
F6 "TRST" O L 8150 4600 50 
F7 "UART0_RX" O L 8150 4850 50 
F8 "UART0_TX" I L 8150 4750 50 
$EndSheet
$Sheet
S 8150 2200 850  1500
U 5D8B37B8
F0 "sdram" 50
F1 "sdram.sch" 50
F2 "SDRAM_D[0..31]" B L 8150 2450 50 
F3 "CLK" O L 8150 2300 50 
F4 "SDRAM_CKE" I L 8150 2900 50 
F5 "SDRAM_CLK" I L 8150 2800 50 
F6 "SDRAM_WE" I L 8150 3050 50 
F7 "SDRAM_CAS" I L 8150 3150 50 
F8 "SDRAM_RAS" I L 8150 3250 50 
F9 "SDRAM_CS" I L 8150 3350 50 
F10 "SDRAM_BA1" I L 8150 3500 50 
F11 "SDRAM_BA0" I L 8150 3600 50 
F12 "SDRAM_A[0..12]" I L 8150 2550 50 
F13 "SDRAM_DQM[0..3]" I L 8150 2650 50 
$EndSheet
Wire Wire Line
	7050 2300 8150 2300
Wire Bus Line
	7050 2550 8150 2550
Wire Bus Line
	7050 2650 8150 2650
Wire Wire Line
	7050 2800 8150 2800
Wire Wire Line
	8150 2900 7050 2900
Wire Wire Line
	7050 3500 8150 3500
Wire Wire Line
	7050 3600 8150 3600
Wire Wire Line
	8150 3350 7050 3350
Wire Wire Line
	7050 3250 8150 3250
Wire Wire Line
	8150 3150 7050 3150
Wire Wire Line
	7050 3050 8150 3050
Wire Wire Line
	8150 4200 7050 4200
Wire Wire Line
	7050 4300 8150 4300
Wire Wire Line
	8150 4400 7050 4400
Wire Wire Line
	7050 4500 8150 4500
Wire Wire Line
	7050 4600 8150 4600
Wire Wire Line
	8150 4750 7050 4750
Wire Wire Line
	7050 4850 8150 4850
Wire Wire Line
	4350 3700 5100 3700
Wire Wire Line
	5100 3800 4350 3800
Wire Wire Line
	4350 3900 5100 3900
Wire Wire Line
	5100 4000 4350 4000
Wire Wire Line
	4350 4100 5100 4100
Wire Wire Line
	5100 4200 4350 4200
Wire Wire Line
	4350 4400 5100 4400
Wire Wire Line
	5100 4500 4350 4500
Wire Wire Line
	4350 4600 5100 4600
Wire Wire Line
	4350 4700 5100 4700
Wire Wire Line
	4350 2900 5100 2900
Wire Wire Line
	4350 3000 5100 3000
Wire Wire Line
	4350 3200 5100 3200
Wire Wire Line
	5100 3300 4350 3300
Wire Bus Line
	4350 3450 5100 3450
Wire Bus Line
	5100 3550 4350 3550
$Sheet
S 3250 2800 1100 2950
U 5D8B37DE
F0 "arduino_header" 50
F1 "arduino_header.sch" 50
F2 "QSPI0_IO1" B R 4350 3900 50 
F3 "QSPI0_IO0" B R 4350 4000 50 
F4 "QSPI0_IO3" B R 4350 4200 50 
F5 "QSPI0_IO2" B R 4350 4100 50 
F6 "QSPI0_CLK" I R 4350 3800 50 
F7 "QSPI0_NCS" I R 4350 3700 50 
F8 "I2C1_SCL" B R 4350 3200 50 
F9 "I2C1_SDA" B R 4350 3300 50 
F10 "SPI0_MISO" O R 4350 4600 50 
F11 "SPI0_MOSI" I R 4350 4700 50 
F12 "SPI0_CLK" I R 4350 4400 50 
F13 "SPI0_nCS" I R 4350 4500 50 
F14 "I2C0_SCL" B R 4350 2900 50 
F15 "I2C0_SDA" B R 4350 3000 50 
F16 "SPI1_nCS" I R 4350 5000 50 
F17 "SPI1_CLK" I R 4350 5100 50 
F18 "SPI1_MISO" O R 4350 5200 50 
F19 "SPI1_MOSI" I R 4350 5300 50 
F20 "RESET_AH" O L 3250 2900 50 
F21 "IO_14" B R 4350 5500 50 
F22 "IO_15" B R 4350 5600 50 
F23 "IO_[8..13]" B R 4350 3550 50 
F24 "IO_[0..7]" B R 4350 3450 50 
$EndSheet
Wire Wire Line
	4350 5300 5100 5300
Wire Wire Line
	5100 5200 4350 5200
Wire Wire Line
	4350 5100 5100 5100
Wire Wire Line
	5100 5000 4350 5000
Wire Wire Line
	3250 2900 3150 2900
Wire Wire Line
	3150 2900 3150 2400
Wire Wire Line
	3150 2400 3550 2400
Wire Wire Line
	4300 2300 5100 2300
$Sheet
S 3550 1750 750  750 
U 5E6E93B2
F0 "power_2" 50
F1 "power_2.sch" 50
F2 "RESET" O R 4300 2300 50 
F3 "RESET_AH" I L 3550 2400 50 
$EndSheet
$Sheet
S 5100 2200 1950 3550
U 5D8B3740
F0 "soc" 50
F1 "soc.sch" 50
F2 "CLK" I R 7050 2300 50 
F3 "RESET" I L 5100 2300 50 
F4 "SPI0_nCS" O L 5100 4500 50 
F5 "SPI0_CLK" O L 5100 4400 50 
F6 "SPI0_MISO" I L 5100 4600 50 
F7 "SPI0_MOSI" O L 5100 4700 50 
F8 "I2C1_SCL" B L 5100 3200 50 
F9 "I2C1_SDA" B L 5100 3300 50 
F10 "SPI1_nCS" O L 5100 5100 50 
F11 "SPI1_CLK" O L 5100 5000 50 
F12 "SPI1_MISO" I L 5100 5200 50 
F13 "SPI1_MOSI" O L 5100 5300 50 
F14 "QSPI0_NCS" O L 5100 3700 50 
F15 "QSPI0_CLK" O L 5100 3800 50 
F16 "QSPI0_IO0" B L 5100 3900 50 
F17 "QSPI0_IO1" B L 5100 4000 50 
F18 "QSPI0_IO2" B L 5100 4100 50 
F19 "QSPI0_IO3" B L 5100 4200 50 
F20 "I2C0_SCL" B L 5100 2900 50 
F21 "I2C0_SDA" B L 5100 3000 50 
F22 "TMS" I R 7050 4500 50 
F23 "TRST" I R 7050 4600 50 
F24 "TCK" I R 7050 4200 50 
F25 "TDI" I R 7050 4300 50 
F26 "TD0" O R 7050 4400 50 
F27 "UART0_TX" O R 7050 4750 50 
F28 "UART0_RX" I R 7050 4850 50 
F29 "SDRAM_D[0..31]" B R 7050 2450 50 
F30 "SDRAM_CKE" O R 7050 2900 50 
F31 "SDRAM_CLK" O R 7050 2800 50 
F32 "SDRAM_WE" O R 7050 3050 50 
F33 "SDRAM_CAS" O R 7050 3150 50 
F34 "SDRAM_RAS" O R 7050 3250 50 
F35 "SDRAM_CS" O R 7050 3350 50 
F36 "SDRAM_BA1" O R 7050 3500 50 
F37 "SDRAM_BA0" O R 7050 3600 50 
F38 "IO_14" B L 5100 5500 50 
F39 "IO_15" B L 5100 5600 50 
F40 "SDRAM_A[0..12]" O R 7050 2550 50 
F41 "SDRAM_DQM[0..3]" O R 7050 2650 50 
F42 "IO_[0..7]" B L 5100 3450 50 
F43 "IO_[8..13]" B L 5100 3550 50 
$EndSheet
Wire Wire Line
	4350 5500 5100 5500
Wire Wire Line
	5100 5600 4350 5600
Wire Bus Line
	7050 2450 8150 2450
Text Notes 4600 1050 0    100  ~ 20
AARDONYX SKT32E - DEVELOPMENT BOARD
Text Notes 4700 1300 0    100  ~ 20
WITH ARDUINO COMPATIBLE HEADERS
$Sheet
S 2250 1750 800  750 
U 5DB8A7DC
F0 "power_1" 50
F1 "power_1.sch" 50
$EndSheet
$Comp
L Mechanical:Fiducial FID2
U 1 1 5EE1DA72
P 3450 7250
F 0 "FID2" H 3535 7296 50  0000 L CNN
F 1 "Fiducial" H 3535 7205 50  0000 L CNN
F 2 "" H 3450 7250 50  0001 C CNN
F 3 "~" H 3450 7250 50  0001 C CNN
	1    3450 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 5EE1DFF3
P 3450 6750
F 0 "FID1" H 3535 6796 50  0000 L CNN
F 1 "Fiducial" H 3535 6705 50  0000 L CNN
F 2 "" H 3450 6750 50  0001 C CNN
F 3 "~" H 3450 6750 50  0001 C CNN
	1    3450 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5EE1E985
P 2450 6650
F 0 "H5" H 2550 6696 50  0000 L CNN
F 1 "MountingHole" H 2550 6605 50  0000 L CNN
F 2 "" H 2450 6650 50  0001 C CNN
F 3 "~" H 2450 6650 50  0001 C CNN
	1    2450 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5EE1F2FA
P 2450 7200
F 0 "H6" H 2550 7246 50  0000 L CNN
F 1 "MountingHole" H 2550 7155 50  0000 L CNN
F 2 "" H 2450 7200 50  0001 C CNN
F 3 "~" H 2450 7200 50  0001 C CNN
	1    2450 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EE1F909
P 1650 6650
F 0 "H3" H 1750 6696 50  0000 L CNN
F 1 "MountingHole" H 1750 6605 50  0000 L CNN
F 2 "" H 1650 6650 50  0001 C CNN
F 3 "~" H 1650 6650 50  0001 C CNN
	1    1650 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EE1FEDB
P 1650 7200
F 0 "H4" H 1750 7246 50  0000 L CNN
F 1 "MountingHole" H 1750 7155 50  0000 L CNN
F 2 "" H 1650 7200 50  0001 C CNN
F 3 "~" H 1650 7200 50  0001 C CNN
	1    1650 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EE20245
P 800 7200
F 0 "H2" H 900 7246 50  0000 L CNN
F 1 "MountingHole" H 900 7155 50  0000 L CNN
F 2 "" H 800 7200 50  0001 C CNN
F 3 "~" H 800 7200 50  0001 C CNN
	1    800  7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5EE204B7
P 800 6650
F 0 "H1" H 900 6696 50  0000 L CNN
F 1 "MountingHole" H 900 6605 50  0000 L CNN
F 2 "" H 800 6650 50  0001 C CNN
F 3 "~" H 800 6650 50  0001 C CNN
	1    800  6650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
