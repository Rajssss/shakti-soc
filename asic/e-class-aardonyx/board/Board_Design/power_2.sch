EESchema Schematic File Version 4
LIBS:Aardonyx-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title "AARDONYX SKT32E DEVELOPMENT BOARD"
Date ""
Rev "R1V0"
Comp "IIT_MADRAS"
Comment1 ""
Comment2 ""
Comment3 "SKT32E - ADM1085 Voltage Sequencer"
Comment4 "SKT32E - 3.3V , 1.8V Power converter"
$EndDescr
Wire Notes Line
	500  500  11200 500 
Wire Notes Line
	11200 500  11200 6500
Wire Notes Line
	11200 6500 6950 6500
Wire Notes Line
	6950 6500 6950 7750
Wire Notes Line
	6950 7750 500  7750
Wire Notes Line
	500  7750 500  500 
Wire Notes Line
	500  3300 11200 3300
Text Notes 2050 3700 0    100  ~ 20
SKT32E PMIC (VOLTAGE SEQUENCER)
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5E7227CF
P 4300 2100
AR Path="/5DB8A7DC/5E7227CF" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5E7227CF" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 4300 1850 50  0001 C CNN
F 1 "GND" H 4305 1927 50  0000 C CNN
F 2 "" H 4300 2100 50  0001 C CNN
F 3 "" H 4300 2100 50  0001 C CNN
	1    4300 2100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C?
U 1 1 5E7227E3
P 4300 1900
AR Path="/5DB8A7DC/5E7227E3" Ref="C?"  Part="1" 
AR Path="/5E6E93B2/5E7227E3" Ref="C56"  Part="1" 
F 0 "C56" H 4392 1946 50  0000 L CNN
F 1 "10UF,1206" H 4392 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4300 1900 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/C1206C106J3RACAUTO/399-15734-1-ND/7427614" H 4300 1900 50  0001 C CNN
F 4 "CAP CER 10UF 25V X7R 1206" H 4300 1900 50  0001 C CNN "Description"
F 5 "399-15734-1-ND" H 4300 1900 50  0001 C CNN "Digikey PartNumber"
F 6 "C1206C106J3RACAUTO" H 4300 1900 50  0001 C CNN "Manufactured Part Number"
F 7 "KEMET" H 4300 1900 50  0001 C CNN "Maufaturer"
	1    4300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2400 3000 2550
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5E722806
P 3000 2550
AR Path="/5DB8A7DC/5E722806" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5E722806" Ref="#PWR098"  Part="1" 
F 0 "#PWR098" H 3000 2300 50  0001 C CNN
F 1 "GND" H 3005 2377 50  0000 C CNN
F 2 "" H 3000 2550 50  0001 C CNN
F 3 "" H 3000 2550 50  0001 C CNN
	1    3000 2550
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5E72280C
P 3000 2250
AR Path="/5DB8A7DC/5E72280C" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5E72280C" Ref="P_R42"  Part="1" 
F 0 "P_R42" H 3068 2296 50  0000 L CNN
F 1 "30.1KE,0805" H 3068 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3040 2240 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB3012V/P30-1KDACT-ND/3075076" H 3000 2250 50  0001 C CNN
F 4 "RES 30.1K OHM 0.1% 1/8W 0805" H 3000 2250 50  0001 C CNN "Description"
F 5 "P30.1KDACT-ND" H 3000 2250 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-6AEB3012V" H 3000 2250 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 3000 2250 50  0001 C CNN "Maufaturer"
	1    3000 2250
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5E722817
P 3000 1850
AR Path="/5DB8A7DC/5E722817" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5E722817" Ref="P_R41"  Part="1" 
F 0 "P_R41" H 3068 1896 50  0000 L CNN
F 1 "169KE,0805" H 3068 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3040 1840 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERA-6AEB1693V/P169KDACT-ND/3074985" H 3000 1850 50  0001 C CNN
F 4 "RES 169K OHM 0.1% 1/8W 0805" H 3000 1850 50  0001 C CNN "Description"
F 5 "P169KDACT-ND" H 3000 1850 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-6AEB1693V" H 3000 1850 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 3000 1850 50  0001 C CNN "Maufaturer"
	1    3000 1850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5E722836
P 1300 1650
AR Path="/5DB8A7DC/5E722836" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5E722836" Ref="#PWR094"  Part="1" 
F 0 "#PWR094" H 1300 1400 50  0001 C CNN
F 1 "GND" H 1305 1477 50  0000 C CNN
F 2 "" H 1300 1650 50  0001 C CNN
F 3 "" H 1300 1650 50  0001 C CNN
	1    1300 1650
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C?
U 1 1 5E722846
P 1300 1500
AR Path="/5DB8A7DC/5E722846" Ref="C?"  Part="1" 
AR Path="/5E6E93B2/5E722846" Ref="C55"  Part="1" 
F 0 "C55" H 1350 1600 50  0000 L CNN
F 1 "4.7UF,1206" V 1150 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1300 1500 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/T491A475K016AT/399-18027-1-ND/819022" H 1300 1500 50  0001 C CNN
F 4 "CAP TANT 4.7UF 10% 16V 1206" H 1300 1500 50  0001 C CNN "Description"
F 5 "399-18027-1-ND" H 1300 1500 50  0001 C CNN "Digikey PartNumber"
F 6 "T491A475K016AT" H 1300 1500 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 1300 1500 50  0001 C CNN "Maufaturer"
	1    1300 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D?
U 1 1 5E7228A5
P 5100 2000
AR Path="/5DB8A7DC/5E7228A5" Ref="D?"  Part="1" 
AR Path="/5E6E93B2/5E7228A5" Ref="D4"  Part="1" 
F 0 "D4" V 5200 1950 50  0000 R CNN
F 1 "LED,1206" V 4850 1950 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5100 2000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/lumex-opto-components-inc/SML-LX1206GW-TR/67-1002-1-ND/270799" H 5100 2000 50  0001 C CNN
F 4 "LED GREEN DIFFUSED 1206 SMD" H 5100 2000 50  0001 C CNN "Description"
F 5 "67-1002-1-ND" H 5100 2000 50  0001 C CNN "Digikey PartNumber"
F 6 "SML-LX1206GW-TR" H 5100 2000 50  0001 C CNN "Manufactured Part Number"
F 7 "Lumex Opto/Components Inc." H 5100 2000 50  0001 C CNN "Maufaturer"
	1    5100 2000
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5E7228B1
P 5100 2400
AR Path="/5DB8A7DC/5E7228B1" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5E7228B1" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 5100 2150 50  0001 C CNN
F 1 "GND" H 5105 2227 50  0000 C CNN
F 2 "" H 5100 2400 50  0001 C CNN
F 3 "" H 5100 2400 50  0001 C CNN
	1    5100 2400
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5E7228B7
P 5100 1550
AR Path="/5DB8A7DC/5E7228B7" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5E7228B7" Ref="P_R44"  Part="1" 
F 0 "P_R44" H 5150 1650 50  0000 L CNN
F 1 "220E,0402" H 5150 1500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5140 1540 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0402FR-07220RL/311-220LRDKR-ND/732459" H 5100 1550 50  0001 C CNN
F 4 "RES SMD 220 OHM 1% 1/16W 0402" H 5100 1550 50  0001 C CNN "Description"
F 5 "311-220LRDKR-ND" H 5100 1550 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0402FR-07220RL" H 5100 1550 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 5100 1550 50  0001 C CNN "Maufaturer"
	1    5100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1700 5100 1850
Wire Wire Line
	5100 2150 5100 2400
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR099
U 1 1 5E72DA50
P 3200 4150
F 0 "#PWR099" H 3350 4100 50  0001 C CNN
F 1 "V3P3" H 3205 4325 50  0000 C CNN
F 2 "" H 3200 4150 50  0001 C CNN
F 3 "" H 3200 4150 50  0001 C CNN
	1    3200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1250 5100 1400
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0103
U 1 1 5E745C1C
P 4300 1550
F 0 "#PWR0103" H 4450 1500 50  0001 C CNN
F 1 "V3P3" H 4305 1725 50  0000 C CNN
F 2 "" H 4300 1550 50  0001 C CNN
F 3 "" H 4300 1550 50  0001 C CNN
	1    4300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4250 2700 4600
Wire Wire Line
	2700 4600 2750 4600
Wire Wire Line
	3750 5150 3750 5300
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5E781EF0
P 3750 5300
AR Path="/5DB8A7DC/5E781EF0" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5E781EF0" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 3750 5050 50  0001 C CNN
F 1 "GND" H 3755 5127 50  0000 C CNN
F 2 "" H 3750 5300 50  0001 C CNN
F 3 "" H 3750 5300 50  0001 C CNN
	1    3750 5300
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C?
U 1 1 5E781EF6
P 3750 5050
AR Path="/5DB8A7DC/5E781EF6" Ref="C?"  Part="1" 
AR Path="/5E6E93B2/5E781EF6" Ref="C57"  Part="1" 
F 0 "C57" H 3842 5096 50  0000 L CNN
F 1 "15PF,0805" H 3842 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3750 5050 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/w%C3%BCrth-elektronik/885012007029/732-7828-1-ND/5454455" H 3750 5050 50  0001 C CNN
F 4 "CAP CER 15PF 25V C0G/NP0 0805" H 3750 5050 50  0001 C CNN "Description"
F 5 "732-7828-1-ND" H 3750 5050 50  0001 C CNN "Digikey PartNumber"
F 6 "885012007029" H 3750 5050 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 3750 5050 50  0001 C CNN "Maufaturer"
	1    3750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4900 3750 4900
Wire Wire Line
	3750 4900 3750 4950
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0108
U 1 1 5E789A61
P 5100 1250
F 0 "#PWR0108" H 5250 1200 50  0001 C CNN
F 1 "V3P3" H 5105 1425 50  0000 C CNN
F 2 "" H 5100 1250 50  0001 C CNN
F 3 "" H 5100 1250 50  0001 C CNN
	1    5100 1250
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5E722879
P 2300 2600
AR Path="/5DB8A7DC/5E722879" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5E722879" Ref="#PWR096"  Part="1" 
F 0 "#PWR096" H 2300 2350 50  0001 C CNN
F 1 "GND" H 2305 2427 50  0000 C CNN
F 2 "" H 2300 2600 50  0001 C CNN
F 3 "" H 2300 2600 50  0001 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
Text Notes 2000 900  0    100  ~ 20
5V TO 3.3V LDO
$Comp
L Aardonyx-rescue:TPS7A7002DDAR-aardonyx U10
U 1 1 5EC15037
P 2300 1950
F 0 "U10" H 2300 2565 50  0000 C CNN
F 1 "TPS7A7002DDAR" H 2300 2474 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm_ThermalVias" H 2300 1950 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/texas-instruments/TPS7A7002DDAR/296-40977-1-ND/5178854" H 2300 1950 50  0001 C CNN
F 4 "IC REG LIN POS ADJ 3A 8SO PWRPAD" H 2300 1950 50  0001 C CNN "Description"
F 5 "296-40977-1-ND" H 2300 1950 50  0001 C CNN "Digikey PartNumber"
F 6 "TPS7A7002DDAR" H 2300 1950 50  0001 C CNN "Manufactured Part Number"
F 7 "Texas Instruments" H 2300 1950 50  0001 C CNN "Maufaturer"
	1    2300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1650 3000 1650
Wire Wire Line
	3000 1650 3000 1700
Wire Wire Line
	3000 2000 3000 2050
Wire Wire Line
	2750 1950 2850 1950
Wire Wire Line
	2850 1950 2850 2050
Wire Wire Line
	2850 2050 3000 2050
Connection ~ 3000 2050
Wire Wire Line
	3000 2050 3000 2100
Wire Wire Line
	2300 2500 2300 2600
Wire Wire Line
	3750 1650 4300 1650
Wire Wire Line
	4300 1550 4300 1650
Connection ~ 4300 1650
Wire Wire Line
	4300 1650 4300 1800
Wire Wire Line
	4300 2000 4300 2100
Wire Wire Line
	1650 1850 1850 1850
Wire Wire Line
	1300 1400 1300 1350
Wire Wire Line
	1300 1350 1650 1350
Wire Wire Line
	1650 1250 1650 1350
Connection ~ 1650 1350
Wire Wire Line
	1300 1600 1300 1650
Wire Wire Line
	1650 1350 1650 1850
Wire Wire Line
	6650 1550 6650 2050
Wire Wire Line
	6300 1800 6300 1850
Connection ~ 6650 1550
Wire Wire Line
	6650 1450 6650 1550
Wire Wire Line
	6300 1550 6650 1550
Wire Wire Line
	6300 1600 6300 1550
Wire Wire Line
	6650 2050 6850 2050
Wire Wire Line
	9350 2200 9350 2300
Wire Wire Line
	9350 1850 9350 2000
Connection ~ 9350 1850
Wire Wire Line
	9350 1750 9350 1850
Wire Wire Line
	8800 1850 9350 1850
Wire Wire Line
	7300 2700 7300 2800
Wire Wire Line
	8000 2250 8000 2300
Connection ~ 8000 2250
Wire Wire Line
	7850 2250 8000 2250
Wire Wire Line
	7850 2150 7850 2250
Wire Wire Line
	7750 2150 7850 2150
Wire Wire Line
	8000 2200 8000 2250
Wire Wire Line
	8000 1850 8000 1900
Wire Wire Line
	7750 1850 8000 1850
$Comp
L Aardonyx-rescue:TPS7A7002DDAR-aardonyx U13
U 1 1 5EC50BBC
P 7300 2150
F 0 "U13" H 7300 2765 50  0000 C CNN
F 1 "TPS7A7002DDAR" H 7300 2674 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm_ThermalVias" H 7300 2150 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/texas-instruments/TPS7A7002DDAR/296-40977-1-ND/5178854" H 7300 2150 50  0001 C CNN
F 4 "IC REG LIN POS ADJ 3A 8SO PWRPAD" H 7300 2150 50  0001 C CNN "Description"
F 5 "296-40977-1-ND" H 7300 2150 50  0001 C CNN "Digikey PartNumber"
F 6 "TPS7A7002DDAR" H 7300 2150 50  0001 C CNN "Manufactured Part Number"
F 7 "Texas Instruments" H 7300 2150 50  0001 C CNN "Maufaturer"
	1    7300 2150
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EC50BB6
P 7300 2800
AR Path="/5DB8A7DC/5EC50BB6" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EC50BB6" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 7300 2550 50  0001 C CNN
F 1 "GND" H 7305 2627 50  0000 C CNN
F 2 "" H 7300 2800 50  0001 C CNN
F 3 "" H 7300 2800 50  0001 C CNN
	1    7300 2800
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V5P0-aardonyx #PWR?
U 1 1 5EC50BB0
P 6650 1450
AR Path="/5DB8A7DC/5EC50BB0" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EC50BB0" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 6800 1400 50  0001 C CNN
F 1 "V5P0" H 6645 1625 50  0000 C CNN
F 2 "" H 6650 1450 50  0001 C CNN
F 3 "" H 6650 1450 50  0001 C CNN
	1    6650 1450
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C?
U 1 1 5EC50BA4
P 6300 1700
AR Path="/5DB8A7DC/5EC50BA4" Ref="C?"  Part="1" 
AR Path="/5E6E93B2/5EC50BA4" Ref="C59"  Part="1" 
F 0 "C59" H 6350 1800 50  0000 L CNN
F 1 "4.7UF,1206" H 6350 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6300 1700 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/T491A475K016AT/399-18027-1-ND/819022" H 6300 1700 50  0001 C CNN
F 4 "CAP TANT 4.7UF 10% 16V 1206" H 6300 1700 50  0001 C CNN "Description"
F 5 "399-18027-1-ND" H 6300 1700 50  0001 C CNN "Digikey PartNumber"
F 6 "T491A475K016AT" H 6300 1700 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 6300 1700 50  0001 C CNN "Maufaturer"
	1    6300 1700
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EC50B9E
P 6300 1850
AR Path="/5DB8A7DC/5EC50B9E" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EC50B9E" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 6300 1600 50  0001 C CNN
F 1 "GND" H 6305 1677 50  0000 C CNN
F 2 "" H 6300 1850 50  0001 C CNN
F 3 "" H 6300 1850 50  0001 C CNN
	1    6300 1850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5EC50B98
P 8000 2050
AR Path="/5DB8A7DC/5EC50B98" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5EC50B98" Ref="P_R49"  Part="1" 
F 0 "P_R49" H 7750 2150 50  0000 L CNN
F 1 "78.7KE,0805" H 8050 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8040 2040 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB7872V/P78-7KDACT-ND/3075252" H 8000 2050 50  0001 C CNN
F 4 "Panasonic Electronic Components" H 8000 2050 50  0001 C CNN "Maufaturer"
F 5 "RES 78.7K OHM 0.1% 1/8W 0805" H 8000 2050 50  0001 C CNN "Description"
F 6 "P78.7KDACT-ND" H 8000 2050 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-6AEB7872V" H 8000 2050 50  0001 C CNN "Manufactured Part Number"
	1    8000 2050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5EC50B92
P 8000 2450
AR Path="/5DB8A7DC/5EC50B92" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5EC50B92" Ref="P_R50"  Part="1" 
F 0 "P_R50" H 8068 2496 50  0000 L CNN
F 1 "30.1KE,0805" V 7900 2200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8040 2440 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB3012V/P30-1KDACT-ND/3075076" H 8000 2450 50  0001 C CNN
F 4 "RES 30.1K OHM 0.1% 1/8W 0805" H 8000 2450 50  0001 C CNN "Description"
F 5 "P30.1KDACT-ND" H 8000 2450 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-6AEB3012V" H 8000 2450 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 8000 2450 50  0001 C CNN "Maufaturer"
	1    8000 2450
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EC50B8C
P 8000 2750
AR Path="/5DB8A7DC/5EC50B8C" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EC50B8C" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 8000 2500 50  0001 C CNN
F 1 "GND" H 8005 2577 50  0000 C CNN
F 2 "" H 8000 2750 50  0001 C CNN
F 3 "" H 8000 2750 50  0001 C CNN
	1    8000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2600 8000 2750
$Comp
L Aardonyx-rescue:C_Small-aardonyx C?
U 1 1 5EC50B85
P 9350 2100
AR Path="/5DB8A7DC/5EC50B85" Ref="C?"  Part="1" 
AR Path="/5E6E93B2/5EC50B85" Ref="C62"  Part="1" 
F 0 "C62" H 9442 2146 50  0000 L CNN
F 1 "10UF,1206" V 9250 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9350 2100 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/C1206C106J3RACAUTO/399-15734-1-ND/7427614" H 9350 2100 50  0001 C CNN
F 4 "CAP CER 10UF 25V X7R 1206" H 9350 2100 50  0001 C CNN "Description"
F 5 "399-15734-1-ND" H 9350 2100 50  0001 C CNN "Digikey PartNumber"
F 6 "C1206C106J3RACAUTO" H 9350 2100 50  0001 C CNN "Manufactured Part Number"
F 7 "KEMET" H 9350 2100 50  0001 C CNN "Maufaturer"
	1    9350 2100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EC50B7F
P 9350 2300
AR Path="/5DB8A7DC/5EC50B7F" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EC50B7F" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 9350 2050 50  0001 C CNN
F 1 "GND" H 9355 2127 50  0000 C CNN
F 2 "" H 9350 2300 50  0001 C CNN
F 3 "" H 9350 2300 50  0001 C CNN
	1    9350 2300
	1    0    0    -1  
$EndComp
Text Notes 6750 1000 0    100  ~ 20
5V TO 1.8V LDO
$Comp
L Device:LED_ALT D?
U 1 1 5EC6670A
P 10500 1800
AR Path="/5DB8A7DC/5EC6670A" Ref="D?"  Part="1" 
AR Path="/5E6E93B2/5EC6670A" Ref="D5"  Part="1" 
F 0 "D5" V 10600 1750 50  0000 R CNN
F 1 "LED,1206" V 10400 1650 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10500 1800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/lumex-opto-components-inc/SML-LX1206GW-TR/67-1002-1-ND/270799" H 10500 1800 50  0001 C CNN
F 4 "LED GREEN DIFFUSED 1206 SMD" H 10500 1800 50  0001 C CNN "Description"
F 5 "67-1002-1-ND" H 10500 1800 50  0001 C CNN "Digikey PartNumber"
F 6 "SML-LX1206GW-TR" H 10500 1800 50  0001 C CNN "Manufactured Part Number"
F 7 "Lumex Opto/Components Inc." H 10500 1800 50  0001 C CNN "Maufaturer"
	1    10500 1800
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EC66710
P 10500 3000
AR Path="/5DB8A7DC/5EC66710" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EC66710" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 10500 2750 50  0001 C CNN
F 1 "GND" H 10505 2827 50  0000 C CNN
F 2 "" H 10500 3000 50  0001 C CNN
F 3 "" H 10500 3000 50  0001 C CNN
	1    10500 3000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5EC66716
P 10500 1350
AR Path="/5DB8A7DC/5EC66716" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5EC66716" Ref="P_R56"  Part="1" 
F 0 "P_R56" H 10550 1450 50  0000 L CNN
F 1 "120E,0402" H 10550 1300 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10540 1340 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC1206JR-07120RL/311-120ERCT-ND/732162" H 10500 1350 50  0001 C CNN
F 4 "RES SMD 120 OHM 1% 1/16W 0402" H 10500 1350 50  0001 C CNN "Description"
F 5 "311-120LRCT-ND" H 10500 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0402FR-07120RL" H 10500 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 10500 1350 50  0001 C CNN "Maufaturer"
	1    10500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1500 10500 1650
$Comp
L Aardonyx-rescue:V1P8-aardonyx #PWR0119
U 1 1 5EC6CCEE
P 9350 1750
F 0 "#PWR0119" H 9500 1700 50  0001 C CNN
F 1 "V1P8" H 9355 1925 50  0000 C CNN
F 2 "" H 9350 1750 50  0001 C CNN
F 3 "" H 9350 1750 50  0001 C CNN
	1    9350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2250 5900 2250
Text Label 5900 2250 0    50   ~ 0
V18_EN
Text Label 3650 4700 0    50   ~ 0
V18_EN
Wire Wire Line
	3600 4700 4050 4700
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5ECC0496
P 4050 4300
AR Path="/5DB8A7DC/5ECC0496" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5ECC0496" Ref="P_R43"  Part="1" 
F 0 "P_R43" H 4118 4346 50  0000 L CNN
F 1 "10KE,0805" H 4118 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 4290 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 4050 4300 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 4050 4300 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 4050 4300 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 4050 4300 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 4050 4300 50  0001 C CNN "Maufaturer"
	1    4050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4450 4050 4700
Connection ~ 4050 4700
Wire Wire Line
	4050 4700 4200 4700
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0107
U 1 1 5ECC4263
P 4050 4050
F 0 "#PWR0107" H 4200 4000 50  0001 C CNN
F 1 "V3P3" H 4055 4225 50  0000 C CNN
F 2 "" H 4050 4050 50  0001 C CNN
F 3 "" H 4050 4050 50  0001 C CNN
	1    4050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4050 4050 4150
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR097
U 1 1 5ECCE974
P 2350 4300
F 0 "#PWR097" H 2500 4250 50  0001 C CNN
F 1 "V3P3" H 2355 4475 50  0000 C CNN
F 2 "" H 2350 4300 50  0001 C CNN
F 3 "" H 2350 4300 50  0001 C CNN
	1    2350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4300 2350 4800
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5ECD13C3
P 2550 4800
AR Path="/5DB8A7DC/5ECD13C3" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5ECD13C3" Ref="P_R39"  Part="1" 
F 0 "P_R39" V 2650 4750 50  0000 L CNN
F 1 "0E, 0805" V 2450 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2590 4790 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-dale/CRCW08050000Z0EA/541-0-0ACT-ND/1180267" H 2550 4800 50  0001 C CNN
F 4 " RES SMD 0 OHM JUMPER 1/8W 0805 " H 2550 4800 50  0001 C CNN "Description"
F 5 " 541-0.0ACT-ND " H 2550 4800 50  0001 C CNN "Digikey PartNumber"
F 6 " CRCW08050000Z0EA " H 2550 4800 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay Dale" H 2550 4800 50  0001 C CNN "Maufaturer"
	1    2550 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 4800 2400 4800
Wire Wire Line
	2750 4800 2700 4800
$Comp
L Aardonyx-rescue:V1P8-aardonyx #PWR0123
U 1 1 5ECE1375
P 10500 1000
F 0 "#PWR0123" H 10650 950 50  0001 C CNN
F 1 "V1P8" H 10505 1175 50  0000 C CNN
F 2 "" H 10500 1000 50  0001 C CNN
F 3 "" H 10500 1000 50  0001 C CNN
	1    10500 1000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0101
U 1 1 5ECF803A
P 3250 5950
F 0 "#PWR0101" H 3400 5900 50  0001 C CNN
F 1 "V3P3" H 3255 6125 50  0000 C CNN
F 2 "" H 3250 5950 50  0001 C CNN
F 3 "" H 3250 5950 50  0001 C CNN
	1    3250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6050 2750 6400
Wire Wire Line
	2750 6400 2800 6400
Wire Wire Line
	3800 6950 3800 7100
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5ECF804D
P 3800 7100
AR Path="/5DB8A7DC/5ECF804D" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5ECF804D" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 3800 6850 50  0001 C CNN
F 1 "GND" H 3805 6927 50  0000 C CNN
F 2 "" H 3800 7100 50  0001 C CNN
F 3 "" H 3800 7100 50  0001 C CNN
	1    3800 7100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C?
U 1 1 5ECF8053
P 3800 6850
AR Path="/5DB8A7DC/5ECF8053" Ref="C?"  Part="1" 
AR Path="/5E6E93B2/5ECF8053" Ref="C58"  Part="1" 
F 0 "C58" H 3892 6896 50  0000 L CNN
F 1 "15PF,0805" H 3892 6805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3800 6850 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/w%C3%BCrth-elektronik/885012007029/732-7828-1-ND/5454455" H 3800 6850 50  0001 C CNN
F 4 "CAP CER 15PF 25V C0G/NP0 0805" H 3800 6850 50  0001 C CNN "Description"
F 5 "732-7828-1-ND" H 3800 6850 50  0001 C CNN "Digikey PartNumber"
F 6 "885012007029" H 3800 6850 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 3800 6850 50  0001 C CNN "Maufaturer"
	1    3800 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6700 3800 6700
Wire Wire Line
	3800 6700 3800 6750
Text Label 3700 6500 0    50   ~ 0
RESET_ASIC
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5ECF805D
P 8550 5800
AR Path="/5DB8A7DC/5ECF805D" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5ECF805D" Ref="R48"  Part="1" 
F 0 "R48" H 8618 5846 50  0000 L CNN
F 1 "10KE,0805" H 8618 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8590 5790 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 8550 5800 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 8550 5800 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 8550 5800 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 8550 5800 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 8550 5800 50  0001 C CNN "Maufaturer"
	1    8550 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5950 8550 6200
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0116
U 1 1 5ECF8066
P 8550 5550
F 0 "#PWR0116" H 8700 5500 50  0001 C CNN
F 1 "V3P3" H 8555 5725 50  0000 C CNN
F 2 "" H 8550 5550 50  0001 C CNN
F 3 "" H 8550 5550 50  0001 C CNN
	1    8550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5550 8550 5650
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5ECF8074
P 2600 6600
AR Path="/5DB8A7DC/5ECF8074" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5ECF8074" Ref="P_R40"  Part="1" 
F 0 "P_R40" V 2700 6550 50  0000 L CNN
F 1 "0E, 0805" V 2500 6600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2640 6590 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-dale/CRCW08050000Z0EA/541-0-0ACT-ND/1180267" H 2600 6600 50  0001 C CNN
F 4 " RES SMD 0 OHM JUMPER 1/8W 0805 " H 2600 6600 50  0001 C CNN "Description"
F 5 " 541-0.0ACT-ND " H 2600 6600 50  0001 C CNN "Digikey PartNumber"
F 6 " CRCW08050000Z0EA " H 2600 6600 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay Dale" H 2600 6600 50  0001 C CNN "Maufaturer"
	1    2600 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 6600 2750 6600
Wire Wire Line
	1200 5550 1200 5650
$Comp
L Aardonyx-rescue:V1P8-aardonyx #PWR093
U 1 1 5ED0845D
P 1200 5550
F 0 "#PWR093" H 1350 5500 50  0001 C CNN
F 1 "V1P8" H 1205 5725 50  0000 C CNN
F 2 "" H 1200 5550 50  0001 C CNN
F 3 "" H 1200 5550 50  0001 C CNN
	1    1200 5550
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5ED10C81
P 1200 5800
AR Path="/5DB8A7DC/5ED10C81" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5ED10C81" Ref="P_R38"  Part="1" 
F 0 "P_R38" H 1268 5846 50  0000 L CNN
F 1 "10KE,0805" H 1268 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1240 5790 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 1200 5800 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 1200 5800 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 1200 5800 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 1200 5800 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 1200 5800 50  0001 C CNN "Maufaturer"
	1    1200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5950 1200 6200
Text Label 1700 6200 2    50   ~ 0
V18_REST_EN
Wire Wire Line
	1200 6200 1700 6200
Text Label 1900 6600 0    50   ~ 0
V18_REST_EN
Wire Wire Line
	1900 6600 2450 6600
$Comp
L Aardonyx-rescue:74AUP1G09GW-aardonyx U14
U 1 1 5ED4950E
P 9250 5300
AR Path="/5ED4950E" Ref="U14"  Part="1" 
AR Path="/5E6E93B2/5ED4950E" Ref="U14"  Part="1" 
F 0 "U14" H 9150 5450 50  0000 C CNN
F 1 "74AUP1G09GW" H 9550 5150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 9250 5300 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/nexperia-usa-inc/74AUP1G09GW-125/1727-4492-1-ND/2530869" H 9250 5300 50  0001 C CNN
F 4 "IC GATE AND 1CH 2-INP 5TSSOP" H 9250 5300 50  0001 C CNN "Description"
F 5 "1727-4492-1-ND" H 9250 5300 50  0001 C CNN "Digikey PartNumber"
F 6 "74AUP1G09GW,125" H 9250 5300 50  0001 C CNN "Manufactured Part Number"
F 7 "Nexperia USA Inc." H 9250 5300 50  0001 C CNN "Maufaturer"
	1    9250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5300 9550 5300
Wire Wire Line
	9250 5400 9250 5550
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5ED4C488
P 9250 5550
AR Path="/5DB8A7DC/5ED4C488" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5ED4C488" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 9250 5300 50  0001 C CNN
F 1 "GND" H 9255 5377 50  0000 C CNN
F 2 "" H 9250 5550 50  0001 C CNN
F 3 "" H 9250 5550 50  0001 C CNN
	1    9250 5550
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5ED51498
P 9550 5000
AR Path="/5DB8A7DC/5ED51498" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5ED51498" Ref="R51"  Part="1" 
F 0 "R51" H 9618 5046 50  0000 L CNN
F 1 "10KE,0805" H 9618 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9590 4990 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 9550 5000 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 9550 5000 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 9550 5000 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 9550 5000 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 9550 5000 50  0001 C CNN "Maufaturer"
	1    9550 5000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0121
U 1 1 5ED5149E
P 9250 4500
F 0 "#PWR0121" H 9400 4450 50  0001 C CNN
F 1 "V3P3" H 9255 4675 50  0000 C CNN
F 2 "" H 9250 4500 50  0001 C CNN
F 3 "" H 9250 4500 50  0001 C CNN
	1    9250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4750 9550 4850
Wire Wire Line
	9250 4750 9550 4750
Connection ~ 9250 4750
Wire Wire Line
	9250 4750 9250 5200
Wire Wire Line
	9550 5150 9550 5300
Connection ~ 9550 5300
Wire Wire Line
	9550 5300 9900 5300
$Comp
L Aardonyx-rescue:C_Small-aardonyx C?
U 1 1 5ED5D11A
P 8900 4750
AR Path="/5DB8A7DC/5ED5D11A" Ref="C?"  Part="1" 
AR Path="/5E6E93B2/5ED5D11A" Ref="C61"  Part="1" 
F 0 "C61" H 8992 4796 50  0000 L CNN
F 1 "0.1UF,0402" H 8992 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8900 4750 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 8900 4750 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 8900 4750 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 8900 4750 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 8900 4750 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 8900 4750 50  0001 C CNN "Maufaturer"
	1    8900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4500 9250 4550
Wire Wire Line
	9250 4550 8900 4550
Wire Wire Line
	8900 4550 8900 4650
Connection ~ 9250 4550
Wire Wire Line
	9250 4550 9250 4750
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5ED6990D
P 8900 4900
AR Path="/5DB8A7DC/5ED6990D" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5ED6990D" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 8900 4650 50  0001 C CNN
F 1 "GND" H 8905 4727 50  0000 C CNN
F 2 "" H 8900 4900 50  0001 C CNN
F 3 "" H 8900 4900 50  0001 C CNN
	1    8900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4850 8900 4900
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5ED6F07A
P 10050 5300
AR Path="/5DB8A7DC/5ED6F07A" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5ED6F07A" Ref="R54"  Part="1" 
F 0 "R54" V 10150 5250 50  0000 L CNN
F 1 "0E, 0402" V 9950 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10090 5290 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/vishay-dale/CRCW04020000Z0ED/541-0-0JCT-ND/1182611" H 10050 5300 50  0001 C CNN
F 4 "RES SMD 0 OHM JUMPER 1/16W 0402" H 10050 5300 50  0001 C CNN "Description"
F 5 "541-0.0JCT-ND" H 10050 5300 50  0001 C CNN "Digikey PartNumber"
F 6 "CRCW04020000Z0ED" H 10050 5300 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay Dale" H 10050 5300 50  0001 C CNN "Maufaturer"
	1    10050 5300
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5ED71B3C
P 10300 5000
AR Path="/5DB8A7DC/5ED71B3C" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5ED71B3C" Ref="R55"  Part="1" 
F 0 "R55" H 10400 5150 50  0000 L CNN
F 1 "10KE,0805" H 10400 5050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10340 4990 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 10300 5000 50  0001 C CNN
F 4 "NA" H 10450 4950 50  0000 C CNN "Field4"
F 5 "RES SMD 10K OHM 1% 1/8W 0805" H 10300 5000 50  0001 C CNN "Description"
F 6 "311-10.0KCRCT-ND" H 10300 5000 50  0001 C CNN "Digikey PartNumber"
F 7 "RC0805FR-0710KL" H 10300 5000 50  0001 C CNN "Manufactured Part Number"
F 8 "Yageo" H 10300 5000 50  0001 C CNN "Maufaturer"
	1    10300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5150 10300 5300
Wire Wire Line
	10300 5300 10200 5300
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0124
U 1 1 5ED773E3
P 10300 4600
F 0 "#PWR0124" H 10450 4550 50  0001 C CNN
F 1 "V3P3" H 10305 4775 50  0000 C CNN
F 2 "" H 10300 4600 50  0001 C CNN
F 3 "" H 10300 4600 50  0001 C CNN
	1    10300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4600 10300 4850
Wire Wire Line
	10300 5300 10700 5300
Connection ~ 10300 5300
$Comp
L Aardonyx-rescue:SW_DPST-aardonyx SW2
U 1 1 5ED8FAD8
P 6550 5350
F 0 "SW2" H 6600 5600 50  0000 C CNN
F 1 "FSM2JSMAATR " H 6550 5100 50  0000 C CNN
F 2 "Aardonyx:SW_PUSH_SPST_NO_4.5MM_7MM" H 6550 5350 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-alcoswitch-switches/FSM2JSMAATR/450-1792-1-ND/3503931" H 6550 5350 50  0001 C CNN
F 4 "SWITCH TACTILE SPST-NO 0.05A 24V" H 6550 5350 50  0001 C CNN "Description"
F 5 "450-1792-1-ND" H 6550 5350 50  0001 C CNN "Digikey PartNumber"
F 6 "FSM2JSMAATR" H 6550 5350 50  0001 C CNN "Manufactured Part Number"
F 7 "TE Connectivity ALCOSWITCH Switches" H 6550 5350 50  0001 C CNN "Maufaturer"
	1    6550 5350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EDBAE1B
P 5950 5550
AR Path="/5DB8A7DC/5EDBAE1B" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EDBAE1B" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 5950 5300 50  0001 C CNN
F 1 "GND" H 5955 5377 50  0000 C CNN
F 2 "" H 5950 5550 50  0001 C CNN
F 3 "" H 5950 5550 50  0001 C CNN
	1    5950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5250 6250 5250
Wire Wire Line
	5950 5250 5950 5550
Wire Wire Line
	6350 5450 6250 5450
Wire Wire Line
	6250 5450 6250 5250
Connection ~ 6250 5250
Wire Wire Line
	6250 5250 5950 5250
Wire Wire Line
	6750 5250 6850 5250
Wire Wire Line
	6750 5450 6850 5450
Wire Wire Line
	6850 5450 6850 5250
Connection ~ 6850 5250
Wire Wire Line
	6850 5250 7100 5250
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5EDCF57A
P 7100 4950
AR Path="/5DB8A7DC/5EDCF57A" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5EDCF57A" Ref="R45"  Part="1" 
F 0 "R45" H 7150 5100 50  0000 L CNN
F 1 "4.7KE, 0402" H 7150 4950 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7140 4940 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0402JR-074K7L/311-4-7KJRCT-ND/726477" H 7100 4950 50  0001 C CNN
F 4 "RES SMD 4.7K OHM 5% 1/16W 0402" H 7100 4950 50  0001 C CNN "Description"
F 5 "311-4.7KJRCT-ND" H 7100 4950 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0402JR-074K7L" H 7100 4950 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 7100 4950 50  0001 C CNN "Maufaturer"
	1    7100 4950
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR0112
U 1 1 5EDCF581
P 7100 4550
F 0 "#PWR0112" H 7250 4500 50  0001 C CNN
F 1 "V3P3" H 7105 4725 50  0000 C CNN
F 2 "" H 7100 4550 50  0001 C CNN
F 3 "" H 7100 4550 50  0001 C CNN
	1    7100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4550 7100 4800
Wire Wire Line
	7100 5100 7100 5250
Connection ~ 7100 5250
Wire Wire Line
	7100 5250 7200 5250
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5EDDABD4
P 7350 5250
AR Path="/5DB8A7DC/5EDDABD4" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5EDDABD4" Ref="R46"  Part="1" 
F 0 "R46" V 7450 5200 50  0000 L CNN
F 1 "1KE,0402" V 7250 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7390 5240 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 7350 5250 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0402" H 7350 5250 50  0001 C CNN "Description"
F 5 "P1.0KJCT-ND " H 7350 5250 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-2AEB123X" H 7350 5250 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 7350 5250 50  0001 C CNN "Maufaturer"
	1    7350 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 5250 7650 5250
$Comp
L Aardonyx-rescue:C_Small-aardonyx C?
U 1 1 5EDE585E
P 7650 5500
AR Path="/5DB8A7DC/5EDE585E" Ref="C?"  Part="1" 
AR Path="/5E6E93B2/5EDE585E" Ref="C60"  Part="1" 
F 0 "C60" H 7742 5546 50  0000 L CNN
F 1 "0.1UF,0402" H 7742 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7650 5500 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 7650 5500 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 7650 5500 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 7650 5500 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 7650 5500 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 7650 5500 50  0001 C CNN "Maufaturer"
	1    7650 5500
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EDE5864
P 7650 5650
AR Path="/5DB8A7DC/5EDE5864" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EDE5864" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 7650 5400 50  0001 C CNN
F 1 "GND" H 7655 5477 50  0000 C CNN
F 2 "" H 7650 5650 50  0001 C CNN
F 3 "" H 7650 5650 50  0001 C CNN
	1    7650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5600 7650 5650
Wire Wire Line
	7650 5400 7650 5250
Connection ~ 7650 5250
Wire Wire Line
	7650 5250 8950 5250
Wire Wire Line
	3650 6500 4250 6500
Text Label 7600 6200 0    50   ~ 0
RESET_ASIC
Wire Wire Line
	8950 5350 8850 5350
Wire Wire Line
	8850 5350 8850 6200
Wire Wire Line
	8550 6200 8850 6200
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5EE0CD3F
P 8300 6200
AR Path="/5DB8A7DC/5EE0CD3F" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5EE0CD3F" Ref="R47"  Part="1" 
F 0 "R47" V 8400 6150 50  0000 L CNN
F 1 "0E, 0402" V 8200 6200 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8340 6190 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/vishay-dale/CRCW04020000Z0ED/541-0-0JCT-ND/1182611" H 8300 6200 50  0001 C CNN
F 4 "RES SMD 0 OHM JUMPER 1/16W 0402" H 8300 6200 50  0001 C CNN "Description"
F 5 "541-0.0JCT-ND" H 8300 6200 50  0001 C CNN "Digikey PartNumber"
F 6 "CRCW04020000Z0ED" H 8300 6200 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay Dale" H 8300 6200 50  0001 C CNN "Maufaturer"
	1    8300 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 6200 8550 6200
Connection ~ 8550 6200
Wire Wire Line
	8150 6200 7600 6200
Text Notes 7500 4000 0    100  ~ 20
SKT32E HARDWARE RESET
Text Label 10450 5300 0    39   ~ 0
RESET
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EF4A41A
P 3200 5200
AR Path="/5DB8A7DC/5EF4A41A" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EF4A41A" Ref="#PWR0100"  Part="1" 
F 0 "#PWR0100" H 3200 4950 50  0001 C CNN
F 1 "GND" H 3205 5027 50  0000 C CNN
F 2 "" H 3200 5200 50  0001 C CNN
F 3 "" H 3200 5200 50  0001 C CNN
	1    3200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5100 3200 5200
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR?
U 1 1 5EF4E427
P 3250 7000
AR Path="/5DB8A7DC/5EF4E427" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5EF4E427" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3250 6750 50  0001 C CNN
F 1 "GND" H 3255 6827 50  0000 C CNN
F 2 "" H 3250 7000 50  0001 C CNN
F 3 "" H 3250 7000 50  0001 C CNN
	1    3250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6900 3250 7000
Wire Notes Line
	5700 500  5700 7750
Text HLabel 10700 5300 2    50   Output ~ 0
RESET
Text HLabel 7650 5100 2    50   Input ~ 0
RESET_AH
Wire Wire Line
	7650 5100 7650 5250
Wire Wire Line
	1650 1850 1650 2050
Wire Wire Line
	1650 2050 1850 2050
Connection ~ 1650 1850
Wire Wire Line
	3200 4150 3200 4350
$Comp
L Aardonyx-rescue:V3P3-skt32e_asic #PWR0141
U 1 1 5EDD59E1
P 2700 4250
F 0 "#PWR0141" H 2850 4200 50  0001 C CNN
F 1 "V3P3" H 2705 4425 50  0000 C CNN
F 2 "" H 2700 4250 50  0001 C CNN
F 3 "" H 2700 4250 50  0001 C CNN
	1    2700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5950 3250 6150
$Comp
L Aardonyx-rescue:V3P3-skt32e_asic #PWR0142
U 1 1 5EDD6599
P 2750 6050
F 0 "#PWR0142" H 2900 6000 50  0001 C CNN
F 1 "V3P3" H 2755 6225 50  0000 C CNN
F 2 "" H 2750 6050 50  0001 C CNN
F 3 "" H 2750 6050 50  0001 C CNN
	1    2750 6050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:ADM1085-skt32e_asic U11
U 1 1 5EDDCF39
P 3200 4700
AR Path="/5EDDCF39" Ref="U11"  Part="1" 
AR Path="/5E6E93B2/5EDDCF39" Ref="U11"  Part="1" 
F 0 "U11" H 3175 5231 50  0000 C CNN
F 1 "ADM1085" H 3175 5140 50  0000 C CNN
F 2 "Package_SO:SC-74-6_1.5x2.9mm_P0.95mm" H 3100 4750 50  0001 C CNN
F 3 "https://www.mouser.in/ProductDetail/Analog-Devices/ADM1085AKSZ-REEL7?qs=sGAEpiMZZMv9Q1JI0Mo%2FtdiYL5rCVCWC (or)  https://www.digikey.com/product-detail/en/analog-devices-inc/ADM1085AKSZ-REEL7/ADM1085AKSZ-REEL7CT-ND/820429" H 3100 4750 50  0001 C CNN
F 4 "IC SUPERVISOR 1 CHANNEL SC70-6" H 3200 4700 50  0001 C CNN "Description"
F 5 "ADM1085AKSZ-REEL7CT-ND" H 3200 4700 50  0001 C CNN "Digikey PartNumber"
F 6 "ADM1085AKSZ-REEL7" H 3200 4700 50  0001 C CNN "Manufactured Part Number"
F 7 "Analog Devices Inc." H 3200 4700 50  0001 C CNN "Maufaturer"
	1    3200 4700
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:ADM1085-skt32e_asic U12
U 1 1 5EDDE10C
P 3250 6500
AR Path="/5EDDE10C" Ref="U12"  Part="1" 
AR Path="/5E6E93B2/5EDDE10C" Ref="U12"  Part="1" 
F 0 "U12" H 3225 7031 50  0000 C CNN
F 1 "ADM1085" H 3225 6940 50  0000 C CNN
F 2 "Package_SO:SC-74-6_1.5x2.9mm_P0.95mm" H 3150 6550 50  0001 C CNN
F 3 "https://www.mouser.in/ProductDetail/Analog-Devices/ADM1085AKSZ-REEL7?qs=sGAEpiMZZMv9Q1JI0Mo%2FtdiYL5rCVCWC (or)  https://www.digikey.com/product-detail/en/analog-devices-inc/ADM1085AKSZ-REEL7/ADM1085AKSZ-REEL7CT-ND/820429" H 3150 6550 50  0001 C CNN
F 4 "IC SUPERVISOR 1 CHANNEL SC70-6" H 3250 6500 50  0001 C CNN "Description"
F 5 "ADM1085AKSZ-REEL7CT-ND" H 3250 6500 50  0001 C CNN "Digikey PartNumber"
F 6 "ADM1085AKSZ-REEL7" H 3250 6500 50  0001 C CNN "Manufactured Part Number"
F 7 "Analog Devices Inc." H 3250 6500 50  0001 C CNN "Maufaturer"
	1    3250 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1000 10500 1200
$Comp
L Aardonyx-rescue:FDN339AN-aardonyx Q1
U 1 1 5EC7C18A
P 10500 2350
F 0 "Q1" H 10598 2396 50  0000 L CNN
F 1 "FDN339AN" H 10598 2305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SuperSOT-3" H 10500 2350 50  0001 L BNN
F 3 "https://www.digikey.com/product-detail/en/on-semiconductor/FDN339AN/FDN339ANCT-ND/965603" H 10500 2350 50  0001 C CNN
F 4 "MOSFET N-CH 20V 3A SSOT3" H 10500 2350 50  0001 C CNN "Description"
F 5 "FDN339ANCT-ND" H 10500 2350 50  0001 C CNN "Digikey PartNumber"
F 6 "FDN339AN" H 10500 2350 50  0001 C CNN "Manufactured Part Number"
F 7 "ON Semiconductor" H 10500 2350 50  0001 C CNN "Maufaturer"
	1    10500 2350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5EC7E40B
P 10000 2450
AR Path="/5DB8A7DC/5EC7E40B" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5EC7E40B" Ref="R41"  Part="1" 
F 0 "R41" V 10100 2400 50  0000 L CNN
F 1 "1KE,0402" V 9900 2350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10040 2440 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10000 2450 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0402" H 10000 2450 50  0001 C CNN "Description"
F 5 "P1.0KJCT-ND " H 10000 2450 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-2AEB123X" H 10000 2450 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 10000 2450 50  0001 C CNN "Maufaturer"
	1    10000 2450
	0    1    1    0   
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R?
U 1 1 5EC80D82
P 9700 2700
AR Path="/5DB8A7DC/5EC80D82" Ref="R?"  Part="1" 
AR Path="/5E6E93B2/5EC80D82" Ref="R40"  Part="1" 
F 0 "R40" H 9768 2746 50  0000 L CNN
F 1 "1KE,0402" H 9768 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9740 2690 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 9700 2700 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0402" H 9700 2700 50  0001 C CNN "Description"
F 5 "P1.0KJCT-ND " H 9700 2700 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-2AEB123X" H 9700 2700 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 9700 2700 50  0001 C CNN "Maufaturer"
	1    9700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1950 10500 2150
Wire Wire Line
	10500 2550 10500 2950
$Comp
L Aardonyx-rescue:V1P8-aardonyx #PWR0160
U 1 1 5EC93A0D
P 9700 2300
F 0 "#PWR0160" H 9850 2250 50  0001 C CNN
F 1 "V1P8" H 9705 2475 50  0000 C CNN
F 2 "" H 9700 2300 50  0001 C CNN
F 3 "" H 9700 2300 50  0001 C CNN
	1    9700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2300 9700 2450
Wire Wire Line
	9700 2450 9850 2450
Connection ~ 9700 2450
Wire Wire Line
	9700 2450 9700 2550
Wire Wire Line
	9700 2950 10500 2950
Wire Wire Line
	9700 2850 9700 2950
Connection ~ 10500 2950
Wire Wire Line
	10500 2950 10500 3000
Wire Wire Line
	10150 2450 10300 2450
$Comp
L Aardonyx-rescue:R_US-aardonyx P_R?
U 1 1 5F47FAE4
P 8650 1850
AR Path="/5DB8A7DC/5F47FAE4" Ref="P_R?"  Part="1" 
AR Path="/5E6E93B2/5F47FAE4" Ref="P_R2"  Part="1" 
F 0 "P_R2" V 8600 1500 50  0000 L CNN
F 1 "0.02E,2512" V 8700 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 8690 1840 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/PA2512FKF7W0R002E/YAG2142CT-ND/5139590" H 8650 1850 50  0001 C CNN
F 4 "RES 0.002 OHM 1% 2W 2512" H 8650 1850 50  0001 C CNN "Description"
F 5 "YAG2142CT-ND" H 8650 1850 50  0001 C CNN "Digikey PartNumber"
F 6 "PA2512FKF7W0R002E" H 8650 1850 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 8650 1850 50  0001 C CNN "Maufaturer"
	1    8650 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 1850 8000 1850
Connection ~ 8000 1850
$Comp
L Aardonyx-rescue:R_US-aardonyx P_R?
U 1 1 5F499A38
P 3600 1650
AR Path="/5DB8A7DC/5F499A38" Ref="P_R?"  Part="1" 
AR Path="/5E6E93B2/5F499A38" Ref="P_R1"  Part="1" 
F 0 "P_R1" V 3550 1300 50  0000 L CNN
F 1 "0.02E,2512" V 3650 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 3640 1640 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/PA2512FKF7W0R002E/YAG2142CT-ND/5139590" H 3600 1650 50  0001 C CNN
F 4 "RES 0.002 OHM 1% 2W 2512" H 3600 1650 50  0001 C CNN "Description"
F 5 "YAG2142CT-ND" H 3600 1650 50  0001 C CNN "Digikey PartNumber"
F 6 "PA2512FKF7W0R002E" H 3600 1650 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 3600 1650 50  0001 C CNN "Maufaturer"
	1    3600 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1650 3000 1650
Connection ~ 3000 1650
$Comp
L Aardonyx-rescue:V5P0-aardonyx #PWR?
U 1 1 5ED69FF2
P 1650 1250
AR Path="/5DB8A7DC/5ED69FF2" Ref="#PWR?"  Part="1" 
AR Path="/5E6E93B2/5ED69FF2" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 1800 1200 50  0001 C CNN
F 1 "V5P0" H 1645 1425 50  0000 C CNN
F 2 "" H 1650 1250 50  0001 C CNN
F 3 "" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
