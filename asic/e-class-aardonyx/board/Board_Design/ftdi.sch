EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "AARDONYX SKT32E DEVELOPMENT BOARD"
Date ""
Rev "R1V0"
Comp "IIT_MADRAS"
Comment1 ""
Comment2 ""
Comment3 "USB - UART Converter"
Comment4 "SKT32E - FT2232H Interface"
$EndDescr
Wire Wire Line
	5950 6750 5950 6850
Wire Wire Line
	5950 6850 5850 6850
Wire Wire Line
	4350 6850 4350 6350
Wire Wire Line
	4350 6350 4450 6350
Wire Wire Line
	5850 6750 5850 6850
Connection ~ 5850 6850
Wire Wire Line
	5850 6850 5750 6850
Wire Wire Line
	5750 6750 5750 6850
Connection ~ 5750 6850
Wire Wire Line
	5750 6850 5650 6850
Wire Wire Line
	5650 6750 5650 6850
Connection ~ 5650 6850
Wire Wire Line
	5650 6850 5550 6850
Wire Wire Line
	5550 6750 5550 6850
Connection ~ 5550 6850
Wire Wire Line
	5550 6850 5450 6850
Wire Wire Line
	5450 6750 5450 6850
Connection ~ 5450 6850
Wire Wire Line
	5450 6850 5350 6850
Wire Wire Line
	5350 6750 5350 6850
Connection ~ 5350 6850
Wire Wire Line
	5350 6850 5250 6850
Wire Wire Line
	5250 6750 5250 6850
Wire Wire Line
	5850 2350 5850 2250
Wire Wire Line
	5850 2250 5950 2250
Wire Wire Line
	6150 2250 6150 2350
Wire Wire Line
	6050 2350 6050 2250
Connection ~ 6050 2250
Wire Wire Line
	6050 2250 6150 2250
Wire Wire Line
	5950 2350 5950 2250
Connection ~ 5950 2250
Wire Wire Line
	5950 2250 6050 2250
Wire Wire Line
	5650 2350 5650 2250
Wire Wire Line
	5650 2250 5550 2250
Wire Wire Line
	5450 2250 5450 2350
Wire Wire Line
	5550 2350 5550 2250
Connection ~ 5550 2250
Wire Wire Line
	5550 2250 5450 2250
$Comp
L Aardonyx-rescue:C_Small-aardonyx C10
U 1 1 5DB80465
P 4950 2050
F 0 "C10" H 4950 2150 50  0000 L CNN
F 1 "0.1UF,0402" V 4850 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4950 2050 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 4950 2050 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 4950 2050 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 4950 2050 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 4950 2050 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 4950 2050 50  0001 C CNN "Maufaturer"
	1    4950 2050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C9
U 1 1 5DB818DD
P 4650 2050
F 0 "C9" H 4650 2150 50  0000 L CNN
F 1 "4.7UF,1206" V 4550 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4650 2050 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/T491A475K016AT/399-3697-1-ND/819022" H 4650 2050 50  0001 C CNN
F 4 "	CAP TANT 4.7UF 10% 16V 1206" H 4650 2050 50  0001 C CNN "Description"
F 5 "	399-3697-1-ND" H 4650 2050 50  0001 C CNN "Digikey PartNumber"
F 6 "	T491A475K016AT" H 4650 2050 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 4650 2050 50  0001 C CNN "Maufaturer"
	1    4650 2050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C8
U 1 1 5DB8354B
P 4350 1550
F 0 "C8" H 4350 1650 50  0000 L CNN
F 1 "0.1UF,0402" V 4250 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4350 1550 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 4350 1550 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 4350 1550 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 4350 1550 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 4350 1550 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 4350 1550 50  0001 C CNN "Maufaturer"
	1    4350 1550
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C5
U 1 1 5DB83551
P 4050 1550
F 0 "C5" H 4050 1650 50  0000 L CNN
F 1 "4.7UF,1206" V 3950 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4050 1550 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/T491A475K016AT/399-3697-1-ND/819022" H 4050 1550 50  0001 C CNN
F 4 "	CAP TANT 4.7UF 10% 16V 1206" H 4050 1550 50  0001 C CNN "Description"
F 5 "	399-3697-1-ND" H 4050 1550 50  0001 C CNN "Digikey PartNumber"
F 6 "	T491A475K016AT" H 4050 1550 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 4050 1550 50  0001 C CNN "Maufaturer"
	1    4050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2150 4950 2250
Wire Wire Line
	4950 2250 4650 2250
Wire Wire Line
	4650 2150 4650 2250
Connection ~ 4650 2250
Wire Wire Line
	4050 2250 4050 2350
Wire Wire Line
	4950 1950 4950 1800
Wire Wire Line
	4950 1800 4650 1800
Wire Wire Line
	4650 1800 4650 1950
Wire Wire Line
	5150 2350 5150 1800
Wire Wire Line
	5150 1800 4950 1800
Connection ~ 4950 1800
Wire Wire Line
	4650 1800 3750 1800
Connection ~ 4650 1800
Wire Wire Line
	4450 4150 4350 4150
Wire Wire Line
	4350 4150 4350 4250
$Comp
L Aardonyx-rescue:C_Small-aardonyx C4
U 1 1 5DB9AA70
P 3850 3100
F 0 "C4" H 3850 3200 50  0000 L CNN
F 1 "0.1UF,0402" V 3750 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3850 3100 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 3850 3100 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 3850 3100 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 3850 3100 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 3850 3100 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 3850 3100 50  0001 C CNN "Maufaturer"
	1    3850 3100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C2
U 1 1 5DB9AA76
P 3550 3100
F 0 "C2" H 3550 3200 50  0000 L CNN
F 1 "4.7UF,1206" V 3450 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3550 3100 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/T491A475K016AT/399-3697-1-ND/819022" H 3550 3100 50  0001 C CNN
F 4 "	CAP TANT 4.7UF 10% 16V 1206" H 3550 3100 50  0001 C CNN "Description"
F 5 "	399-3697-1-ND" H 3550 3100 50  0001 C CNN "Digikey PartNumber"
F 6 "	T491A475K016AT" H 3550 3100 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 3550 3100 50  0001 C CNN "Maufaturer"
	1    3550 3100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C7
U 1 1 5DBA0960
P 4150 3100
F 0 "C7" H 4150 3200 50  0000 L CNN
F 1 "0.1UF,0402" V 4050 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4150 3100 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 4150 3100 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 4150 3100 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 4150 3100 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 4150 3100 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 4150 3100 50  0001 C CNN "Maufaturer"
	1    4150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2850 3850 2850
Wire Wire Line
	3550 2850 3550 3000
Wire Wire Line
	3850 3000 3850 2850
Connection ~ 3850 2850
Wire Wire Line
	3850 2850 3550 2850
Wire Wire Line
	4150 3000 4150 2650
Wire Wire Line
	4150 2650 4450 2650
Connection ~ 4150 2650
Connection ~ 3550 2850
Wire Wire Line
	4350 6850 4350 7050
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR010
U 1 1 5DDDD200
P 4350 7050
F 0 "#PWR010" H 4350 6800 50  0001 C CNN
F 1 "GND" H 4355 6877 50  0000 C CNN
F 2 "" H 4350 7050 50  0001 C CNN
F 3 "" H 4350 7050 50  0001 C CNN
	1    4350 7050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR06
U 1 1 5DDDE1C1
P 3550 3450
F 0 "#PWR06" H 3550 3200 50  0001 C CNN
F 1 "GND" H 3555 3277 50  0000 C CNN
F 2 "" H 3550 3450 50  0001 C CNN
F 3 "" H 3550 3450 50  0001 C CNN
	1    3550 3450
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR08
U 1 1 5DDE30A8
P 4050 2350
F 0 "#PWR08" H 4050 2100 50  0001 C CNN
F 1 "GND" H 4055 2177 50  0000 C CNN
F 2 "" H 4050 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR09
U 1 1 5DDE529E
P 4350 4650
F 0 "#PWR09" H 4350 4400 50  0001 C CNN
F 1 "GND" H 4355 4477 50  0000 C CNN
F 2 "" H 4350 4650 50  0001 C CNN
F 3 "" H 4350 4650 50  0001 C CNN
	1    4350 4650
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR05
U 1 1 5DDE84A3
P 3300 1050
F 0 "#PWR05" H 3450 1000 50  0001 C CNN
F 1 "V3P3" H 3305 1225 50  0000 C CNN
F 2 "" H 3300 1050 50  0001 C CNN
F 3 "" H 3300 1050 50  0001 C CNN
	1    3300 1050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:VCORE_FTDI-aardonyx #PWR04
U 1 1 5E3E23EC
P 2950 2800
F 0 "#PWR04" H 3100 2750 50  0001 C CNN
F 1 "VCORE_FTDI" H 2955 2975 50  0000 C CNN
F 2 "" H 2950 2800 50  0001 C CNN
F 3 "" H 2950 2800 50  0001 C CNN
	1    2950 2800
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:Ferrite_Bead_Small-aardonyx FB3
U 1 1 5E3E8B59
P 3650 1800
F 0 "FB3" V 3413 1800 50  0000 C CNN
F 1 "600E,FB,0402" V 3504 1800 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 3580 1800 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/w%C3%BCrth-elektronik/742792651/732-1593-1-ND/1639537" H 3650 1800 50  0001 C CNN
F 4 "FERRITE BEAD 600 OHM 0402 1LN" H 3650 1800 50  0001 C CNN "Description"
F 5 "732-2388-1-ND" H 3650 1800 50  0001 C CNN "Digikey PartNumber"
F 6 "7427927291" H 3650 1800 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 3650 1800 50  0001 C CNN "Maufaturer"
	1    3650 1800
	0    1    1    0   
$EndComp
$Comp
L Aardonyx-rescue:Ferrite_Bead_Small-aardonyx FB2
U 1 1 5E3EEBCE
P 3650 1350
F 0 "FB2" V 3413 1350 50  0000 C CNN
F 1 "600E,FB,0402" V 3504 1350 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 3580 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/w%C3%BCrth-elektronik/742792651/732-1593-1-ND/1639537" H 3650 1350 50  0001 C CNN
F 4 "FERRITE BEAD 600 OHM 0402 1LN" H 3650 1350 50  0001 C CNN "Description"
F 5 "732-2388-1-ND" H 3650 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "7427927291" H 3650 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 3650 1350 50  0001 C CNN "Maufaturer"
	1    3650 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 1350 5250 2350
Wire Wire Line
	4050 2250 4350 2250
Wire Wire Line
	4050 1650 4050 2250
Connection ~ 4050 2250
Wire Wire Line
	4350 1650 4350 2250
Connection ~ 4350 2250
Wire Wire Line
	4350 2250 4650 2250
Wire Wire Line
	4050 1450 4050 1350
Connection ~ 4050 1350
Wire Wire Line
	4050 1350 4350 1350
Wire Wire Line
	4350 1450 4350 1350
Connection ~ 4350 1350
Wire Wire Line
	4350 1350 5250 1350
Wire Wire Line
	2950 2800 2950 2850
Wire Wire Line
	2950 2850 3550 2850
Wire Wire Line
	3750 1350 4050 1350
Wire Wire Line
	3300 2650 4150 2650
Wire Wire Line
	3300 1050 3300 1350
Wire Wire Line
	3550 1800 3300 1800
Connection ~ 3300 1800
Wire Wire Line
	3300 1800 3300 2650
Wire Wire Line
	3550 1350 3300 1350
Connection ~ 3300 1350
Wire Wire Line
	3300 1350 3300 1800
Text Label 7150 2650 2    39   ~ 0
TCK
Text Label 7150 2750 2    39   ~ 0
TDI
Text Label 7150 2850 2    39   ~ 0
TDO
Text Label 7150 2950 2    39   ~ 0
TMS
Text Label 7150 3150 2    39   ~ 0
TRST
Wire Wire Line
	3550 3200 3550 3300
Wire Wire Line
	4150 3300 4150 3200
Wire Wire Line
	3550 3300 3850 3300
Connection ~ 3550 3300
Wire Wire Line
	3550 3300 3550 3350
Wire Wire Line
	3850 3200 3850 3300
Connection ~ 3850 3300
Wire Wire Line
	3850 3300 4150 3300
Connection ~ 6150 2250
Connection ~ 5650 2250
Wire Wire Line
	5650 2250 5650 2050
Wire Wire Line
	6150 2050 6150 2250
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR012
U 1 1 5DDE7896
P 6150 2050
F 0 "#PWR012" H 6300 2000 50  0001 C CNN
F 1 "V3P3" H 6155 2225 50  0000 C CNN
F 2 "" H 6150 2050 50  0001 C CNN
F 3 "" H 6150 2050 50  0001 C CNN
	1    6150 2050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:VCORE_FTDI-aardonyx #PWR011
U 1 1 5E3E1553
P 5650 2050
F 0 "#PWR011" H 5800 2000 50  0001 C CNN
F 1 "VCORE_FTDI" H 5655 2225 50  0000 C CNN
F 2 "" H 5650 2050 50  0001 C CNN
F 3 "" H 5650 2050 50  0001 C CNN
	1    5650 2050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C11
U 1 1 5E439A51
P 9100 1350
F 0 "C11" H 9100 1450 50  0000 L CNN
F 1 "0.1UF,0402" V 9000 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9100 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 9100 1350 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 9100 1350 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 9100 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 9100 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 9100 1350 50  0001 C CNN "Maufaturer"
	1    9100 1350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C12
U 1 1 5E43C0DA
P 9350 1350
F 0 "C12" H 9350 1450 50  0000 L CNN
F 1 "0.1UF,0402" H 9100 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9350 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 9350 1350 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 9350 1350 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 9350 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 9350 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 9350 1350 50  0001 C CNN "Maufaturer"
	1    9350 1350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C13
U 1 1 5E43E6EE
P 9600 1350
F 0 "C13" H 9600 1450 50  0000 L CNN
F 1 "0.1UF,0402" V 9800 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9600 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 9600 1350 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 9600 1350 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 9600 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 9600 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 9600 1350 50  0001 C CNN "Maufaturer"
	1    9600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1250 9100 1150
Wire Wire Line
	9100 1150 9350 1150
Wire Wire Line
	9600 1150 9600 1250
Wire Wire Line
	9100 1450 9100 1550
Wire Wire Line
	9100 1550 9350 1550
Wire Wire Line
	9600 1550 9600 1450
Wire Wire Line
	9350 1450 9350 1550
Connection ~ 9350 1550
Wire Wire Line
	9350 1550 9600 1550
$Comp
L Aardonyx-rescue:VCORE_FTDI-aardonyx #PWR013
U 1 1 5E454E04
P 9100 1050
F 0 "#PWR013" H 9250 1000 50  0001 C CNN
F 1 "VCORE_FTDI" H 9105 1225 50  0000 C CNN
F 2 "" H 9100 1050 50  0001 C CNN
F 3 "" H 9100 1050 50  0001 C CNN
	1    9100 1050
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR014
U 1 1 5E456D74
P 9600 1650
F 0 "#PWR014" H 9600 1400 50  0001 C CNN
F 1 "GND" H 9605 1477 50  0000 C CNN
F 2 "" H 9600 1650 50  0001 C CNN
F 3 "" H 9600 1650 50  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1550 9600 1650
Connection ~ 9600 1550
Wire Wire Line
	9100 1050 9100 1150
Connection ~ 9100 1150
Wire Wire Line
	9350 1250 9350 1150
Connection ~ 9350 1150
Wire Wire Line
	9350 1150 9600 1150
Connection ~ 10000 1150
Wire Wire Line
	10000 1050 10000 1150
Connection ~ 10500 1550
Wire Wire Line
	10750 1650 10750 1550
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR019
U 1 1 5E456003
P 10750 1650
F 0 "#PWR019" H 10750 1400 50  0001 C CNN
F 1 "GND" H 10755 1477 50  0000 C CNN
F 2 "" H 10750 1650 50  0001 C CNN
F 3 "" H 10750 1650 50  0001 C CNN
	1    10750 1650
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR015
U 1 1 5E4559CC
P 10000 1050
F 0 "#PWR015" H 10150 1000 50  0001 C CNN
F 1 "V3P3" H 10005 1225 50  0000 C CNN
F 2 "" H 10000 1050 50  0001 C CNN
F 3 "" H 10000 1050 50  0001 C CNN
	1    10000 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1550 10500 1550
Connection ~ 10250 1550
Wire Wire Line
	10250 1450 10250 1550
Wire Wire Line
	10250 1150 10500 1150
Connection ~ 10250 1150
Wire Wire Line
	10250 1250 10250 1150
Wire Wire Line
	10500 1550 10500 1450
Wire Wire Line
	10000 1550 10250 1550
Wire Wire Line
	10000 1450 10000 1550
Wire Wire Line
	10500 1150 10500 1250
Wire Wire Line
	10000 1150 10250 1150
Wire Wire Line
	10000 1250 10000 1150
$Comp
L Aardonyx-rescue:C_Small-aardonyx C16
U 1 1 5E437345
P 10500 1350
F 0 "C16" H 10500 1450 50  0000 L CNN
F 1 "0.1UF,0402" V 10400 1200 50  0000 L CNN
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
L Aardonyx-rescue:C_Small-aardonyx C15
U 1 1 5E434CF2
P 10250 1350
F 0 "C15" H 10250 1200 50  0000 L CNN
F 1 "0.1UF,0402" V 10150 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10250 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 10250 1350 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 10250 1350 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 10250 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 10250 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 10250 1350 50  0001 C CNN "Maufaturer"
	1    10250 1350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C14
U 1 1 5E432586
P 10000 1350
F 0 "C14" H 10000 1200 50  0000 L CNN
F 1 "0.1UF,0402" V 9900 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10000 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 10000 1350 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 10000 1350 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 10000 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 10000 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 10000 1350 50  0001 C CNN "Maufaturer"
	1    10000 1350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R2
U 1 1 5E4FC879
P 4350 4400
F 0 "R2" H 4400 4500 50  0000 L CNN
F 1 "12KE,0402" V 4250 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4390 4390 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-2AEB123X/P12KDCCT-ND/1706209" H 4350 4400 50  0001 C CNN
F 4 "RES SMD 12K OHM 0.1% 1/16W 0402" H 4350 4400 50  0001 C CNN "Description"
F 5 "P12KDCCT-ND" H 4350 4400 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-2AEB123X" H 4350 4400 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 4350 4400 50  0001 C CNN "Maufaturer"
	1    4350 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4550 4350 4650
Wire Wire Line
	1900 3750 2400 3750
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR01
U 1 1 5E51637D
P 900 4350
F 0 "#PWR01" H 900 4100 50  0001 C CNN
F 1 "GND" H 905 4177 50  0000 C CNN
F 2 "" H 900 4350 50  0001 C CNN
F 3 "" H 900 4350 50  0001 C CNN
	1    900  4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3450 2000 3450
$Comp
L Aardonyx-rescue:C_Small-aardonyx C1
U 1 1 5E522768
P 2200 3200
F 0 "C1" H 2100 3300 50  0000 L CNN
F 1 "4.7UF,1206" V 2300 2850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2200 3200 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/T491A475K016AT/399-3697-1-ND/819022" H 2200 3200 50  0001 C CNN
F 4 "	CAP TANT 4.7UF 10% 16V 1206" H 2200 3200 50  0001 C CNN "Description"
F 5 "	399-3697-1-ND" H 2200 3200 50  0001 C CNN "Digikey PartNumber"
F 6 "	T491A475K016AT" H 2200 3200 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 2200 3200 50  0001 C CNN "Maufaturer"
	1    2200 3200
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR03
U 1 1 5E5269D8
P 2200 3350
F 0 "#PWR03" H 2200 3100 50  0001 C CNN
F 1 "GND" H 2205 3177 50  0000 C CNN
F 2 "" H 2200 3350 50  0001 C CNN
F 3 "" H 2200 3350 50  0001 C CNN
	1    2200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3300 2200 3350
Wire Wire Line
	2200 3100 2200 3050
Wire Wire Line
	2200 3050 2000 3050
Wire Wire Line
	2000 3050 2000 3450
$Comp
L Aardonyx-rescue:Ferrite_Bead_Small-aardonyx FB1
U 1 1 5E535651
P 2000 2900
F 0 "FB1" H 1900 2800 50  0000 C CNN
F 1 "600E,FB,0402" V 2100 2900 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 1930 2900 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/w%C3%BCrth-elektronik/742792651/732-1593-1-ND/1639537" H 2000 2900 50  0001 C CNN
F 4 "FERRITE BEAD 600 OHM 0402 1LN" H 2000 2900 50  0001 C CNN "Description"
F 5 "732-2388-1-ND" H 2000 2900 50  0001 C CNN "Digikey PartNumber"
F 6 "7427927291" H 2000 2900 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 2000 2900 50  0001 C CNN "Maufaturer"
	1    2000 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 3000 2000 3050
Connection ~ 2000 3050
Wire Wire Line
	2000 2700 2000 2800
$Comp
L Aardonyx-rescue:D_BI-aardonyx D1
U 1 1 5E54A3DF
P 2400 4000
F 0 "D1" V 2400 3921 50  0000 R CNN
F 1 "CG0603MLC-12E" H 2850 4100 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2400 4000 50  0001 C CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/MLC.pdf" H 2400 4000 50  0001 C CNN
F 4 "	VARISTOR 0603" H 2400 4000 50  0001 C CNN "Description"
F 5 "CG0603MLC-12ECT-ND" H 2400 4000 50  0001 C CNN "Digikey PartNumber"
F 6 "	CG0603MLC-12E" H 2400 4000 50  0001 C CNN "Manufactured Part Number"
F 7 "	Bourns Inc." H 2400 4000 50  0001 C CNN "Maufaturer"
	1    2400 4000
	0    -1   1    0   
$EndComp
$Comp
L Aardonyx-rescue:D_BI-aardonyx D2
U 1 1 5E54B30F
P 2750 4000
F 0 "D2" V 2750 3921 50  0000 R CNN
F 1 "CG0603MLC-12E" H 3200 4100 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2750 4000 50  0001 C CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/MLC.pdf" H 2750 4000 50  0001 C CNN
F 4 "	VARISTOR 0603" H 2750 4000 50  0001 C CNN "Description"
F 5 "CG0603MLC-12ECT-ND" H 2750 4000 50  0001 C CNN "Digikey PartNumber"
F 6 "	CG0603MLC-12E" H 2750 4000 50  0001 C CNN "Manufactured Part Number"
F 7 "	Bourns Inc." H 2750 4000 50  0001 C CNN "Maufaturer"
	1    2750 4000
	0    -1   1    0   
$EndComp
Wire Wire Line
	2400 4150 2400 4250
Wire Wire Line
	2750 4150 2750 4250
Wire Wire Line
	2400 3850 2400 3750
Connection ~ 2400 3750
Wire Wire Line
	2750 3850 2750 3650
Wire Wire Line
	1900 3650 2750 3650
Connection ~ 2750 3650
$Comp
L Aardonyx-rescue:Crystal-aardonyx Y1
U 1 1 5E59521C
P 3800 6150
F 0 "Y1" H 3800 6418 50  0000 C CNN
F 1 "12MHz" H 3800 6000 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 3800 6150 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/ecs-inc/ECS-120-20-5PXDN-TR/XC1298CT-ND/827762" H 3800 6150 50  0001 C CNN
F 4 "9B-12.000MAAJ-B " H 3950 6300 50  0000 C CNN "Field4"
F 5 "CRYSTAL 12.0000MHZ 20PF SMD" H 3800 6150 50  0001 C CNN "Description"
F 6 "XC1298CT-ND" H 3800 6150 50  0001 C CNN "Digikey PartNumber"
F 7 "ECS-120-20-5PXDN-TR" H 3800 6150 50  0001 C CNN "Manufactured Part Number"
F 8 "ECS Inc." H 3800 6150 50  0001 C CNN "Maufaturer"
	1    3800 6150
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C6
U 1 1 5E5A19BF
P 4050 6450
F 0 "C6" H 4050 6550 50  0000 L CNN
F 1 "18PF,0402" H 4050 6350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4050 6450 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/CC0201JRNPO9BN180/311-1386-1-ND/2833692" H 4050 6450 50  0001 C CNN
F 4 "311-1386-1-ND " H 4050 6450 50  0001 C CNN "Digikey PartNumber"
F 5 "CAP CER 18PF 50V C0G/NPO 0201 " H 4050 6450 50  0001 C CNN "Description"
F 6 "CC0201JRNPO9BN180 " H 4050 6450 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 4050 6450 50  0001 C CNN "Maufaturer"
	1    4050 6450
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C3
U 1 1 5E5A728B
P 3550 6450
F 0 "C3" H 3550 6550 50  0000 L CNN
F 1 "18PF,0402" H 3550 6350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3550 6450 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/CC0201JRNPO9BN180/311-1386-1-ND/2833692" H 3550 6450 50  0001 C CNN
F 4 "311-1386-1-ND " H 3550 6450 50  0001 C CNN "Digikey PartNumber"
F 5 "CAP CER 18PF 50V C0G/NPO 0201 " H 3550 6450 50  0001 C CNN "Description"
F 6 "CC0201JRNPO9BN180 " H 3550 6450 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 3550 6450 50  0001 C CNN "Maufaturer"
	1    3550 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6150 4050 6150
Wire Wire Line
	3550 6350 3550 6150
Connection ~ 3550 6150
Wire Wire Line
	3550 6150 3650 6150
Wire Wire Line
	4050 6350 4050 6150
Connection ~ 4050 6150
Wire Wire Line
	4050 6150 4450 6150
Wire Wire Line
	4350 6850 4050 6850
Wire Wire Line
	3550 6850 3550 6550
Wire Wire Line
	4050 6550 4050 6850
Connection ~ 4050 6850
Wire Wire Line
	4050 6850 3550 6850
Wire Wire Line
	3550 6150 3550 5750
Wire Wire Line
	3550 5750 4450 5750
$Comp
L Aardonyx-rescue:R_US-aardonyx R6
U 1 1 5E5E8E68
P 9750 3900
F 0 "R6" H 9750 4100 50  0000 L CNN
F 1 "1KE,0402" V 9650 3750 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9790 3890 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 9750 3900 50  0001 C CNN
F 4 "NA" H 9850 3750 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 9750 3900 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 9750 3900 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 9750 3900 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 9750 3900 50  0001 C CNN "Maufaturer"
	1    9750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4050 9750 4100
Text Notes 5000 750  0    100  ~ 20
USB - JTAG/UART DUAL PORT CONVERTER\n
Wire Wire Line
	10750 1550 10750 1450
$Comp
L Aardonyx-rescue:C_Small-aardonyx C17
U 1 1 5DD4FE8E
P 10750 1350
F 0 "C17" H 10750 1450 50  0000 L CNN
F 1 "0.1UF,0402" H 10750 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10750 1350 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 10750 1350 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 10750 1350 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 10750 1350 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 10750 1350 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 10750 1350 50  0001 C CNN "Maufaturer"
	1    10750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1150 10750 1150
Wire Wire Line
	10750 1150 10750 1250
Connection ~ 10500 1150
Wire Wire Line
	10750 1550 10500 1550
Connection ~ 10750 1550
Wire Wire Line
	4450 3950 4100 3950
Text Label 3200 4450 0    50   ~ 0
FT_RESET
$Comp
L Aardonyx-rescue:R_US-aardonyx R1
U 1 1 5E7D7B0C
P 3800 4200
F 0 "R1" H 3850 4300 50  0000 L CNN
F 1 "1KE,0402" V 3700 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3840 4190 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 3800 4200 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0402 " H 3800 4200 50  0001 C CNN "Description"
F 5 "P1.0KJCT-ND " H 3800 4200 50  0001 C CNN "Digikey PartNumber"
F 6 "ERJ-2GEJ102X " H 3800 4200 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic " H 3800 4200 50  0001 C CNN "Maufaturer"
	1    3800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3950 4100 4450
Wire Wire Line
	3800 4350 3800 4450
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR07
U 1 1 5E7F4C69
P 3800 4000
F 0 "#PWR07" H 3950 3950 50  0001 C CNN
F 1 "V3P3" H 3805 4175 50  0000 C CNN
F 2 "" H 3800 4000 50  0001 C CNN
F 3 "" H 3800 4000 50  0001 C CNN
	1    3800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4000 3800 4050
Wire Wire Line
	3800 4450 4100 4450
Connection ~ 3800 4450
Text Label 9300 3250 0    39   ~ 0
TCK
Text Label 9300 3350 0    39   ~ 0
TDI
Text Label 9300 3450 0    39   ~ 0
TDO
Text Label 9300 3550 0    39   ~ 0
TMS
Text Label 9300 3650 0    39   ~ 0
TRST
$Comp
L Aardonyx-rescue:R_US-aardonyx R5
U 1 1 5E864C53
P 9750 3000
F 0 "R5" H 9750 3150 50  0000 L CNN
F 1 "1KE,0402" V 9650 2900 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9790 2990 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 9750 3000 50  0001 C CNN
F 4 "NA" H 9650 2850 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 9750 3000 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 9750 3000 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 9750 3000 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 9750 3000 50  0001 C CNN "Maufaturer"
	1    9750 3000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R8
U 1 1 5E8A7794
P 10000 3900
F 0 "R8" H 10000 4050 50  0000 L CNN
F 1 "1KE,0402" V 9950 3750 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10040 3890 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10000 3900 50  0001 C CNN
F 4 "NA" H 10050 3750 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10000 3900 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10000 3900 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10000 3900 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10000 3900 50  0001 C CNN "Maufaturer"
	1    10000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4050 10000 4100
$Comp
L Aardonyx-rescue:R_US-aardonyx R7
U 1 1 5E8A77A8
P 10000 3000
F 0 "R7" H 10000 3150 50  0000 L CNN
F 1 "1KE,0402" V 9900 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10040 2990 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10000 3000 50  0001 C CNN
F 4 "NA" H 10050 2850 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10000 3000 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10000 3000 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10000 3000 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10000 3000 50  0001 C CNN "Maufaturer"
	1    10000 3000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R12
U 1 1 5E8AF820
P 10250 3900
F 0 "R12" H 10250 4050 50  0000 L CNN
F 1 "1KE,0402" V 10150 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10290 3890 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10250 3900 50  0001 C CNN
F 4 "NA" H 10300 3750 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10250 3900 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10250 3900 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10250 3900 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10250 3900 50  0001 C CNN "Maufaturer"
	1    10250 3900
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR020
U 1 1 5E8AF826
P 10250 2750
F 0 "#PWR020" H 10400 2700 50  0001 C CNN
F 1 "V3P3" H 10255 2925 50  0000 C CNN
F 2 "" H 10250 2750 50  0001 C CNN
F 3 "" H 10250 2750 50  0001 C CNN
	1    10250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2750 10250 2800
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR021
U 1 1 5E8AF82D
P 10250 4150
F 0 "#PWR021" H 10250 3900 50  0001 C CNN
F 1 "GND" H 10255 3977 50  0000 C CNN
F 2 "" H 10250 4150 50  0001 C CNN
F 3 "" H 10250 4150 50  0001 C CNN
	1    10250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4050 10250 4100
$Comp
L Aardonyx-rescue:R_US-aardonyx R11
U 1 1 5E8AF834
P 10250 3000
F 0 "R11" H 10250 3150 50  0000 L CNN
F 1 "1KE,0402" V 10150 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10290 2990 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10250 3000 50  0001 C CNN
F 4 "NA" H 10300 2850 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10250 3000 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10250 3000 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10250 3000 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10250 3000 50  0001 C CNN "Maufaturer"
	1    10250 3000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R16
U 1 1 5E8B77A8
P 10500 3900
F 0 "R16" H 10500 4050 50  0000 L CNN
F 1 "1KE,0402" V 10400 3750 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10540 3890 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10500 3900 50  0001 C CNN
F 4 "NA" H 10550 3750 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10500 3900 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10500 3900 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10500 3900 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10500 3900 50  0001 C CNN "Maufaturer"
	1    10500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4050 10500 4100
$Comp
L Aardonyx-rescue:R_US-aardonyx R15
U 1 1 5E8B77BC
P 10500 3000
F 0 "R15" H 10500 3150 50  0000 L CNN
F 1 "1KE,0402" V 10400 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10540 2990 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10500 3000 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0402" H 10500 3000 50  0001 C CNN "Description"
F 5 "P1.0KJCT-ND " H 10500 3000 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-2AEB123X" H 10500 3000 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 10500 3000 50  0001 C CNN "Maufaturer"
	1    10500 3000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R18
U 1 1 5E8C03C4
P 10750 3900
F 0 "R18" H 10818 3946 50  0000 L CNN
F 1 "1KE,0402" H 10818 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10790 3890 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10750 3900 50  0001 C CNN
F 4 "NA" H 10800 3750 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10750 3900 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10750 3900 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10750 3900 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10750 3900 50  0001 C CNN "Maufaturer"
	1    10750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 4050 10750 4100
$Comp
L Aardonyx-rescue:R_US-aardonyx R17
U 1 1 5E8C03D8
P 10750 3000
F 0 "R17" H 10818 3046 50  0000 L CNN
F 1 "1KE,0402" H 10818 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10790 2990 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10750 3000 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0402" H 10750 3000 50  0001 C CNN "Description"
F 5 "P1.0KJCT-ND " H 10750 3000 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-2AEB123X" H 10750 3000 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 10750 3000 50  0001 C CNN "Maufaturer"
	1    10750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3250 9750 3150
Connection ~ 9750 3250
Wire Wire Line
	9750 3250 9750 3750
Wire Wire Line
	10000 3150 10000 3350
Connection ~ 10000 3350
Wire Wire Line
	10000 3350 10000 3750
Wire Wire Line
	9300 3650 10750 3650
Connection ~ 10750 3650
Wire Wire Line
	10750 3650 10750 3750
Wire Wire Line
	10750 3150 10750 3650
Connection ~ 10500 3550
Wire Wire Line
	10500 3550 10500 3750
Wire Wire Line
	9300 3450 10250 3450
Wire Wire Line
	10250 3450 10250 3750
Wire Wire Line
	10500 3150 10500 3550
Wire Wire Line
	10250 3450 10250 3150
Connection ~ 10250 3450
Wire Wire Line
	9750 2850 9750 2800
Wire Wire Line
	9750 2800 10000 2800
Connection ~ 10250 2800
Wire Wire Line
	10250 2800 10250 2850
Wire Wire Line
	10750 2850 10750 2800
Wire Wire Line
	10750 2800 10500 2800
Wire Wire Line
	10000 2850 10000 2800
Connection ~ 10000 2800
Wire Wire Line
	10000 2800 10250 2800
Wire Wire Line
	10500 2850 10500 2800
Connection ~ 10500 2800
Wire Wire Line
	10500 2800 10250 2800
Wire Wire Line
	9750 4100 10000 4100
Connection ~ 10000 4100
Wire Wire Line
	10000 4100 10250 4100
Connection ~ 10250 4100
Wire Wire Line
	10250 4100 10250 4150
Wire Wire Line
	10250 4100 10500 4100
Connection ~ 10500 4100
Wire Wire Line
	10750 4100 10500 4100
Text Label 7500 4550 0    39   ~ 0
UART0_TX
Text Label 7500 4450 0    39   ~ 0
UART0_RX
Text Label 9700 5450 0    39   ~ 0
UART0_TX
$Comp
L Aardonyx-rescue:R_US-aardonyx R10
U 1 1 5EA96A78
P 10150 5800
F 0 "R10" H 10150 6000 50  0000 L CNN
F 1 "1KE,0402" V 10050 5650 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10190 5790 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10150 5800 50  0001 C CNN
F 4 "NA" H 10250 5650 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10150 5800 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10150 5800 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10150 5800 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10150 5800 50  0001 C CNN "Maufaturer"
	1    10150 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5950 10150 6000
$Comp
L Aardonyx-rescue:R_US-aardonyx R9
U 1 1 5EA96A7F
P 10150 4900
F 0 "R9" H 10150 5050 50  0000 L CNN
F 1 "1KE,0402" V 10050 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10190 4890 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10150 4900 50  0001 C CNN
F 4 "NA" H 10250 4750 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10150 4900 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10150 4900 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10150 4900 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10150 4900 50  0001 C CNN "Maufaturer"
	1    10150 4900
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R14
U 1 1 5EA96A85
P 10400 5800
F 0 "R14" H 10400 6000 50  0000 L CNN
F 1 "1KE,0402" H 10468 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10440 5790 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10400 5800 50  0001 C CNN
F 4 "NA" H 10500 5650 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10400 5800 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10400 5800 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10400 5800 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10400 5800 50  0001 C CNN "Maufaturer"
	1    10400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5950 10400 6000
$Comp
L Aardonyx-rescue:R_US-aardonyx R13
U 1 1 5EA96A8C
P 10400 4900
F 0 "R13" H 10400 5050 50  0000 L CNN
F 1 "1KE,0402" H 10468 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10440 4890 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10400 4900 50  0001 C CNN
F 4 "NA" H 10500 4750 50  0000 C CNN "Field4"
F 5 "RES SMD 1K OHM 5% 1/10W 0402" H 10400 4900 50  0001 C CNN "Description"
F 6 "P1.0KJCT-ND " H 10400 4900 50  0001 C CNN "Digikey PartNumber"
F 7 "ERA-2AEB123X" H 10400 4900 50  0001 C CNN "Manufactured Part Number"
F 8 "Panasonic Electronic Components" H 10400 4900 50  0001 C CNN "Maufaturer"
	1    10400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4750 10400 4700
Wire Wire Line
	10400 4700 10150 4700
Wire Wire Line
	10150 4750 10150 4700
Wire Wire Line
	10400 6000 10150 6000
Wire Wire Line
	10400 5050 10400 5450
Connection ~ 10400 5450
Wire Wire Line
	10400 5450 10400 5650
Wire Wire Line
	9500 5450 10150 5450
Wire Wire Line
	10150 5450 10400 5450
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR022
U 1 1 5EAF36CD
P 10400 4650
F 0 "#PWR022" H 10550 4600 50  0001 C CNN
F 1 "V3P3" H 10405 4825 50  0000 C CNN
F 2 "" H 10400 4650 50  0001 C CNN
F 3 "" H 10400 4650 50  0001 C CNN
	1    10400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4650 10400 4700
Connection ~ 10400 4700
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR023
U 1 1 5EB089F3
P 10400 6050
F 0 "#PWR023" H 10400 5800 50  0001 C CNN
F 1 "GND" H 10405 5877 50  0000 C CNN
F 2 "" H 10400 6050 50  0001 C CNN
F 3 "" H 10400 6050 50  0001 C CNN
	1    10400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6000 10400 6050
Connection ~ 10400 6000
$Comp
L Aardonyx-rescue:R_US-aardonyx R3
U 1 1 5EB311E9
P 7150 4450
F 0 "R3" V 7200 4550 50  0000 L CNN
F 1 "0E, 0402" V 7250 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7190 4440 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/vishay-dale/CRCW04020000Z0ED/541-0-0JCT-ND/1182611" H 7150 4450 50  0001 C CNN
F 4 "RES SMD 0 OHM JUMPER 1/16W 0402" H 7150 4450 50  0001 C CNN "Description"
F 5 "541-0.0JCT-ND" H 7150 4450 50  0001 C CNN "Digikey PartNumber"
F 6 "CRCW04020000Z0ED" H 7150 4450 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay Dale" H 7150 4450 50  0001 C CNN "Maufaturer"
	1    7150 4450
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R4
U 1 1 5EB84741
P 7150 4550
F 0 "R4" V 7200 4650 50  0000 L CNN
F 1 "0E, 0402" V 7100 4100 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7190 4540 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/vishay-dale/CRCW04020000Z0ED/541-0-0JCT-ND/1182611" H 7150 4550 50  0001 C CNN
F 4 "RES SMD 0 OHM JUMPER 1/16W 0402" H 7150 4550 50  0001 C CNN "Description"
F 5 "541-0.0JCT-ND" H 7150 4550 50  0001 C CNN "Digikey PartNumber"
F 6 "CRCW04020000Z0ED" H 7150 4550 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay Dale" H 7150 4550 50  0001 C CNN "Maufaturer"
	1    7150 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 3550 10500 3550
Wire Wire Line
	9300 3350 10000 3350
Wire Wire Line
	9300 3250 9750 3250
Wire Wire Line
	6850 2650 7350 2650
Wire Wire Line
	6850 2750 7350 2750
Wire Wire Line
	6850 2850 7350 2850
Wire Wire Line
	6850 2950 7350 2950
Wire Wire Line
	6850 3150 7350 3150
Text HLabel 7350 2650 2    50   Output ~ 0
TCK
Text HLabel 7350 2750 2    50   Output ~ 0
TDI
Text HLabel 7350 2850 2    50   Input ~ 0
TDO
Text HLabel 7350 2950 2    50   Output ~ 0
TMS
Text HLabel 7350 3150 2    50   Output ~ 0
TRST
Text HLabel 7800 4450 2    50   Output ~ 0
UART0_RX
Text HLabel 7800 4550 2    50   Input ~ 0
UART0_TX
Wire Wire Line
	7300 4450 7800 4450
Wire Wire Line
	7300 4550 7800 4550
Wire Wire Line
	6850 4450 7000 4450
Wire Wire Line
	6850 4550 7000 4550
Connection ~ 10150 5350
Wire Wire Line
	10150 5050 10150 5350
Wire Wire Line
	9500 5350 10150 5350
Text Label 9700 5350 0    39   ~ 0
UART0_RX
Wire Wire Line
	10150 5350 10150 5450
NoConn ~ 6850 3250
NoConn ~ 6850 3350
NoConn ~ 6850 3550
NoConn ~ 6850 3650
NoConn ~ 6850 3750
NoConn ~ 6850 3850
NoConn ~ 6850 3950
NoConn ~ 6850 4050
NoConn ~ 6850 4150
NoConn ~ 6850 4250
NoConn ~ 6850 3050
NoConn ~ 6850 4650
NoConn ~ 6850 4750
NoConn ~ 6850 4850
NoConn ~ 6850 4950
NoConn ~ 6850 5050
NoConn ~ 6850 5150
NoConn ~ 6850 5350
NoConn ~ 6850 5450
NoConn ~ 6850 5550
NoConn ~ 6850 5650
NoConn ~ 6850 5750
NoConn ~ 6850 5850
NoConn ~ 6850 5950
$Comp
L Aardonyx-rescue:Conn_1x8-aardonyx J?
U 1 1 5E5A2193
P 9100 3450
AR Path="/5D8B37DE/5E5A2193" Ref="J?"  Part="1" 
AR Path="/5D8B3761/5E5A2193" Ref="J2"  Part="1" 
F 0 "J2" H 9050 3850 50  0000 L CNN
F 1 "Conn_1x8" H 8950 2950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9100 3450 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=68000-408HLF" H 9100 3450 50  0001 C CNN
F 4 "CONN HEADER VERT 8POS 2.54MM" H 9100 3450 50  0001 C CNN "Description"
F 5 "	609-3264-ND" H 9100 3450 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-408HLF" H 9100 3450 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 9100 3450 50  0001 C CNN "Maufaturer"
	1    9100 3450
	-1   0    0    -1  
$EndComp
NoConn ~ 9300 3750
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR016
U 1 1 5E5B7921
P 9350 2950
F 0 "#PWR016" H 9500 2900 50  0001 C CNN
F 1 "V3P3" H 9355 3125 50  0000 C CNN
F 2 "" H 9350 2950 50  0001 C CNN
F 3 "" H 9350 2950 50  0001 C CNN
	1    9350 2950
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR017
U 1 1 5E5C2614
P 9350 4000
F 0 "#PWR017" H 9350 3750 50  0001 C CNN
F 1 "GND" H 9355 3827 50  0000 C CNN
F 2 "" H 9350 4000 50  0001 C CNN
F 3 "" H 9350 4000 50  0001 C CNN
	1    9350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3850 9350 3850
Wire Wire Line
	9350 3850 9350 4000
Wire Wire Line
	9350 3150 9300 3150
Wire Wire Line
	9350 2950 9350 3150
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR018
U 1 1 5E5FC240
P 9550 5650
F 0 "#PWR018" H 9550 5400 50  0001 C CNN
F 1 "GND" H 9555 5477 50  0000 C CNN
F 2 "" H 9550 5650 50  0001 C CNN
F 3 "" H 9550 5650 50  0001 C CNN
	1    9550 5650
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:Conn_1x3_M-aardonyx J?
U 1 1 5E613B93
P 9300 5450
AR Path="/5D8B37DE/5E613B93" Ref="J?"  Part="1" 
AR Path="/5D8B3761/5E613B93" Ref="J3"  Part="1" 
F 0 "J3" H 9300 5650 50  0000 L CNN
F 1 "Conn_1x3_M" H 9200 5250 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 9300 5450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/68000-203HLF/609-3464-ND/2023305" H 9300 5450 50  0001 C CNN
F 4 "CONN HEADER VERT 3POS 2.54MM" H 9300 5450 50  0001 C CNN "Description"
F 5 "609-3464-ND" H 9300 5450 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-203HLF" H 9300 5450 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 9300 5450 50  0001 C CNN "Maufaturer"
	1    9300 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 5550 9550 5550
Wire Wire Line
	9550 5550 9550 5650
$Comp
L Aardonyx-rescue:TestPoint-aardonyx TP1
U 1 1 5E8C6648
P 6900 6250
F 0 "TP1" V 6900 6438 50  0000 L CNN
F 1 "TestPoint" V 6945 6438 50  0001 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.54mm_Drill0.7mm" H 7100 6250 50  0001 C CNN
F 3 "~" H 7100 6250 50  0001 C CNN
	1    6900 6250
	0    1    1    0   
$EndComp
$Comp
L Aardonyx-rescue:TestPoint-aardonyx TP2
U 1 1 5E8D220A
P 6900 6350
F 0 "TP2" V 6900 6538 50  0000 L CNN
F 1 "TestPoint" V 6945 6538 50  0001 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.54mm_Drill0.7mm" H 7100 6350 50  0001 C CNN
F 3 "~" H 7100 6350 50  0001 C CNN
	1    6900 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 6250 6900 6250
Wire Wire Line
	6900 6350 6850 6350
NoConn ~ 1900 3850
$Comp
L Aardonyx-rescue:USB_OTG-aardonyx J17
U 1 1 5EA45059
P 1600 3650
F 0 "J17" H 1500 4117 50  0000 C CNN
F 1 "USB_OTG" H 1500 4026 50  0000 C CNN
F 2 "Aardonyx:USB_2.0_Micro-B_AMPHENOL_HPL_510" H 1750 3600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/10118194-0001LF/609-4618-1-ND/2785382" H 1750 3600 50  0001 C CNN
F 4 "CONN RCPT USB2.0 MICRO B SMD R/A" H 1600 3650 50  0001 C CNN "Description"
F 5 "609-4618-1-ND" H 1600 3650 50  0001 C CNN "Digikey PartNumber"
F 6 "10118194-0001LF" H 1600 3650 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 1600 3650 50  0001 C CNN "Maufaturer"
	1    1600 3650
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:FT2232H-aardonyx U1
U 1 1 5DB6C49B
P 5650 4550
F 0 "U1" H 4650 6650 50  0000 C CNN
F 1 "FT2232H" H 6550 2450 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5650 4550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/ftdi-future-technology-devices-international-ltd/FT2232HL-REEL/768-1024-1-ND/1986057" H 5650 4550 50  0001 C CNN
F 4 "IC USB HS DUAL UART/FIFO 64-LQFP" H 5650 4550 50  0001 C CNN "Description"
F 5 "768-1024-1-ND" H 5650 4550 50  0001 C CNN "Digikey PartNumber"
F 6 "FT2232HL-REEL" H 5650 4550 50  0001 C CNN "Manufactured Part Number"
F 7 "FTDI, Future Technology Devices International Ltd" H 5650 4550 50  0001 C CNN "Maufaturer"
	1    5650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3450 900  3450
Wire Wire Line
	900  3450 900  3550
Wire Wire Line
	1100 3550 900  3550
Connection ~ 900  3550
Wire Wire Line
	900  3550 900  3650
Wire Wire Line
	1100 3650 900  3650
Connection ~ 900  3650
Wire Wire Line
	900  3650 900  3750
Wire Wire Line
	1100 3750 900  3750
Connection ~ 900  3750
Wire Wire Line
	900  3750 900  3850
Wire Wire Line
	1100 3850 900  3850
Connection ~ 900  3850
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR049
U 1 1 5EAD8365
P 2400 4400
F 0 "#PWR049" H 2400 4150 50  0001 C CNN
F 1 "GND" H 2405 4227 50  0000 C CNN
F 2 "" H 2400 4400 50  0001 C CNN
F 3 "" H 2400 4400 50  0001 C CNN
	1    2400 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3850 900  4350
Wire Wire Line
	2400 4250 2750 4250
Wire Wire Line
	2400 4400 2400 4250
Connection ~ 2400 4250
$Comp
L Aardonyx-rescue:R_US-aardonyx R39
U 1 1 5EAF449B
P 3250 3650
F 0 "R39" V 3300 3800 50  0000 L CNN
F 1 "22E,0402" V 3150 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3290 3640 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-0722RL/311-22-0LRCT-ND/729509" H 3250 3650 50  0001 C CNN
F 4 "RES SMD 22 OHM 1% 1/16W 0402" H 3250 3650 50  0001 C CNN "Description"
F 5 "311-22.0LRCT-ND" H 3250 3650 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0402FR-0722RL" H 3250 3650 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 3250 3650 50  0001 C CNN "Maufaturer"
	1    3250 3650
	0    1    1    0   
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R38
U 1 1 5EAF50AE
P 3150 3750
F 0 "R38" V 3200 3950 50  0000 L CNN
F 1 "22E,0402" V 3200 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3190 3740 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-0722RL/311-22-0LRCT-ND/729509" H 3150 3750 50  0001 C CNN
F 4 "RES SMD 22 OHM 1% 1/16W 0402" H 3150 3750 50  0001 C CNN "Description"
F 5 "311-22.0LRCT-ND" H 3150 3750 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0402FR-0722RL" H 3150 3750 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 3150 3750 50  0001 C CNN "Maufaturer"
	1    3150 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3650 4450 3650
Wire Wire Line
	2750 3650 3100 3650
Wire Wire Line
	3300 3750 4450 3750
Wire Wire Line
	2400 3750 3000 3750
$Comp
L Aardonyx-rescue:Ferrite_Bead_Small-aardonyx FB5
U 1 1 5EEE5B58
P 2400 6900
F 0 "FB5" H 2300 6800 50  0000 C CNN
F 1 "600E,FB,0402" V 2500 6900 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 2330 6900 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/w%C3%BCrth-elektronik/742792651/732-1593-1-ND/1639537" H 2400 6900 50  0001 C CNN
F 4 "FERRITE BEAD 600 OHM 0402 1LN" H 2400 6900 50  0001 C CNN "Description"
F 5 "732-2388-1-ND" H 2400 6900 50  0001 C CNN "Digikey PartNumber"
F 6 "7427927291" H 2400 6900 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 2400 6900 50  0001 C CNN "Maufaturer"
	1    2400 6900
	0    1    1    0   
$EndComp
Connection ~ 4350 6850
Wire Wire Line
	5250 6850 5250 7050
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR086
U 1 1 5EF022C6
P 5250 7050
F 0 "#PWR086" H 5250 6800 50  0001 C CNN
F 1 "GND" H 5255 6877 50  0000 C CNN
F 2 "" H 5250 7050 50  0001 C CNN
F 3 "" H 5250 7050 50  0001 C CNN
	1    5250 7050
	1    0    0    -1  
$EndComp
Connection ~ 5250 6850
$Comp
L power:GNDA #PWR063
U 1 1 5EF0F8FA
P 5050 7050
F 0 "#PWR063" H 5050 6800 50  0001 C CNN
F 1 "GNDA" H 5055 6877 50  0000 C CNN
F 2 "" H 5050 7050 50  0001 C CNN
F 3 "" H 5050 7050 50  0001 C CNN
	1    5050 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6750 5050 7050
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR037
U 1 1 5EF29E34
P 1800 6900
F 0 "#PWR037" H 1800 6650 50  0001 C CNN
F 1 "GND" H 1805 6727 50  0000 C CNN
F 2 "" H 1800 6900 50  0001 C CNN
F 3 "" H 1800 6900 50  0001 C CNN
	1    1800 6900
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR051
U 1 1 5EF2A4EC
P 2850 6900
F 0 "#PWR051" H 2850 6650 50  0001 C CNN
F 1 "GNDA" V 2855 6772 50  0000 R CNN
F 2 "" H 2850 6900 50  0001 C CNN
F 3 "" H 2850 6900 50  0001 C CNN
	1    2850 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 6900 2300 6900
Wire Wire Line
	2500 6900 2850 6900
Text Notes 6350 6800 0    50   ~ 0
64PIN LQFP
$Comp
L Aardonyx-rescue:93LC56BT-I_OT U16
U 1 1 5EF634C6
P 3050 5400
F 0 "U16" H 3050 5775 50  0000 C CNN
F 1 "93LC56BT-I_OT" H 3050 5684 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3500 5650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/microchip-technology/93LC56BT-I-OT/93LC56BT-I-OTCT-ND/857632" H 3050 5400 50  0001 C CNN
F 4 "IC EEPROM 2K SPI 2MHZ SOT23-6" H 3050 5400 50  0001 C CNN "Description"
F 5 "93LC56BT-I/OTCT-ND" H 3050 5400 50  0001 C CNN "Digikey PartNumber"
F 6 "93LC56BT-I/OTCT-ND" H 3050 5400 50  0001 C CNN "Field4"
F 7 "93LC56BT-I/OT" H 3050 5400 50  0001 C CNN "Manufactured Part Number"
F 8 "Microchip Technology" H 3050 5400 50  0001 C CNN "Maufaturer"
	1    3050 5400
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR046
U 1 1 5EF65BE8
P 2350 5300
F 0 "#PWR046" H 2500 5250 50  0001 C CNN
F 1 "V3P3" H 2355 5475 50  0000 C CNN
F 2 "" H 2350 5300 50  0001 C CNN
F 3 "" H 2350 5300 50  0001 C CNN
	1    2350 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 5300 2650 5300
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR043
U 1 1 5EF741A7
P 2300 5500
F 0 "#PWR043" H 2300 5250 50  0001 C CNN
F 1 "GND" H 2305 5327 50  0000 C CNN
F 2 "" H 2300 5500 50  0001 C CNN
F 3 "" H 2300 5500 50  0001 C CNN
	1    2300 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 5500 2650 5500
Wire Wire Line
	3450 5250 4450 5250
Wire Wire Line
	3450 5350 4450 5350
Wire Wire Line
	3450 5450 3800 5450
Wire Wire Line
	3450 5550 3800 5550
Wire Wire Line
	3800 5550 3800 5450
Connection ~ 3800 5450
Wire Wire Line
	3800 5450 4450 5450
$Comp
L Aardonyx-rescue:C_Small-aardonyx C92
U 1 1 5F000A65
P 1900 5400
F 0 "C92" H 1900 5500 50  0000 L CNN
F 1 "0.1UF,0402" V 1800 5200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1900 5400 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 1900 5400 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 1900 5400 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 1900 5400 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 1900 5400 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 1900 5400 50  0001 C CNN "Maufaturer"
	1    1900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5100 1900 5300
$Comp
L Aardonyx-rescue:V3P3-aardonyx #PWR038
U 1 1 5F002B6B
P 1900 5100
F 0 "#PWR038" H 2050 5050 50  0001 C CNN
F 1 "V3P3" H 1905 5275 50  0000 C CNN
F 2 "" H 1900 5100 50  0001 C CNN
F 3 "" H 1900 5100 50  0001 C CNN
	1    1900 5100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR039
U 1 1 5F02E798
P 1900 5650
F 0 "#PWR039" H 1900 5400 50  0001 C CNN
F 1 "GND" H 1905 5477 50  0000 C CNN
F 2 "" H 1900 5650 50  0001 C CNN
F 3 "" H 1900 5650 50  0001 C CNN
	1    1900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5650 1900 5500
Text Notes 2650 5700 0    50   ~ 0
2Kb 16bit Serial EEPROM
Text Notes 2850 5800 0    50   ~ 0
SOT23-6
$Comp
L Aardonyx-rescue:USB_B_6PIN J1
U 1 1 5F17E5C8
P 1150 1800
F 0 "J1" H 1203 2267 50  0000 C CNN
F 1 "USB_B_6PIN" H 1203 2176 50  0000 C CNN
F 2 "Aardonyx:USB_2.0_Micro-B_AMPHENOL_HPL_510" H 1300 1750 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/61729-0010BLF/609-1039-ND/1001353" H 1300 1750 50  0001 C CNN
F 4 "CONN RCPT USB2.0 TYPEB 4POS R/A" H 1150 1800 50  0001 C CNN "Description"
F 5 "609-1039-ND" H 1150 1800 50  0001 C CNN "Digikey PartNumber"
F 6 "	61729-0010BLF" H 1150 1800 50  0001 C CNN "Manufactured Part Number"
F 7 "	Amphenol ICC (FCI)" H 1150 1800 50  0001 C CNN "Maufaturer"
	1    1150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1600 1550 1600
$Comp
L Aardonyx-rescue:C_Small-aardonyx C91
U 1 1 5F181491
P 1900 1200
F 0 "C91" H 1800 1300 50  0000 L CNN
F 1 "4.7UF,1206" V 2000 850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1900 1200 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/T491A475K016AT/399-3697-1-ND/819022" H 1900 1200 50  0001 C CNN
F 4 "	CAP TANT 4.7UF 10% 16V 1206" H 1900 1200 50  0001 C CNN "Description"
F 5 "	399-3697-1-ND" H 1900 1200 50  0001 C CNN "Digikey PartNumber"
F 6 "	T491A475K016AT" H 1900 1200 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 1900 1200 50  0001 C CNN "Maufaturer"
	1    1900 1200
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR041
U 1 1 5F181497
P 2050 1200
F 0 "#PWR041" H 2050 950 50  0001 C CNN
F 1 "GND" H 2055 1027 50  0000 C CNN
F 2 "" H 2050 1200 50  0001 C CNN
F 3 "" H 2050 1200 50  0001 C CNN
	1    2050 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 1200 2050 1200
Wire Wire Line
	1550 1200 1550 1600
$Comp
L Aardonyx-rescue:Ferrite_Bead_Small-aardonyx FB4
U 1 1 5F1814A5
P 1550 1050
F 0 "FB4" H 1450 950 50  0000 C CNN
F 1 "600E,FB,0402" V 1650 1050 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 1480 1050 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/w%C3%BCrth-elektronik/742792651/732-1593-1-ND/1639537" H 1550 1050 50  0001 C CNN
F 4 "FERRITE BEAD 600 OHM 0402 1LN" H 1550 1050 50  0001 C CNN "Description"
F 5 "732-2388-1-ND" H 1550 1050 50  0001 C CNN "Digikey PartNumber"
F 6 "7427927291" H 1550 1050 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 1550 1050 50  0001 C CNN "Maufaturer"
	1    1550 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 1150 1550 1200
Connection ~ 1550 1200
Wire Wire Line
	1550 850  1550 950 
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR02
U 1 1 5F1918CD
P 1000 2700
F 0 "#PWR02" H 1000 2450 50  0001 C CNN
F 1 "GND" H 1005 2527 50  0000 C CNN
F 2 "" H 1000 2700 50  0001 C CNN
F 3 "" H 1000 2700 50  0001 C CNN
	1    1000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2200 1000 2350
Wire Wire Line
	1450 2000 1500 2000
Wire Wire Line
	1500 2000 1500 2350
Wire Wire Line
	1500 2350 1100 2350
Connection ~ 1000 2350
Wire Wire Line
	1000 2350 1000 2700
Wire Wire Line
	1100 2200 1100 2350
Connection ~ 1100 2350
Wire Wire Line
	1100 2350 1000 2350
Text Label 2100 3650 0    50   ~ 0
USB_DM
Text Label 2100 3750 0    50   ~ 0
USB_DP
Wire Wire Line
	1550 1200 1800 1200
Text Label 1700 1750 0    50   ~ 0
USB_DP
Text Label 1700 1850 0    50   ~ 0
USB_DM
$Comp
L Aardonyx-rescue:VBUS_USB1 #PWR032
U 1 1 5F2114E5
P 1550 850
F 0 "#PWR032" H 1700 800 50  0001 C CNN
F 1 "VBUS_USB1" H 1555 1025 50  0000 C CNN
F 2 "" H 1550 850 50  0001 C CNN
F 3 "" H 1550 850 50  0001 C CNN
	1    1550 850 
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:VBUS_USB2 #PWR040
U 1 1 5F2124AB
P 2000 2700
F 0 "#PWR040" H 2150 2650 50  0001 C CNN
F 1 "VBUS_USB2" H 2005 2875 50  0000 C CNN
F 2 "" H 2000 2700 50  0001 C CNN
F 3 "" H 2000 2700 50  0001 C CNN
	1    2000 2700
	1    0    0    -1  
$EndComp
Connection ~ 10150 5450
Wire Wire Line
	10150 5450 10150 5650
$Comp
L Aardonyx-rescue:Conn_1x3_M-aardonyx J?
U 1 1 5F28F40A
P 2950 1650
AR Path="/5D8B37DE/5F28F40A" Ref="J?"  Part="1" 
AR Path="/5D8B3761/5F28F40A" Ref="J18"  Part="1" 
F 0 "J18" H 2950 1850 50  0000 L CNN
F 1 "Conn_1x3_M" H 2600 1450 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 2950 1650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/68000-203HLF/609-3464-ND/2023305" H 2950 1650 50  0001 C CNN
F 4 "CONN HEADER VERT 3POS 2.54MM" H 2950 1650 50  0001 C CNN "Description"
F 5 "609-3464-ND" H 2950 1650 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-203HLF" H 2950 1650 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 2950 1650 50  0001 C CNN "Maufaturer"
	1    2950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1650 2750 1650
Text Notes 1900 2200 0    50   ~ 0
Short 1 & 2, VBUS = VBUS_USB1\nShort 2 & 3, VBUS = VBUS_USB2
Wire Wire Line
	2250 1750 2750 1750
Wire Wire Line
	1700 1750 1450 1750
Wire Wire Line
	1700 1850 1450 1850
$Comp
L Aardonyx-rescue:VBUS_USB1 #PWR047
U 1 1 5F343AAF
P 2400 1550
F 0 "#PWR047" H 2550 1500 50  0001 C CNN
F 1 "VBUS_USB1" H 2405 1725 50  0000 C CNN
F 2 "" H 2400 1550 50  0001 C CNN
F 3 "" H 2400 1550 50  0001 C CNN
	1    2400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1550 2750 1550
$Comp
L Aardonyx-rescue:VBUS_USB2 #PWR042
U 1 1 5F345441
P 2250 1750
F 0 "#PWR042" H 2400 1700 50  0001 C CNN
F 1 "VBUS_USB2" H 2255 1924 50  0000 C CNN
F 2 "" H 2250 1750 50  0001 C CNN
F 3 "" H 2250 1750 50  0001 C CNN
	1    2250 1750
	-1   0    0    1   
$EndComp
$Comp
L Aardonyx-rescue:VBUS #PWR044
U 1 1 5F3CB671
P 2350 1650
F 0 "#PWR044" H 2500 1600 50  0001 C CNN
F 1 "VBUS" V 2355 1779 50  0000 L CNN
F 2 "" H 2350 1650 50  0001 C CNN
F 3 "" H 2350 1650 50  0001 C CNN
	1    2350 1650
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R50
U 1 1 5F4FB4BE
P 8200 5350
F 0 "R50" H 8200 5550 50  0000 L CNN
F 1 "4.7KE,0402" V 8100 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8240 5340 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0402JR-074K7L/311-4-7KJRTR-ND/726477" H 8200 5350 50  0001 C CNN
F 4 "NA" H 8300 5200 50  0000 C CNN "Field4"
F 5 "RES SMD 4.7K OHM 5% 1/16W 0402" H 8200 5350 50  0001 C CNN "Description"
F 6 "311-4.7KJRTR-ND" H 8200 5350 50  0001 C CNN "Digikey PartNumber"
F 7 "RC0402JR-074K7L" H 8200 5350 50  0001 C CNN "Manufactured Part Number"
F 8 "Yageo" H 8200 5350 50  0001 C CNN "Maufaturer"
	1    8200 5350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R52
U 1 1 5F4FC1AE
P 8200 5950
F 0 "R52" H 8200 6150 50  0000 L CNN
F 1 "10KE,0402" V 8100 5800 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8240 5940 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 8200 5950 50  0001 C CNN
F 4 "NA" H 8300 5800 50  0000 C CNN "Field4"
F 5 "RES SMD 10K OHM 1% 1/8W 0805" H 8200 5950 50  0001 C CNN "Description"
F 6 "311-10.0KCRCT-ND" H 8200 5950 50  0001 C CNN "Digikey PartNumber"
F 7 "RC0805FR-0710KL" H 8200 5950 50  0001 C CNN "Manufactured Part Number"
F 8 "Yageo" H 8200 5950 50  0001 C CNN "Maufaturer"
	1    8200 5950
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:VBUS #PWR0164
U 1 1 5F511686
P 8200 5200
F 0 "#PWR0164" H 8350 5150 50  0001 C CNN
F 1 "VBUS" H 8205 5375 50  0000 C CNN
F 2 "" H 8200 5200 50  0001 C CNN
F 3 "" H 8200 5200 50  0001 C CNN
	1    8200 5200
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-aardonyx #PWR0165
U 1 1 5F5143E7
P 8200 6100
F 0 "#PWR0165" H 8200 5850 50  0001 C CNN
F 1 "GND" H 8205 5927 50  0000 C CNN
F 2 "" H 8200 6100 50  0001 C CNN
F 3 "" H 8200 6100 50  0001 C CNN
	1    8200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5600 8200 5600
Wire Wire Line
	8200 5600 8200 5500
Wire Wire Line
	8200 5600 8200 5800
Connection ~ 8200 5600
Text Label 7650 5600 0    50   ~ 0
PWRSAV
Wire Wire Line
	7350 6050 6850 6050
Text Label 7350 6050 0    50   ~ 0
PWRSAV
$Comp
L Aardonyx-rescue:TestPoint-aardonyx TP6
U 1 1 5F54E4A3
P 3050 4450
F 0 "TP6" V 3050 4750 50  0000 R CNN
F 1 "TestPoint" V 3000 4950 50  0000 R CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.54mm_Drill0.7mm" H 3250 4450 50  0001 C CNN
F 3 "" H 3250 4450 50  0001 C CNN
	1    3050 4450
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R49
U 1 1 5F59FAB5
P 2800 4700
F 0 "R49" V 2850 4800 50  0000 L CNN
F 1 "0E, 0402" V 2900 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2840 4690 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/vishay-dale/CRCW04020000Z0ED/541-0-0JCT-ND/1182611" H 2800 4700 50  0001 C CNN
F 4 "RES SMD 0 OHM JUMPER 1/16W 0402" H 2800 4700 50  0001 C CNN "Description"
F 5 "541-0.0JCT-ND" H 2800 4700 50  0001 C CNN "Digikey PartNumber"
F 6 "CRCW04020000Z0ED" H 2800 4700 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay Dale" H 2800 4700 50  0001 C CNN "Maufaturer"
	1    2800 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4700 3050 4700
Wire Wire Line
	3050 4700 3050 4450
Wire Wire Line
	3050 4450 3800 4450
Connection ~ 3050 4450
Wire Wire Line
	2250 4700 2650 4700
Text Label 2400 4700 0    39   ~ 0
RESET
Text HLabel 2250 4700 0    50   Input ~ 0
RESET
Text Notes 750  3100 0    60   ~ 0
Use J1 for high loads
Text Notes 1150 4200 0    60   ~ 0
Use J17 for low \npower applications\n
Wire Notes Line
	1850 2000 3250 2000
Wire Notes Line
	3250 2000 3250 2250
Wire Notes Line
	3250 2250 1850 2250
Wire Notes Line
	1850 2250 1850 2000
Wire Notes Line
	1100 4000 2100 4000
Wire Notes Line
	2100 4000 2100 4250
Wire Notes Line
	2100 4250 1100 4250
Wire Notes Line
	1100 4250 1100 4000
Wire Notes Line
	650  3000 1800 3000
Wire Notes Line
	1800 3000 1800 3150
Wire Notes Line
	1800 3150 650  3150
Wire Notes Line
	650  3150 650  3000
$EndSCHEMATC
