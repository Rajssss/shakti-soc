EESchema Schematic File Version 4
LIBS:Aardonyx-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "AARDONYX SKT32E DEVELOPMENT BOARD"
Date ""
Rev "R1V0"
Comp "IIT_MADRAS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6950 1650 6950 1550
Wire Wire Line
	6950 1550 7450 1550
$Comp
L Aardonyx-rescue:IS25LP256x-xM-aardonyx U6
U 1 1 5DEF65AC
P 2750 1950
F 0 "U6" H 2400 2400 50  0000 C CNN
F 1 "IS25LP256x-xM" H 3150 1500 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2800 2550 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/issi-integrated-silicon-solution-inc/IS25LP256D-JMLE/706-1611-ND/7567432" H 2800 1450 50  0001 C CNN
F 4 "IC FLASH 256M SPI 133MHZ 16SOIC" H 2750 1950 50  0001 C CNN "Description"
F 5 "706-1611-ND" H 2750 1950 50  0001 C CNN "Digikey PartNumber"
F 6 "IS25LP256D-JMLE" H 2750 1950 50  0001 C CNN "Manufactured Part Number"
F 7 "ISSI, Integrated Silicon Solution Inc" H 2750 1950 50  0001 C CNN "Maufaturer"
	1    2750 1950
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:CAT24M01WI-GT3-aardonyx U5
U 1 1 5DF07821
P 1500 5650
F 0 "U5" H 1200 6150 50  0000 C CNN
F 1 "CAT24M01WI-GT3" H 1900 5150 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1500 5650 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/on-semiconductor/CAT24M01WI-GT3/CAT24M01WI-GT3OSCT-ND/2698362" H 1500 5650 50  0001 C CNN
F 4 "IC EEPROM 1M I2C 1MHZ 8SOIC" H 1500 5650 50  0001 C CNN "Description"
F 5 "CAT24M01XI-T2OSCT-ND" H 1500 5650 50  0001 C CNN "Digikey PartNumber"
F 6 "CAT24M01XI-T2" H 1500 5650 50  0001 C CNN "Manufactured Part Number"
F 7 "ON Semiconductor" H 1500 5650 50  0001 C CNN "Maufaturer"
	1    1500 5650
	1    0    0    -1  
$EndComp
Text Label 5900 2250 0    39   ~ 0
IO_0
Text Label 5900 2350 0    39   ~ 0
IO_1
Text Label 5900 2450 0    39   ~ 0
IO_2
Text Label 5900 2550 0    39   ~ 0
IO_3
Text Label 5900 2650 0    39   ~ 0
IO_4
Text Label 5900 2750 0    39   ~ 0
IO_5
Text Label 5900 2850 0    39   ~ 0
IO_6
Text Label 5900 2950 0    39   ~ 0
IO_7
Text Label 7700 2250 2    39   ~ 0
AH_IO_0
Text Label 7700 2350 2    39   ~ 0
AH_IO_1
Text Label 7700 2450 2    39   ~ 0
AH_IO_2
Text Label 7700 2550 2    39   ~ 0
AH_IO_3
Text Label 7700 2650 2    39   ~ 0
AH_IO_4
Text Label 7700 2750 2    39   ~ 0
AH_IO_5
Text Label 7700 2950 2    39   ~ 0
AH_IO_7
Text Label 7700 2850 2    39   ~ 0
AH_IO_6
$Comp
L Aardonyx-rescue:LSF0108PWR-aardonyx U9
U 1 1 5E250FD7
P 9750 2600
F 0 "U9" H 9400 3350 50  0000 C CNN
F 1 "LSF0108PWR" H 10050 1850 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9750 2600 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/texas-instruments/LSF0108PWR/296-37828-1-ND/4876357" H 9750 2600 50  0001 C CNN
F 4 "IC TRNSLTR BIDIRECTIONAL 20TSSOP" H 9750 2600 50  0001 C CNN "Description"
F 5 "296-37828-1-ND" H 9750 2600 50  0001 C CNN "Digikey PartNumber"
F 6 "LSF0108PWR" H 9750 2600 50  0001 C CNN "Manufactured Part Number"
F 7 "Texas Instruments" H 9750 2600 50  0001 C CNN "Maufaturer"
	1    9750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1700 9900 1600
Wire Wire Line
	9900 1600 10400 1600
Text Label 8750 2300 0    39   ~ 0
IO_8
Text Label 8750 2400 0    39   ~ 0
IO_9
Text Label 8750 2500 0    39   ~ 0
IO_10
Text Label 8750 2600 0    39   ~ 0
IO_11
Text Label 8750 2700 0    39   ~ 0
IO_12
Text Label 8750 2800 0    39   ~ 0
IO_13
Text Label 8750 2900 0    39   ~ 0
I2C1_SCL
Text Label 8750 3000 0    39   ~ 0
I2C1_SDA
Text Label 10750 2300 2    39   ~ 0
AH_IO_8
Text Label 10750 2400 2    39   ~ 0
AH_IO_9
Text Label 10750 2500 2    39   ~ 0
AH_IO_10
Text Label 10750 2600 2    39   ~ 0
AH_IO_11
Text Label 10750 2700 2    39   ~ 0
AH_IO_12
Text Label 10750 2800 2    39   ~ 0
AH_IO_13
Text Label 10750 3000 2    39   ~ 0
AH_I2C1_SDA
Text Label 10750 2900 2    39   ~ 0
AH_I2C1_SCL
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR087
U 1 1 5E251C55
P 9600 1100
F 0 "#PWR087" H 9750 1050 50  0001 C CNN
F 1 "V3P3" H 9605 1275 50  0000 C CNN
F 2 "" H 9600 1100 50  0001 C CNN
F 3 "" H 9600 1100 50  0001 C CNN
	1    9600 1100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R36
U 1 1 5E2531D9
P 6950 1350
F 0 "R36" H 7018 1396 50  0000 L CNN
F 1 "200KE,0402" H 7018 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6990 1340 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/koa-speer-electronics-inc/RN73H1ETTP2003B25/2019-RN73H1ETTP2003B25CT-ND/9916930" H 6950 1350 50  0001 C CNN
F 4 " RES 200K OHM 0.1% 1/16W 0402 " H 6950 1350 50  0001 C CNN "Description"
F 5 "2019-RN73H1ETTP2003B25CT-ND " H 6950 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "RN73H1ETTP2003B25" H 6950 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "KOA Speer Electronics, Inc." H 6950 1350 50  0001 C CNN "Maufaturer"
	1    6950 1350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C52
U 1 1 5E253D0A
P 7550 1300
F 0 "C52" H 7642 1346 50  0000 L CNN
F 1 "0.1UF,0402" H 7642 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7550 1300 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 7550 1300 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 7550 1300 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 7550 1300 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 7550 1300 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 7550 1300 50  0001 C CNN "Maufaturer"
	1    7550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2050 7450 1550
Wire Wire Line
	7450 2050 7400 2050
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR078
U 1 1 5E256B51
P 7550 1500
F 0 "#PWR078" H 7550 1250 50  0001 C CNN
F 1 "GND" H 7555 1327 50  0000 C CNN
F 2 "" H 7550 1500 50  0001 C CNN
F 3 "" H 7550 1500 50  0001 C CNN
	1    7550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1400 7550 1500
Wire Wire Line
	6950 1500 6950 1550
Connection ~ 6950 1550
Wire Wire Line
	6950 1200 6950 1100
Wire Wire Line
	7550 1200 7550 1100
Wire Wire Line
	7550 1100 6950 1100
Wire Wire Line
	6950 1050 6950 1100
Connection ~ 6950 1100
Wire Wire Line
	10400 1600 10400 2100
Wire Wire Line
	10400 2100 10350 2100
$Comp
L Aardonyx-rescue:R_US-aardonyx R37
U 1 1 5E2602B7
P 9900 1400
F 0 "R37" H 9968 1446 50  0000 L CNN
F 1 "200KE,0402" H 9968 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9940 1390 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/koa-speer-electronics-inc/RN73H1ETTP2003B25/2019-RN73H1ETTP2003B25CT-ND/9916930" H 9900 1400 50  0001 C CNN
F 4 " RES 200K OHM 0.1% 1/16W 0402 " H 9900 1400 50  0001 C CNN "Description"
F 5 "2019-RN73H1ETTP2003B25CT-ND " H 9900 1400 50  0001 C CNN "Digikey PartNumber"
F 6 "RN73H1ETTP2003B25" H 9900 1400 50  0001 C CNN "Manufactured Part Number"
F 7 "KOA Speer Electronics, Inc." H 9900 1400 50  0001 C CNN "Maufaturer"
	1    9900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1450 10500 1550
Wire Wire Line
	9900 1550 9900 1600
Wire Wire Line
	9900 1250 9900 1150
Wire Wire Line
	10500 1250 10500 1150
Wire Wire Line
	10500 1150 9900 1150
Wire Wire Line
	9900 1100 9900 1150
Connection ~ 9900 1150
Wire Wire Line
	9600 1100 9600 1150
$Comp
L Aardonyx-rescue:C_Small-aardonyx C53
U 1 1 5E266913
P 9150 1350
F 0 "C53" H 9242 1396 50  0000 L CNN
F 1 "0.1UF,0402" H 9242 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9150 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 9150 1350 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 9150 1350 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 9150 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 9150 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 9150 1350 50  0001 C CNN "Maufaturer"
	1    9150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1450 9150 1550
Wire Wire Line
	9150 1250 9150 1150
Wire Wire Line
	9150 1150 9600 1150
Connection ~ 9600 1150
Wire Wire Line
	9600 1150 9600 1700
$Comp
L Aardonyx-rescue:C_Small-aardonyx C51
U 1 1 5E26A35A
P 6250 1300
F 0 "C51" H 6342 1346 50  0000 L CNN
F 1 "0.1UF,0402" H 6342 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6250 1300 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 6250 1300 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 6250 1300 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 6250 1300 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 6250 1300 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 6250 1300 50  0001 C CNN "Maufaturer"
	1    6250 1300
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR070
U 1 1 5E26A360
P 6250 1500
F 0 "#PWR070" H 6250 1250 50  0001 C CNN
F 1 "GND" H 6255 1327 50  0000 C CNN
F 2 "" H 6250 1500 50  0001 C CNN
F 3 "" H 6250 1500 50  0001 C CNN
	1    6250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1400 6250 1500
Wire Wire Line
	6250 1200 6250 1100
Wire Wire Line
	6650 1100 6250 1100
$Comp
L Aardonyx-rescue:LSF0108PWR-aardonyx U8
U 1 1 5DEE23A8
P 6800 2550
F 0 "U8" H 6450 3300 50  0000 C CNN
F 1 "LSF0108PWR" H 7100 1800 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6800 2550 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/texas-instruments/LSF0108PWR/296-37828-1-ND/4876357" H 6800 2550 50  0001 C CNN
F 4 "IC TRNSLTR BIDIRECTIONAL 20TSSOP" H 6800 2550 50  0001 C CNN "Description"
F 5 "296-37828-1-ND" H 6800 2550 50  0001 C CNN "Digikey PartNumber"
F 6 "LSF0108PWR" H 6800 2550 50  0001 C CNN "Manufactured Part Number"
F 7 "Texas Instruments" H 6800 2550 50  0001 C CNN "Maufaturer"
	1    6800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1100 6650 1650
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR072
U 1 1 5E27579B
P 6650 1050
F 0 "#PWR072" H 6800 1000 50  0001 C CNN
F 1 "V3P3" H 6655 1225 50  0000 C CNN
F 2 "" H 6650 1050 50  0001 C CNN
F 3 "" H 6650 1050 50  0001 C CNN
	1    6650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1050 6650 1100
Connection ~ 6650 1100
$Comp
L Aardonyx-rescue:C_Small-aardonyx C54
U 1 1 5E2602BD
P 10500 1350
F 0 "C54" H 10592 1396 50  0000 L CNN
F 1 "0.1UF,0402" H 10592 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10500 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 10500 1350 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 10500 1350 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 10500 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 10500 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 10500 1350 50  0001 C CNN "Maufaturer"
	1    10500 1350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR074
U 1 1 5E27D3CE
P 6800 3550
F 0 "#PWR074" H 6800 3300 50  0001 C CNN
F 1 "GND" H 6805 3377 50  0000 C CNN
F 2 "" H 6800 3550 50  0001 C CNN
F 3 "" H 6800 3550 50  0001 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3450 6800 3550
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR088
U 1 1 5E27E90E
P 9750 3600
F 0 "#PWR088" H 9750 3350 50  0001 C CNN
F 1 "GND" H 9755 3427 50  0000 C CNN
F 2 "" H 9750 3600 50  0001 C CNN
F 3 "" H 9750 3600 50  0001 C CNN
	1    9750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3500 9750 3600
Connection ~ 9900 1600
Text Label 1250 1850 0    39   ~ 0
QSPI0_CLK
Text Label 1250 1950 0    39   ~ 0
QSPI0_NCS_F
Text Label 1250 2050 0    39   ~ 0
QSPI0_IO2
Text Label 1250 2150 0    39   ~ 0
QSPI0_IO3
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR058
U 1 1 5E2A7BA9
P 2750 2550
F 0 "#PWR058" H 2750 2300 50  0001 C CNN
F 1 "GND" H 2755 2377 50  0000 C CNN
F 2 "" H 2750 2550 50  0001 C CNN
F 3 "" H 2750 2550 50  0001 C CNN
	1    2750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2450 2750 2550
Wire Wire Line
	1500 6300 1500 6350
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR057
U 1 1 5E2AB2D6
P 2750 1000
F 0 "#PWR057" H 2900 950 50  0001 C CNN
F 1 "V3P3" H 2755 1175 50  0000 C CNN
F 2 "" H 2750 1000 50  0001 C CNN
F 3 "" H 2750 1000 50  0001 C CNN
	1    2750 1000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C48
U 1 1 5E2ABAA3
P 3300 1200
F 0 "C48" H 3392 1246 50  0000 L CNN
F 1 "0.1UF,0402" H 3392 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3300 1200 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 3300 1200 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 3300 1200 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 3300 1200 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 3300 1200 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 3300 1200 50  0001 C CNN "Maufaturer"
	1    3300 1200
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR061
U 1 1 5E2ACA86
P 3300 1400
F 0 "#PWR061" H 3300 1150 50  0001 C CNN
F 1 "GND" H 3305 1227 50  0000 C CNN
F 2 "" H 3300 1400 50  0001 C CNN
F 3 "" H 3300 1400 50  0001 C CNN
	1    3300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1300 3300 1400
Wire Wire Line
	2750 1000 2750 1050
Wire Wire Line
	3300 1100 3300 1050
Wire Wire Line
	3300 1050 2750 1050
Connection ~ 2750 1050
Wire Wire Line
	2750 1050 2750 1450
$Comp
L Aardonyx-rescue:R_US-aardonyx R32
U 1 1 5E2B4C89
P 2150 1350
F 0 "R32" H 2150 1500 50  0000 L CNN
F 1 "10KE,0805" V 2050 1050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2190 1340 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 2150 1350 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 2150 1350 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 2150 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 2150 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 2150 1350 50  0001 C CNN "Maufaturer"
	1    2150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1950 2150 1500
Wire Wire Line
	2150 1200 2150 1050
NoConn ~ 3250 2050
Wire Wire Line
	1900 1000 1900 1050
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR054
U 1 1 5E2E3983
P 1900 1000
F 0 "#PWR054" H 2050 950 50  0001 C CNN
F 1 "V3P3" H 1905 1175 50  0000 C CNN
F 2 "" H 1900 1000 50  0001 C CNN
F 3 "" H 1900 1000 50  0001 C CNN
	1    1900 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1050 2150 1050
Connection ~ 1900 1050
Wire Wire Line
	1900 1200 1900 1050
Wire Wire Line
	1650 1050 1900 1050
Wire Wire Line
	1650 1200 1650 1050
Wire Wire Line
	1650 1500 1650 2150
Wire Wire Line
	1900 1500 1900 2050
$Comp
L Aardonyx-rescue:R_US-aardonyx R30
U 1 1 5E2C54E1
P 1650 1350
F 0 "R30" H 1650 1500 50  0000 L CNN
F 1 "10KE,0805" V 1550 1050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1690 1340 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 1650 1350 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 1650 1350 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 1650 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 1650 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 1650 1350 50  0001 C CNN "Maufaturer"
	1    1650 1350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R31
U 1 1 5E2C33CD
P 1900 1350
F 0 "R31" H 1900 1500 50  0000 L CNN
F 1 "10KE,0805" V 1800 1050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1940 1340 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 1900 1350 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 1900 1350 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 1900 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 1900 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 1900 1350 50  0001 C CNN "Maufaturer"
	1    1900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1950 2250 1950
Wire Wire Line
	1900 2050 2250 2050
Wire Wire Line
	1650 2150 2250 2150
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR052
U 1 1 5E3046A3
P 1500 4750
F 0 "#PWR052" H 1650 4700 50  0001 C CNN
F 1 "V3P3" H 1505 4925 50  0000 C CNN
F 2 "" H 1500 4750 50  0001 C CNN
F 3 "" H 1500 4750 50  0001 C CNN
	1    1500 4750
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C47
U 1 1 5E3046A9
P 2050 5000
F 0 "C47" H 2142 5046 50  0000 L CNN
F 1 "0.1UF,0402" V 1950 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2050 5000 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 2050 5000 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 2050 5000 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 2050 5000 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 2050 5000 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 2050 5000 50  0001 C CNN "Maufaturer"
	1    2050 5000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR055
U 1 1 5E3046AF
P 2050 5200
F 0 "#PWR055" H 2050 4950 50  0001 C CNN
F 1 "GND" H 2055 5027 50  0000 C CNN
F 2 "" H 2050 5200 50  0001 C CNN
F 3 "" H 2050 5200 50  0001 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5400 850  5400
Wire Wire Line
	850  5400 850  5600
Wire Wire Line
	850  6350 1500 6350
Connection ~ 1500 6350
Wire Wire Line
	1500 6350 1500 6400
Wire Wire Line
	950  5600 850  5600
Connection ~ 850  5600
Wire Wire Line
	850  5600 850  5700
Wire Wire Line
	950  5700 850  5700
Connection ~ 850  5700
Wire Wire Line
	850  5700 850  6350
Wire Wire Line
	2050 5550 2650 5550
Wire Wire Line
	2050 5750 2450 5750
Wire Wire Line
	2450 5000 2450 4850
$Comp
L Aardonyx-rescue:R_US-aardonyx R33
U 1 1 5E31A792
P 2450 5150
F 0 "R33" H 2450 5300 50  0000 L CNN
F 1 "10KE,0805" V 2350 4950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2490 5140 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 2450 5150 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 2450 5150 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 2450 5150 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 2450 5150 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 2450 5150 50  0001 C CNN "Maufaturer"
	1    2450 5150
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R34
U 1 1 5E31A798
P 2650 5150
F 0 "R34" H 2650 5300 50  0000 L CNN
F 1 "10KE,0805" H 2650 5000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2690 5140 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 2650 5150 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 2650 5150 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 2650 5150 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 2650 5150 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 2650 5150 50  0001 C CNN "Maufaturer"
	1    2650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5000 1500 4800
Wire Wire Line
	1500 4800 2050 4800
Wire Wire Line
	2050 4800 2050 4900
Connection ~ 1500 4800
Wire Wire Line
	1500 4800 1500 4750
Wire Wire Line
	2050 5100 2050 5200
Wire Wire Line
	2450 5300 2450 5750
Wire Wire Line
	2450 4850 2650 4850
Wire Wire Line
	2450 4850 2450 4750
Connection ~ 2450 4850
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR056
U 1 1 5E345B7F
P 2450 4750
F 0 "#PWR056" H 2600 4700 50  0001 C CNN
F 1 "V3P3" H 2455 4925 50  0000 C CNN
F 2 "" H 2450 4750 50  0001 C CNN
F 3 "" H 2450 4750 50  0001 C CNN
	1    2450 4750
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  7750 500  500 
Text Notes 1750 750  0    100  ~ 20
SKT32E - QSPI FLASH INTERFACE\n
Text Notes 1100 4550 0    100  ~ 20
SKT32E - I2C EEPROM \nINTERFACE\n\n
Text Notes 6700 750  0    100  ~ 20
LEVEL TRANSLATOR FOR ARDUINO HEADER\n
Wire Notes Line
	11200 500  11200 6500
Wire Notes Line
	500  500  11200 500 
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR079
U 1 1 5DCCD713
P 7700 5850
F 0 "#PWR079" H 7850 5800 50  0001 C CNN
F 1 "V3P3" H 7705 6025 50  0000 C CNN
F 2 "" H 7700 5850 50  0001 C CNN
F 3 "" H 7700 5850 50  0001 C CNN
	1    7700 5850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:VREF_AH-aardonyx-Aardonyx-rescue #PWR076
U 1 1 5DCD16BF
P 6950 1050
F 0 "#PWR076" H 7100 1000 50  0001 C CNN
F 1 "VREF_AH" H 6955 1225 50  0000 C CNN
F 2 "" H 6950 1050 50  0001 C CNN
F 3 "" H 6950 1050 50  0001 C CNN
	1    6950 1050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V5P0-aardonyx #PWR080
U 1 1 5DCD1AC5
P 8000 5850
F 0 "#PWR080" H 8150 5800 50  0001 C CNN
F 1 "V5P0" H 8005 6025 50  0000 C CNN
F 2 "" H 8000 5850 50  0001 C CNN
F 3 "" H 8000 5850 50  0001 C CNN
	1    8000 5850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:VREF_AH-aardonyx-Aardonyx-rescue #PWR089
U 1 1 5DCDE768
P 9900 1100
F 0 "#PWR089" H 10050 1050 50  0001 C CNN
F 1 "VREF_AH" H 9905 1275 50  0000 C CNN
F 2 "" H 9900 1100 50  0001 C CNN
F 3 "" H 9900 1100 50  0001 C CNN
	1    9900 1100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:VREF_AH-aardonyx-Aardonyx-rescue #PWR081
U 1 1 5DCEB777
P 8300 5850
F 0 "#PWR081" H 8450 5800 50  0001 C CNN
F 1 "VREF_AH" H 8305 6025 50  0000 C CNN
F 2 "" H 8300 5850 50  0001 C CNN
F 3 "" H 8300 5850 50  0001 C CNN
	1    8300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5850 8000 6150
Wire Wire Line
	7700 5850 7700 5950
Wire Wire Line
	8300 5850 8300 6050
$Comp
L Aardonyx-rescue:Conn_1x6_F-aardonyx J14
U 1 1 5DD23867
P 9700 5900
F 0 "J14" H 9650 6200 50  0000 L CNN
F 1 "Conn_1x6_F" H 9550 5500 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 9700 5900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/75915-306LF/609-3558-ND/1523584" H 9700 5900 50  0001 C CNN
F 4 "CONN RCPT 6POS 0.1 GOLD PCB" H 9700 5900 50  0001 C CNN "Description"
F 5 "609-3558-ND" H 9700 5900 50  0001 C CNN "Digikey PartNumber"
F 6 "75915-306LF" H 9700 5900 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 9700 5900 50  0001 C CNN "Maufaturer"
	1    9700 5900
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:Conn_1x8-aardonyx J16
U 1 1 5DD2482F
P 10750 5900
F 0 "J16" H 10700 6300 50  0000 L CNN
F 1 "Conn_1x8_F" H 10600 5400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 10750 5900 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=%0968685-308LF" H 10750 5900 50  0001 C CNN
F 4 "CONN RCPT 8POS 0.1 GOLD PCB" H 10750 5900 50  0001 C CNN "Description"
F 5 "609-3589-ND" H 10750 5900 50  0001 C CNN "Digikey PartNumber"
F 6 "68685-308LF" H 10750 5900 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 10750 5900 50  0001 C CNN "Maufaturer"
	1    10750 5900
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:Conn_1x10-aardonyx J15
U 1 1 5DD25582
P 10750 4750
F 0 "J15" H 10700 5250 50  0000 L CNN
F 1 "Conn_1x10" H 10600 4150 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 10750 4750 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/68685-310LF/609-3584-ND/1525202" H 10750 4750 50  0001 C CNN
F 4 "CONN RCPT 10POS 0.1 GOLD PCB" H 10750 4750 50  0001 C CNN "Description"
F 5 "609-3584-ND" H 10750 4750 50  0001 C CNN "Digikey PartNumber"
F 6 "68685-310LF" H 10750 4750 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 10750 4750 50  0001 C CNN "Maufaturer"
	1    10750 4750
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:Conn_1x8-aardonyx J13
U 1 1 5DD27E26
P 9650 4900
F 0 "J13" H 9600 5300 50  0000 L CNN
F 1 "Conn_1x8_F" H 9550 4400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 9650 4900 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=%0968685-308LF" H 9650 4900 50  0001 C CNN
F 4 "CONN RCPT 8POS 0.1 GOLD PCB" H 9650 4900 50  0001 C CNN "Description"
F 5 "609-3589-ND" H 9650 4900 50  0001 C CNN "Digikey PartNumber"
F 6 "68685-308LF" H 9650 4900 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 9650 4900 50  0001 C CNN "Maufaturer"
F 8 "609-3589-ND" H 9650 4900 50  0001 C CNN "Field4"
	1    9650 4900
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:Conn_1x3_M-aardonyx J12
U 1 1 5DDA74A4
P 8750 6050
F 0 "J12" H 8750 6250 50  0000 L CNN
F 1 "Conn_1x3_M" H 8400 5850 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8750 6050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/68000-203HLF/609-3464-ND/2023305" H 8750 6050 50  0001 C CNN
F 4 "CONN HEADER VERT 3POS 2.54MM" H 8750 6050 50  0001 C CNN "Description"
F 5 "609-3464-ND" H 8750 6050 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-203HLF" H 8750 6050 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 8750 6050 50  0001 C CNN "Maufaturer"
	1    8750 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 6150 8550 6150
Wire Wire Line
	7700 5950 8550 5950
Wire Wire Line
	8300 6050 8550 6050
Text Label 10200 5600 0    50   ~ 0
AH_IO_7
Text Label 10200 5700 0    50   ~ 0
AH_IO_6
Text Label 10200 5800 0    50   ~ 0
AH_IO_5
Text Label 10200 5900 0    50   ~ 0
AH_IO_4
Text Label 10200 6000 0    50   ~ 0
AH_IO_3
Text Label 10200 6100 0    50   ~ 0
AH_IO_2
Text Label 10200 6200 0    50   ~ 0
AH_IO_1
Text Label 10200 6300 0    50   ~ 0
AH_IO_0
Text Label 10200 5250 0    50   ~ 0
AH_IO_8
Text Label 10200 5150 0    50   ~ 0
AH_IO_9
Text Label 10200 5050 0    50   ~ 0
AH_IO_10
Text Label 10200 4950 0    50   ~ 0
AH_IO_11
Text Label 10200 4850 0    50   ~ 0
AH_IO_12
Text Label 10200 4750 0    50   ~ 0
AH_IO_13
Text Label 10200 4350 0    39   ~ 0
AH_I2C1_SCL
Text Label 10200 4450 0    39   ~ 0
AH_I2C1_SDA
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR084
U 1 1 5DE3185D
P 8700 5150
F 0 "#PWR084" H 8700 4900 50  0001 C CNN
F 1 "GND" H 8705 4977 50  0000 C CNN
F 2 "" H 8700 5150 50  0001 C CNN
F 3 "" H 8700 5150 50  0001 C CNN
	1    8700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4650 9950 4700
Wire Wire Line
	9950 4650 10550 4650
Wire Wire Line
	9950 4550 9950 4500
Wire Wire Line
	9950 4550 10550 4550
$Comp
L Aardonyx-rescue:VREF_AH-aardonyx-Aardonyx-rescue #PWR085
U 1 1 5DE472F1
P 8950 4550
F 0 "#PWR085" H 9100 4500 50  0001 C CNN
F 1 "VREF_AH" H 8955 4725 50  0000 C CNN
F 2 "" H 8950 4550 50  0001 C CNN
F 3 "" H 8950 4550 50  0001 C CNN
	1    8950 4550
	1    0    0    -1  
$EndComp
Text Label 9200 4800 0    50   ~ 0
RESET
$Comp
L Aardonyx-rescue:V5P0-aardonyx #PWR082
U 1 1 5DE4FA75
P 8500 4950
F 0 "#PWR082" H 8650 4900 50  0001 C CNN
F 1 "V5P0" H 8505 5125 50  0000 C CNN
F 2 "" H 8500 4950 50  0001 C CNN
F 3 "" H 8500 4950 50  0001 C CNN
	1    8500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5150 8700 5100
Wire Wire Line
	8700 5100 9300 5100
Wire Wire Line
	9300 5100 9300 5200
Wire Wire Line
	9300 5200 9450 5200
Connection ~ 9300 5100
Wire Wire Line
	9300 5100 9450 5100
Wire Wire Line
	8950 4550 8950 4700
Wire Wire Line
	8950 4700 9450 4700
Wire Wire Line
	9450 4600 9050 4600
Wire Wire Line
	9450 5300 9050 5300
Text Label 9250 5700 0    50   ~ 0
A0
Text Label 9250 5800 0    50   ~ 0
A1
Text Label 9250 5900 0    50   ~ 0
A2
Text Label 9250 6000 0    50   ~ 0
A3
Text Label 9250 6100 0    50   ~ 0
A4
Text Label 9250 6200 0    50   ~ 0
A5
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR091
U 1 1 5EC0024C
P 9950 4700
F 0 "#PWR091" H 9950 4450 50  0001 C CNN
F 1 "GND" H 9955 4527 50  0000 C CNN
F 2 "" H 9950 4700 50  0001 C CNN
F 3 "" H 9950 4700 50  0001 C CNN
	1    9950 4700
	1    0    0    -1  
$EndComp
Text Label 5350 5950 2    39   ~ 0
SPI0_MOSI
Text Label 5350 5850 2    39   ~ 0
SPI0_MISO
Text Label 5350 5750 2    39   ~ 0
SPI0_CLK
Text Label 5350 6050 2    39   ~ 0
SPI0_nCS
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR065
U 1 1 5F693FFB
P 4400 4850
F 0 "#PWR065" H 4550 4800 50  0001 C CNN
F 1 "V3P3" H 4405 5025 50  0000 C CNN
F 2 "" H 4400 4850 50  0001 C CNN
F 3 "" H 4400 4850 50  0001 C CNN
	1    4400 4850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C50
U 1 1 5F6A55DE
P 4900 5050
F 0 "C50" H 4992 5096 50  0000 L CNN
F 1 "0.1UF,0402" H 4992 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4900 5050 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 4900 5050 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 4900 5050 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 4900 5050 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 4900 5050 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 4900 5050 50  0001 C CNN "Maufaturer"
	1    4900 5050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR068
U 1 1 5F6A55E4
P 4900 5200
F 0 "#PWR068" H 4900 4950 50  0001 C CNN
F 1 "GND" H 4905 5027 50  0000 C CNN
F 2 "" H 4900 5200 50  0001 C CNN
F 3 "" H 4900 5200 50  0001 C CNN
	1    4900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4850 4400 4900
Wire Wire Line
	4400 4900 4900 4900
Wire Wire Line
	4900 4900 4900 4950
Connection ~ 4400 4900
Wire Wire Line
	4400 4900 4400 5250
$Comp
L Aardonyx-rescue:R_US-aardonyx R35
U 1 1 5F6D0204
P 5450 6400
F 0 "R35" V 5550 6350 50  0000 L CNN
F 1 "10KE,0805" V 5350 6300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5490 6390 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 5450 6400 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 5450 6400 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 5450 6400 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 5450 6400 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 5450 6400 50  0001 C CNN "Maufaturer"
	1    5450 6400
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR069
U 1 1 5F6D89CB
P 5650 6350
F 0 "#PWR069" H 5800 6300 50  0001 C CNN
F 1 "V3P3" H 5655 6525 50  0000 C CNN
F 2 "" H 5650 6350 50  0001 C CNN
F 3 "" H 5650 6350 50  0001 C CNN
	1    5650 6350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR064
U 1 1 5F710746
P 4300 6650
F 0 "#PWR064" H 4300 6400 50  0001 C CNN
F 1 "GND" H 4305 6477 50  0000 C CNN
F 2 "" H 4300 6650 50  0001 C CNN
F 3 "" H 4300 6650 50  0001 C CNN
	1    4300 6650
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C49
U 1 1 5F723E3A
P 3700 5050
F 0 "C49" H 3792 5096 50  0000 L CNN
F 1 "0.1UF,0402" H 3792 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3700 5050 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 3700 5050 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 3700 5050 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 3700 5050 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 3700 5050 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 3700 5050 50  0001 C CNN "Maufaturer"
	1    3700 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 4900 3700 4900
Wire Wire Line
	3700 4900 3700 4950
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR062
U 1 1 5F72D614
P 3700 5200
F 0 "#PWR062" H 3700 4950 50  0001 C CNN
F 1 "GND" H 3705 5027 50  0000 C CNN
F 2 "" H 3700 5200 50  0001 C CNN
F 3 "" H 3700 5200 50  0001 C CNN
	1    3700 5200
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR090
U 1 1 5F7AE970
P 9950 4500
F 0 "#PWR090" H 10100 4450 50  0001 C CNN
F 1 "V3P3" H 9955 4675 50  0000 C CNN
F 2 "" H 9950 4500 50  0001 C CNN
F 3 "" H 9950 4500 50  0001 C CNN
	1    9950 4500
	-1   0    0    -1  
$EndComp
Text Label 3450 5550 0    50   ~ 0
A0
Text Label 3450 5650 0    50   ~ 0
A1
Text Label 3450 5750 0    50   ~ 0
A2
Text Label 3450 5850 0    50   ~ 0
A3
Text Label 3450 5950 0    50   ~ 0
A4
Text Label 3450 6050 0    50   ~ 0
A5
Wire Notes Line
	500  3950 11200 3950
Wire Notes Line
	5850 3950 5850 7750
Text Notes 7100 4200 0    100  ~ 20
SKT32E - ARDUINO COMPATIBLE HEADERS\n
Text Notes 3650 4500 0    100  ~ 20
SKT32E SPI - 8 CHANNEL \nADC INTERFACE\n
Text HLabel 2300 7100 0    50   BiDi ~ 0
I2C0_SDA
Connection ~ 2150 1950
Connection ~ 1900 2050
Connection ~ 1650 2150
Wire Wire Line
	3250 1750 3650 1750
Wire Wire Line
	6200 2250 5900 2250
Wire Wire Line
	5900 2350 6200 2350
Wire Wire Line
	5900 2450 6200 2450
Wire Wire Line
	6200 2550 5900 2550
Wire Wire Line
	5900 2650 6200 2650
Wire Wire Line
	6200 2750 5900 2750
Wire Wire Line
	5900 2850 6200 2850
Wire Wire Line
	6200 2950 5900 2950
Entry Wire Line
	5800 2350 5900 2250
Entry Wire Line
	5800 2450 5900 2350
Entry Wire Line
	5800 2550 5900 2450
Entry Wire Line
	5800 2650 5900 2550
Entry Wire Line
	5800 2750 5900 2650
Entry Wire Line
	5800 2850 5900 2750
Entry Wire Line
	5800 2950 5900 2850
Entry Wire Line
	5800 3050 5900 2950
Wire Wire Line
	9150 2300 8750 2300
Wire Wire Line
	8750 2400 9150 2400
Wire Wire Line
	9150 2500 8750 2500
Wire Wire Line
	8750 2600 9150 2600
Wire Wire Line
	9150 2700 8750 2700
Wire Wire Line
	8750 2800 9150 2800
Wire Wire Line
	9150 2900 8750 2900
Wire Wire Line
	8750 3000 9150 3000
Entry Wire Line
	8750 2300 8650 2200
Entry Wire Line
	8750 2400 8650 2300
Entry Wire Line
	8750 2500 8650 2400
Entry Wire Line
	8750 2600 8650 2500
Entry Wire Line
	8750 2700 8650 2600
Entry Wire Line
	8750 2800 8650 2700
Text HLabel 8650 2150 0    50   BiDi ~ 0
IO_[8..13]
Text HLabel 8750 2900 0    50   BiDi ~ 0
I2C1_SCL
Text HLabel 8750 3000 0    50   BiDi ~ 0
I2C1_SDA
Text HLabel 5400 5750 2    50   Input ~ 0
SPI0_CLK
Text HLabel 5400 5850 2    50   Output ~ 0
SPI0_MISO
Text HLabel 5400 5950 2    50   Input ~ 0
SPI0_MOSI
Text HLabel 5400 6050 2    50   Input ~ 0
SPI0_nCS
Wire Wire Line
	5000 5950 5400 5950
Wire Wire Line
	5000 5850 5400 5850
Wire Wire Line
	5000 5750 5400 5750
Wire Wire Line
	5000 6050 5250 6050
Wire Wire Line
	5600 6400 5650 6400
Wire Wire Line
	5650 6400 5650 6350
Wire Wire Line
	5300 6400 5250 6400
Wire Wire Line
	5250 6400 5250 6050
Connection ~ 5250 6050
Wire Wire Line
	5250 6050 5400 6050
Wire Wire Line
	9450 4800 9200 4800
Text HLabel 9200 4800 0    50   Output ~ 0
RESET_AH
Wire Wire Line
	7400 2250 7700 2250
Wire Wire Line
	7400 2350 7700 2350
Wire Wire Line
	7400 2450 7700 2450
Wire Wire Line
	7700 2550 7400 2550
Wire Wire Line
	7400 2650 7700 2650
Wire Wire Line
	7700 2750 7400 2750
Wire Wire Line
	7400 2850 7700 2850
Wire Wire Line
	7700 2950 7400 2950
Wire Wire Line
	10350 2300 10750 2300
Wire Wire Line
	10750 2400 10350 2400
Wire Wire Line
	10350 2500 10750 2500
Wire Wire Line
	10750 2600 10350 2600
Wire Wire Line
	10350 2700 10750 2700
Wire Wire Line
	10750 2800 10350 2800
Wire Wire Line
	10350 2900 10750 2900
Wire Wire Line
	10750 3000 10350 3000
Wire Wire Line
	9250 5700 9500 5700
Wire Wire Line
	9500 5800 9250 5800
Wire Wire Line
	9250 5900 9500 5900
Wire Wire Line
	9500 6000 9250 6000
Wire Wire Line
	9250 6100 9500 6100
Wire Wire Line
	9500 6200 9250 6200
Wire Wire Line
	10200 5600 10550 5600
Wire Wire Line
	10550 5700 10200 5700
Wire Wire Line
	10200 5800 10550 5800
Wire Wire Line
	10550 5900 10200 5900
Wire Wire Line
	10200 6000 10550 6000
Wire Wire Line
	10550 6100 10200 6100
Wire Wire Line
	10200 6200 10550 6200
Wire Wire Line
	10550 6300 10200 6300
Wire Wire Line
	10200 4350 10550 4350
Wire Wire Line
	10550 4450 10200 4450
Wire Wire Line
	10200 4750 10550 4750
Wire Wire Line
	10550 4850 10200 4850
Wire Wire Line
	10200 4950 10550 4950
Wire Wire Line
	10550 5050 10200 5050
Wire Wire Line
	10200 5150 10550 5150
Wire Notes Line
	500  7750 6950 7750
Wire Wire Line
	10550 5250 10200 5250
Text HLabel 5800 2250 0    50   BiDi ~ 0
IO_[0..7]
Text Label 3450 6150 0    50   ~ 0
A7
Text Label 3450 6250 0    50   ~ 0
A8
Wire Wire Line
	2650 5000 2650 4850
Wire Wire Line
	2650 5300 2650 5550
Wire Wire Line
	6450 4400 7050 4400
Wire Wire Line
	6450 4600 7050 4600
Wire Wire Line
	7050 4500 6450 4500
Text Label 6600 4400 0    39   ~ 0
SPI1_nCS
Text Label 6600 4700 0    39   ~ 0
SPI1_CLK
Text Label 6600 4600 0    39   ~ 0
SPI1_MISO
Text Label 6600 4500 0    39   ~ 0
SPI1_MOSI
Text HLabel 6450 4400 0    50   Input ~ 0
SPI1_nCS
Text HLabel 6450 4600 0    50   Output ~ 0
SPI1_MISO
Text HLabel 6450 4500 0    50   Input ~ 0
SPI1_MOSI
$Comp
L Aardonyx-rescue:Conn_1x6_F-aardonyx J10
U 1 1 628F7F78
P 7250 4600
F 0 "J10" H 7200 4900 50  0000 L CNN
F 1 "Conn_1x6_F" H 7100 4200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 7250 4600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/75915-306LF/609-3558-ND/1523584" H 7250 4600 50  0001 C CNN
F 4 "CONN RCPT 6POS 0.1 GOLD PCB" H 7250 4600 50  0001 C CNN "Description"
F 5 "609-3558-ND" H 7250 4600 50  0001 C CNN "Digikey PartNumber"
F 6 "75915-306LF" H 7250 4600 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 7250 4600 50  0001 C CNN "Maufaturer"
	1    7250 4600
	1    0    0    -1  
$EndComp
Text HLabel 6450 4700 0    50   Input ~ 0
SPI1_CLK
Wire Wire Line
	6450 4700 7050 4700
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR083
U 1 1 5DE4FA6F
P 8700 4850
F 0 "#PWR083" H 8850 4800 50  0001 C CNN
F 1 "V3P3" H 8705 5025 50  0000 C CNN
F 2 "" H 8700 4850 50  0001 C CNN
F 3 "" H 8700 4850 50  0001 C CNN
	1    8700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4950 8500 5000
Wire Wire Line
	8500 5000 9450 5000
Wire Wire Line
	8700 4850 8700 4900
Wire Wire Line
	8700 4900 9450 4900
Wire Notes Line
	3300 3950 3300 7750
Wire Notes Line
	5400 500  5400 3950
$Comp
L Aardonyx-rescue:Conn_1x8-aardonyx J9
U 1 1 62CC8452
P 4900 1750
F 0 "J9" H 4850 2150 50  0000 L CNN
F 1 "Conn_1x8" H 4750 1250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4900 1750 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=68000-408HLF" H 4900 1750 50  0001 C CNN
F 4 "CONN HEADER VERT 8POS 2.54MM" H 4900 1750 50  0001 C CNN "Description"
F 5 "609-3264-ND" H 4900 1750 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-408HLF" H 4900 1750 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 4900 1750 50  0001 C CNN "Maufaturer"
	1    4900 1750
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR066
U 1 1 62D5EE95
P 4650 1350
F 0 "#PWR066" H 4800 1300 50  0001 C CNN
F 1 "V3P3" H 4655 1525 50  0000 C CNN
F 2 "" H 4650 1350 50  0001 C CNN
F 3 "" H 4650 1350 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR067
U 1 1 62D6B15F
P 4650 2250
F 0 "#PWR067" H 4650 2000 50  0001 C CNN
F 1 "GND" H 4655 2077 50  0000 C CNN
F 2 "" H 4650 2250 50  0001 C CNN
F 3 "" H 4650 2250 50  0001 C CNN
	1    4650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1350 4650 1450
Wire Wire Line
	4650 1450 4700 1450
Wire Wire Line
	4700 2150 4650 2150
Wire Wire Line
	4650 2150 4650 2250
$Comp
L Aardonyx-rescue:Conn_01x04-aardonyx J7
U 1 1 62DE9728
P 2900 7000
F 0 "J7" H 2980 6992 50  0000 L CNN
F 1 "Conn_1x4" H 2800 6700 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2900 7000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/68000-404HLF/609-3262-ND/1878463" H 2900 7000 50  0001 C CNN
F 4 "CONN HEADER VERT 4POS 2.54MM" H 2900 7000 50  0001 C CNN "Description"
F 5 "609-3262-ND" H 2900 7000 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-404HLF" H 2900 7000 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 2900 7000 50  0001 C CNN "Maufaturer"
	1    2900 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7000 2700 7000
Wire Wire Line
	2700 7100 2300 7100
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR053
U 1 1 5E2A97E9
P 1500 6400
F 0 "#PWR053" H 1500 6150 50  0001 C CNN
F 1 "GND" H 1505 6227 50  0000 C CNN
F 2 "" H 1500 6400 50  0001 C CNN
F 3 "" H 1500 6400 50  0001 C CNN
	1    1500 6400
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR060
U 1 1 62E5EE47
P 2650 7300
F 0 "#PWR060" H 2650 7050 50  0001 C CNN
F 1 "GND" H 2655 7127 50  0000 C CNN
F 2 "" H 2650 7300 50  0001 C CNN
F 3 "" H 2650 7300 50  0001 C CNN
	1    2650 7300
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR059
U 1 1 62E6C197
P 2650 6800
F 0 "#PWR059" H 2800 6750 50  0001 C CNN
F 1 "V3P3" H 2655 6975 50  0000 C CNN
F 2 "" H 2650 6800 50  0001 C CNN
F 3 "" H 2650 6800 50  0001 C CNN
	1    2650 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7300 2650 7200
Wire Wire Line
	2650 7200 2700 7200
Wire Wire Line
	2650 6800 2650 6900
Wire Wire Line
	2650 6900 2700 6900
Wire Wire Line
	4300 1850 4700 1850
Wire Wire Line
	4300 1550 4700 1550
Text Label 4300 1550 0    39   ~ 0
QSPI0_NCS_H
Text HLabel 1250 1750 0    50   BiDi ~ 0
QSPI0_IO0
Text HLabel 1250 2150 0    50   BiDi ~ 0
QSPI0_IO3
Text HLabel 1250 2050 0    50   BiDi ~ 0
QSPI0_IO2
Text HLabel 1250 1850 0    50   Input ~ 0
QSPI0_CLK
Text HLabel 2950 3100 0    50   Input ~ 0
QSPI0_NCS
Text Label 4300 1650 0    39   ~ 0
QSPI0_CLK
Wire Wire Line
	4700 1650 4300 1650
Text Label 2950 3100 0    39   ~ 0
QSPI0_NCS
$Comp
L Aardonyx-rescue:Conn_1x3_M-aardonyx J8
U 1 1 630DABF4
P 3550 3200
F 0 "J8" H 3550 3400 50  0000 L CNN
F 1 "Conn_1x3_M" H 3200 3000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3550 3200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/68000-203HLF/609-3464-ND/2023305" H 3550 3200 50  0001 C CNN
F 4 "CONN HEADER VERT 3POS 2.54MM" H 3550 3200 50  0001 C CNN "Description"
F 5 "609-3464-ND" H 3550 3200 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-203HLF" H 3550 3200 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 3550 3200 50  0001 C CNN "Maufaturer"
	1    3550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1750 2250 1750
Wire Wire Line
	1250 1850 2250 1850
Wire Wire Line
	1250 1950 2150 1950
Wire Wire Line
	1250 2050 1900 2050
Wire Wire Line
	1250 2150 1650 2150
Text HLabel 3650 1750 2    50   BiDi ~ 0
QSPI0_IO1
Wire Wire Line
	2950 3100 3350 3100
Wire Wire Line
	2950 3200 3350 3200
Text Label 2950 3200 0    39   ~ 0
QSPI0_NCS_F
Wire Wire Line
	2950 3300 3350 3300
Text Label 2950 3300 0    39   ~ 0
QSPI0_NCS_H
Text HLabel 2300 7000 0    50   BiDi ~ 0
I2C0_SCL
Text Label 2300 7100 0    39   ~ 0
I2C0_SDA
Text Label 6650 5700 0    39   ~ 0
IO_15
Text Label 6650 5600 0    39   ~ 0
IO_14
Text HLabel 6650 5600 0    50   BiDi ~ 0
IO_14
Text HLabel 6650 5700 0    50   BiDi ~ 0
IO_15
$Comp
L Aardonyx-rescue:Conn_1x6_F-aardonyx J11
U 1 1 638C40B5
P 7250 5600
F 0 "J11" H 7200 5900 50  0000 L CNN
F 1 "Conn_1x6_F" H 7100 5200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 7250 5600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/75915-306LF/609-3558-ND/1523584" H 7250 5600 50  0001 C CNN
F 4 "CONN RCPT 6POS 0.1 GOLD PCB" H 7250 5600 50  0001 C CNN "Description"
F 5 "609-3558-ND" H 7250 5600 50  0001 C CNN "Digikey PartNumber"
F 6 "75915-306LF" H 7250 5600 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 7250 5600 50  0001 C CNN "Maufaturer"
	1    7250 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5600 7050 5600
Wire Wire Line
	6650 5700 7050 5700
Wire Wire Line
	7050 4900 6850 4900
Wire Wire Line
	6850 4900 6850 5000
Wire Wire Line
	6850 5000 6550 5000
Wire Wire Line
	6550 5000 6550 4950
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR071
U 1 1 62927744
P 6550 4950
F 0 "#PWR071" H 6700 4900 50  0001 C CNN
F 1 "V3P3" H 6555 5125 50  0000 C CNN
F 2 "" H 6550 4950 50  0001 C CNN
F 3 "" H 6550 4950 50  0001 C CNN
	1    6550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4800 7050 4800
Wire Wire Line
	6950 5050 6950 4800
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR077
U 1 1 6290F3F8
P 6950 5050
F 0 "#PWR077" H 6950 4800 50  0001 C CNN
F 1 "GND" H 6955 4877 50  0000 C CNN
F 2 "" H 6950 5050 50  0001 C CNN
F 3 "" H 6950 5050 50  0001 C CNN
	1    6950 5050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR073
U 1 1 639F397E
P 6650 6000
F 0 "#PWR073" H 6800 5950 50  0001 C CNN
F 1 "V3P3" H 6655 6175 50  0000 C CNN
F 2 "" H 6650 6000 50  0001 C CNN
F 3 "" H 6650 6000 50  0001 C CNN
	1    6650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 6000 6650 6050
Wire Wire Line
	6650 6050 6850 6050
Wire Wire Line
	6850 6050 6850 5800
Wire Wire Line
	6850 5800 7050 5800
Wire Wire Line
	7050 5900 6900 5900
Wire Wire Line
	6900 5900 6900 6150
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR075
U 1 1 63A2CC9B
P 6900 6150
F 0 "#PWR075" H 6900 5900 50  0001 C CNN
F 1 "GND" H 6905 5977 50  0000 C CNN
F 2 "" H 6900 6150 50  0001 C CNN
F 3 "" H 6900 6150 50  0001 C CNN
	1    6900 6150
	1    0    0    -1  
$EndComp
Text Label 6650 5400 0    50   ~ 0
A7
Text Label 6650 5500 0    50   ~ 0
A8
Wire Wire Line
	6650 5400 7050 5400
Wire Wire Line
	6650 5500 7050 5500
Text Label 2300 7000 0    39   ~ 0
I2C0_SCL
Text Label 2050 5550 0    39   ~ 0
I2C0_SCL
Text Label 2050 5750 0    39   ~ 0
I2C0_SDA
Wire Wire Line
	4300 1950 4700 1950
Wire Wire Line
	4300 2050 4700 2050
Wire Wire Line
	4300 1750 4700 1750
Text Label 4300 1750 0    39   ~ 0
QSPI0_IO0
Text Label 4300 1850 0    39   ~ 0
QSPI0_IO1
Text Label 4300 2050 0    39   ~ 0
QSPI0_IO3
Text Label 4300 1950 0    39   ~ 0
QSPI0_IO2
Text Label 3650 1750 2    39   ~ 0
QSPI0_IO1
Text Label 1250 1750 0    39   ~ 0
QSPI0_IO0
$Comp
L Aardonyx-rescue:ADC108S102CIMTX_NOPB-aardonyx U7
U 1 1 5E6CD7B1
P 4300 5900
F 0 "U7" H 3900 6400 50  0000 C CNN
F 1 "ADC108S102CIMTX" H 4750 5400 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 4300 5900 50  0001 L BNN
F 3 "https://www.digikey.in/product-detail/en/texas-instruments/ADC108S102CIMTX-NOPB/296-43835-1-ND/5875706" H 4300 5900 50  0001 L BNN
F 4 "ADC108S102CIMTX/NOPB" H 4300 5900 50  0001 C CNN "Description"
F 5 "296-43835-1-ND" H 4300 5900 50  0001 C CNN "Digikey PartNumber"
F 6 "ADC108S102CIMTX/NOPB" H 4300 5900 50  0001 C CNN "Manufactured Part Number"
F 7 "Texas Instruments" H 4300 5900 50  0001 C CNN "Maufaturer"
	1    4300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5550 3450 5550
Wire Wire Line
	3450 5650 3600 5650
Wire Wire Line
	3600 5750 3450 5750
Wire Wire Line
	3450 5850 3600 5850
Wire Wire Line
	3600 5950 3450 5950
Wire Wire Line
	3450 6050 3600 6050
Wire Wire Line
	3600 6150 3450 6150
Wire Wire Line
	3450 6250 3600 6250
Wire Wire Line
	4200 6550 4200 6600
Wire Wire Line
	4200 6600 4300 6600
Wire Wire Line
	4400 6600 4400 6550
Wire Wire Line
	4300 6650 4300 6600
Connection ~ 4300 6600
Wire Wire Line
	4300 6600 4400 6600
Wire Wire Line
	4900 5150 4900 5200
Wire Wire Line
	4200 4900 4200 5250
Wire Wire Line
	3700 5150 3700 5200
Wire Wire Line
	4200 4850 4200 4900
Connection ~ 4200 4900
NoConn ~ 9050 4600
NoConn ~ 9050 5300
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0145
U 1 1 5EE696CA
P 9150 1550
F 0 "#PWR0145" H 9150 1300 50  0001 C CNN
F 1 "GND" H 9155 1377 50  0000 C CNN
F 2 "" H 9150 1550 50  0001 C CNN
F 3 "" H 9150 1550 50  0001 C CNN
	1    9150 1550
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0146
U 1 1 5EE6C80F
P 10500 1550
F 0 "#PWR0146" H 10500 1300 50  0001 C CNN
F 1 "GND" H 10505 1377 50  0000 C CNN
F 2 "" H 10500 1550 50  0001 C CNN
F 3 "" H 10500 1550 50  0001 C CNN
	1    10500 1550
	1    0    0    -1  
$EndComp
Text Notes 1750 2600 0    50   ~ 0
256Mb - QSPI Flash\n16 pin SOIC
Text Notes 1950 6000 0    50   ~ 0
1Mb I2C Serial EEPROM\n8PIN - SOIC
Text Notes 3450 6550 0    50   ~ 0
8 Ch, 10bit ADC\n16pin TSSOP
$Comp
L Aardonyx-rescue:VAC-Aardonyx-rescue #PWR0156
U 1 1 5F0884B4
P 4200 4850
F 0 "#PWR0156" H 4350 4800 50  0001 C CNN
F 1 "VAC" H 4205 5025 50  0000 C CNN
F 2 "" H 4200 4850 50  0001 C CNN
F 3 "" H 4200 4850 50  0001 C CNN
	1    4200 4850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0158
U 1 1 5F08B124
P 4250 7200
F 0 "#PWR0158" H 4400 7150 50  0001 C CNN
F 1 "V3P3" H 4255 7375 50  0000 C CNN
F 2 "" H 4250 7200 50  0001 C CNN
F 3 "" H 4250 7200 50  0001 C CNN
	1    4250 7200
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:V5P0-aardonyx #PWR0157
U 1 1 5F08B12A
P 4250 7000
F 0 "#PWR0157" H 4400 6950 50  0001 C CNN
F 1 "V5P0" H 4255 7175 50  0000 C CNN
F 2 "" H 4250 7000 50  0001 C CNN
F 3 "" H 4250 7000 50  0001 C CNN
	1    4250 7000
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:Conn_1x3_M-aardonyx J19
U 1 1 5F09B665
P 5150 7100
F 0 "J19" H 5150 7300 50  0000 L CNN
F 1 "Conn_1x3_M" H 4800 6900 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5150 7100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/68000-203HLF/609-3464-ND/2023305" H 5150 7100 50  0001 C CNN
F 4 "CONN HEADER VERT 3POS 2.54MM" H 5150 7100 50  0001 C CNN "Description"
F 5 "609-3464-ND" H 5150 7100 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-203HLF" H 5150 7100 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 5150 7100 50  0001 C CNN "Maufaturer"
	1    5150 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 7100 4950 7100
Wire Wire Line
	4250 7000 4950 7000
Wire Wire Line
	4250 7200 4950 7200
$Comp
L Aardonyx-rescue:VAC-Aardonyx-rescue #PWR0159
U 1 1 5F100A5C
P 4550 7100
F 0 "#PWR0159" H 4700 7050 50  0001 C CNN
F 1 "VAC" V 4555 7229 50  0000 L CNN
F 2 "" H 4550 7100 50  0001 C CNN
F 3 "" H 4550 7100 50  0001 C CNN
	1    4550 7100
	0    -1   -1   0   
$EndComp
Text Notes 4100 7600 0    50   ~ 0
Short 1 & 2, VAC = 5V\nShort 2 & 3, VAC = 3.3V
Text Notes 2300 3750 0    50   ~ 0
Short 1 & 2, Allow Access to flash from SKT32E\nShort 2 & 3, Allow Access to Flash through J9
Wire Notes Line
	2200 3550 4300 3550
Wire Notes Line
	4300 3800 2200 3800
Wire Notes Line
	2200 3800 2200 3550
Wire Notes Line
	4300 3550 4300 3800
Wire Notes Line
	5250 7400 5250 7650
Wire Notes Line
	5250 7650 3950 7650
Wire Notes Line
	3950 7650 3950 7400
Wire Notes Line
	3950 7400 5250 7400
Wire Bus Line
	8650 2150 8650 2700
Wire Bus Line
	5800 2250 5800 3050
$EndSCHEMATC
