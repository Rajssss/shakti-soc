EESchema Schematic File Version 4
LIBS:Aardonyx-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "AARDONYX_DEVELOPMENT_BOARD"
Date ""
Rev "R1V0"
Comp "IIT_MADRAS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 2250 4600
$Comp
L Aardonyx-rescue:V12P0-aardonyx #PWR036
U 1 1 5E79C895
P 2250 4450
AR Path="/5DB8A7DC/5E79C895" Ref="#PWR036"  Part="1" 
AR Path="/5E6E93B2/5E79C895" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 2400 4400 50  0001 C CNN
F 1 "V12P0" H 2255 4625 50  0000 C CNN
F 2 "" H 2250 4450 50  0001 C CNN
F 3 "" H 2250 4450 50  0001 C CNN
	1    2250 4450
	1    0    0    -1  
$EndComp
Connection ~ 8500 4900
Connection ~ 8500 5500
Wire Wire Line
	8500 5500 8500 5800
Wire Wire Line
	8100 5500 8500 5500
Connection ~ 8100 5500
Wire Wire Line
	8100 5300 8100 5500
Wire Wire Line
	8500 5500 8500 5300
Wire Wire Line
	7700 5500 8100 5500
Wire Wire Line
	7700 5300 7700 5500
Wire Wire Line
	7700 4900 8100 4900
Connection ~ 7700 4900
Wire Wire Line
	7700 5100 7700 4900
Wire Wire Line
	8100 4900 8500 4900
Connection ~ 8100 4900
Wire Wire Line
	8100 5100 8100 4900
Connection ~ 7250 4900
Wire Wire Line
	8500 4900 8500 5100
$Comp
L Aardonyx-rescue:C_Small-aardonyx C46
U 1 1 5DC20A36
P 8500 5200
AR Path="/5DB8A7DC/5DC20A36" Ref="C46"  Part="1" 
AR Path="/5E6E93B2/5DC20A36" Ref="C?"  Part="1" 
F 0 "C46" H 8500 5300 50  0000 L CNN
F 1 "0.1UF,0402" V 8550 4750 50  0000 L CNN
F 2 "" H 8500 5200 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 8500 5200 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 8500 5200 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 8500 5200 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 8500 5200 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 8500 5200 50  0001 C CNN "Maufaturer"
	1    8500 5200
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C45
U 1 1 5DC1FFB2
P 8100 5200
AR Path="/5DB8A7DC/5DC1FFB2" Ref="C45"  Part="1" 
AR Path="/5E6E93B2/5DC1FFB2" Ref="C?"  Part="1" 
F 0 "C45" H 8100 5300 50  0000 L CNN
F 1 "22UF,1206" V 8200 4800 50  0000 L CNN
F 2 "" H 8100 5200 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/samsung-electro-mechanics/CL31A226KAHNNNE/1276-3047-1-ND/3891133" H 8100 5200 50  0001 C CNN
F 4 "CAP CER 22UF 25V X5R 1206" H 8100 5200 50  0001 C CNN "Description"
F 5 "1276-3047-1-ND" H 8100 5200 50  0001 C CNN "Digikey PartNumber"
F 6 "CL31A226KAHNNNE" H 8100 5200 50  0001 C CNN "Manufactured Part Number"
F 7 "Samsung Electro-Mechanics" H 8100 5200 50  0001 C CNN "Maufaturer"
	1    8100 5200
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C43
U 1 1 5DC1F79E
P 7700 5200
AR Path="/5DB8A7DC/5DC1F79E" Ref="C43"  Part="1" 
AR Path="/5E6E93B2/5DC1F79E" Ref="C?"  Part="1" 
F 0 "C43" H 7700 5300 50  0000 L CNN
F 1 "22UF,1206" V 7750 4750 50  0000 L CNN
F 2 "" H 7700 5200 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/samsung-electro-mechanics/CL31A226KAHNNNE/1276-3047-1-ND/3891133" H 7700 5200 50  0001 C CNN
F 4 "CAP CER 22UF 25V X5R 1206" H 7700 5200 50  0001 C CNN "Description"
F 5 "1276-3047-1-ND" H 7700 5200 50  0001 C CNN "Digikey PartNumber"
F 6 "CL31A226KAHNNNE" H 7700 5200 50  0001 C CNN "Manufactured Part Number"
F 7 "Samsung Electro-Mechanics" H 7700 5200 50  0001 C CNN "Maufaturer"
	1    7700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5500 4450 5600
Wire Wire Line
	4050 5200 4050 5600
Wire Wire Line
	4450 5800 4450 5950
Wire Wire Line
	4050 5800 4050 5950
Wire Wire Line
	4450 6100 4450 5950
Wire Wire Line
	4050 5950 3750 5950
Connection ~ 4050 5950
Wire Wire Line
	3750 5950 3750 5500
Connection ~ 5300 5950
Wire Wire Line
	5450 5950 5300 5950
Wire Wire Line
	5450 5800 5450 5950
Wire Wire Line
	5150 5950 5300 5950
Wire Wire Line
	5150 5800 5150 5950
Wire Wire Line
	5300 6100 5300 5950
Wire Wire Line
	7250 5500 7250 5650
Connection ~ 7250 5500
Connection ~ 6900 5500
Wire Wire Line
	7250 5500 7250 5350
Wire Wire Line
	6900 5500 7250 5500
Connection ~ 6900 4900
Wire Wire Line
	7250 4900 7250 5050
Wire Wire Line
	6900 4900 6900 5100
Wire Wire Line
	6800 4900 6900 4900
Wire Wire Line
	6900 5500 6900 5300
$Comp
L Aardonyx-rescue:C_Small-aardonyx C41
U 1 1 5DC0C5AC
P 6900 5200
AR Path="/5DB8A7DC/5DC0C5AC" Ref="C41"  Part="1" 
AR Path="/5E6E93B2/5DC0C5AC" Ref="C?"  Part="1" 
F 0 "C41" H 6992 5246 50  0000 L CNN
F 1 "15PF,0805" V 6850 4750 50  0000 L CNN
F 2 "" H 6900 5200 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/w%C3%BCrth-elektronik/885012007029/732-7828-1-ND/5454455" H 6900 5200 50  0001 C CNN
F 4 "CAP CER 15PF 25V C0G/NP0 0805" H 6900 5200 50  0001 C CNN "Description"
F 5 "732-7828-1-ND" H 6900 5200 50  0001 C CNN "Digikey PartNumber"
F 6 "885012007029" H 6900 5200 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 6900 5200 50  0001 C CNN "Maufaturer"
	1    6900 5200
	1    0    0    -1  
$EndComp
Connection ~ 6200 4900
$Comp
L Aardonyx-rescue:L-aardonyx L2
U 1 1 5DC0AFF7
P 6650 4900
AR Path="/5DB8A7DC/5DC0AFF7" Ref="L2"  Part="1" 
AR Path="/5E6E93B2/5DC0AFF7" Ref="L?"  Part="1" 
F 0 "L2" V 6700 5050 50  0000 C CNN
F 1 "3.3UH" V 6600 4900 50  0000 C CNN
F 2 "" H 6650 4900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/78477033/732-6781-2-ND/5168775" H 6650 4900 50  0001 C CNN
F 4 "FIXED IND 3.3UH 6.6A 17 MOHM SMD" H 6650 4900 50  0001 C CNN "Description"
F 5 "732-6781-2-ND" H 6650 4900 50  0001 C CNN "Digikey PartNumber"
F 6 "78477033" H 6650 4900 50  0001 C CNN "Manufactured Part Number"
F 7 "Wurth Elektronik" H 6650 4900 50  0001 C CNN "Maufaturer"
	1    6650 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 4900 6200 4850
Wire Wire Line
	6200 4600 6200 4650
Wire Wire Line
	5850 4600 6200 4600
$Comp
L Aardonyx-rescue:C_Small-aardonyx C40
U 1 1 5DC07BC9
P 6200 4750
AR Path="/5DB8A7DC/5DC07BC9" Ref="C40"  Part="1" 
AR Path="/5E6E93B2/5DC07BC9" Ref="C?"  Part="1" 
F 0 "C40" H 6050 4850 50  0000 L CNN
F 1 "0.1UF,0402" H 6200 4700 50  0000 L CNN
F 2 "" H 6200 4750 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 6200 4750 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 6200 4750 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 6200 4750 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 6200 4750 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 6200 4750 50  0001 C CNN "Maufaturer"
	1    6200 4750
	1    0    0    -1  
$EndComp
Connection ~ 2250 5150
Wire Wire Line
	2250 5150 2250 5300
Wire Wire Line
	2250 5150 2250 4950
Wire Wire Line
	2750 5150 2250 5150
Wire Wire Line
	2750 4950 2750 5150
Wire Wire Line
	2750 4600 3200 4600
Connection ~ 2750 4600
Wire Wire Line
	2750 4750 2750 4600
Wire Wire Line
	2250 4600 2750 4600
Wire Wire Line
	2250 4600 2250 4750
$Comp
L Aardonyx-rescue:C_Small-aardonyx C33
U 1 1 5DC04203
P 2250 4850
AR Path="/5DB8A7DC/5DC04203" Ref="C33"  Part="1" 
AR Path="/5E6E93B2/5DC04203" Ref="C?"  Part="1" 
F 0 "C33" H 2100 4950 50  0000 L CNN
F 1 "22UF,1206" V 2400 4600 50  0000 L CNN
F 2 "" H 2250 4850 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/samsung-electro-mechanics/CL31A226KAHNNNE/1276-3047-1-ND/3891133" H 2250 4850 50  0001 C CNN
F 4 "CAP CER 22UF 25V X5R 1206" H 2250 4850 50  0001 C CNN "Description"
F 5 "1276-3047-1-ND" H 2250 4850 50  0001 C CNN "Digikey PartNumber"
F 6 "CL31A226KAHNNNE" H 2250 4850 50  0001 C CNN "Manufactured Part Number"
F 7 "Samsung Electro-Mechanics" H 2250 4850 50  0001 C CNN "Maufaturer"
	1    2250 4850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C34
U 1 1 5DC03EB5
P 2750 4850
AR Path="/5DB8A7DC/5DC03EB5" Ref="C34"  Part="1" 
AR Path="/5E6E93B2/5DC03EB5" Ref="C?"  Part="1" 
F 0 "C34" H 2750 4950 50  0000 L CNN
F 1 "0.1UF,0402" V 2800 4350 50  0000 L CNN
F 2 "" H 2750 4850 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 2750 4850 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 2750 4850 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 2750 4850 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 2750 4850 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 2750 4850 50  0001 C CNN "Maufaturer"
	1    2750 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4600 4750 4600
Connection ~ 3200 4600
Wire Wire Line
	3200 4900 3200 4600
Wire Wire Line
	3350 4900 3200 4900
Connection ~ 3750 4900
Wire Wire Line
	3650 4900 3750 4900
$Comp
L Aardonyx-rescue:R_US-aardonyx P_R25
U 1 1 5DC02AA4
P 3500 4900
AR Path="/5DB8A7DC/5DC02AA4" Ref="P_R25"  Part="1" 
AR Path="/5E6E93B2/5DC02AA4" Ref="R?"  Part="1" 
F 0 "P_R25" V 3600 4750 50  0000 L CNN
F 1 "10KE,0805" V 3400 4850 50  0000 L CNN
F 2 "" V 3540 4890 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 3500 4900 50  0001 C CNN
F 4 "RES SMD 10K OHM 1% 1/8W 0805" H 3500 4900 50  0001 C CNN "Description"
F 5 "311-10.0KCRCT-ND" H 3500 4900 50  0001 C CNN "Digikey PartNumber"
F 6 "RC0805FR-0710KL" H 3500 4900 50  0001 C CNN "Manufactured Part Number"
F 7 "Yageo" H 3500 4900 50  0001 C CNN "Maufaturer"
	1    3500 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 5200 3750 4900
Wire Wire Line
	3750 4900 4750 4900
$Comp
L Aardonyx-rescue:R_US-aardonyx P_R26
U 1 1 5DC003B9
P 3750 5350
AR Path="/5DB8A7DC/5DC003B9" Ref="P_R26"  Part="1" 
AR Path="/5E6E93B2/5DC003B9" Ref="R?"  Part="1" 
F 0 "P_R26" H 3818 5396 50  0000 L CNN
F 1 "10KE,0805" H 3818 5305 50  0000 L CNN
F 2 "" V 3790 5340 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/yageo/RC0805FR-0710KL/311-10-0KCRCT-ND/730482" H 3750 5350 50  0001 C CNN
F 4 "NA" H 3600 5350 50  0000 C CNN "Field4"
F 5 "RES SMD 10K OHM 1% 1/8W 0805" H 3750 5350 50  0001 C CNN "Description"
F 6 "311-10.0KCRCT-ND" H 3750 5350 50  0001 C CNN "Digikey PartNumber"
F 7 "RC0805FR-0710KL" H 3750 5350 50  0001 C CNN "Manufactured Part Number"
F 8 "Yageo" H 3750 5350 50  0001 C CNN "Maufaturer"
	1    3750 5350
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C35
U 1 1 5DBFC886
P 4050 5700
AR Path="/5DB8A7DC/5DBFC886" Ref="C35"  Part="1" 
AR Path="/5E6E93B2/5DBFC886" Ref="C?"  Part="1" 
F 0 "C35" H 4050 5800 50  0000 L CNN
F 1 "1UF,0805" V 4000 5300 50  0000 L CNN
F 2 "" H 4050 5700 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/C0805C105J3RACTU/399-10060-6-ND/3739580" H 4050 5700 50  0001 C CNN
F 4 "CAP CER 1UF 25V X7R 0805" H 4050 5700 50  0001 C CNN "Description"
F 5 "399-10060-6-ND" H 4050 5700 50  0001 C CNN "Digikey PartNumber"
F 6 "C0805C105J3RACTU" H 4050 5700 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 4050 5700 50  0001 C CNN "Maufaturer"
	1    4050 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5200 4750 5200
$Comp
L Aardonyx-rescue:C_Small-aardonyx C36
U 1 1 5DBFC58F
P 4450 5700
AR Path="/5DB8A7DC/5DBFC58F" Ref="C36"  Part="1" 
AR Path="/5E6E93B2/5DBFC58F" Ref="C?"  Part="1" 
F 0 "C36" H 4450 5800 50  0000 L CNN
F 1 "7500PF,0603" V 4600 5200 50  0000 L CNN
F 2 "" H 4450 5700 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/C0603C752J3GAC7867/399-9980-1-ND/3736979" H 4450 5700 50  0001 C CNN
F 4 "CAP CER 7500PF 25V C0G/NP0 0603" H 4450 5700 50  0001 C CNN "Description"
F 5 "399-9980-1-ND " H 4450 5700 50  0001 C CNN "Digikey PartNumber"
F 6 "C0603C752J3GAC7867 " H 4450 5700 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 4450 5700 50  0001 C CNN "Maufaturer"
	1    4450 5700
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:V5P0-aardonyx #PWR048
U 1 1 5DC202F3
P 8150 4100
AR Path="/5DB8A7DC/5DC202F3" Ref="#PWR048"  Part="1" 
AR Path="/5E6E93B2/5DC202F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR048" H 8300 4050 50  0001 C CNN
F 1 "V5P0" H 8145 4275 50  0000 C CNN
F 2 "" H 8150 4100 50  0001 C CNN
F 3 "" H 8150 4100 50  0001 C CNN
	1    8150 4100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:TPS54627DDAR-aardonyx U4
U 1 1 5DC17243
P 5300 5050
AR Path="/5DB8A7DC/5DC17243" Ref="U4"  Part="1" 
AR Path="/5E6E93B2/5DC17243" Ref="U?"  Part="1" 
F 0 "U4" H 5300 5815 50  0000 C CNN
F 1 "TPS54627DDAR" H 5300 5724 50  0000 C CNN
F 2 "" H 5300 5000 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/texas-instruments/TPS54627DDAR/296-40808-1-ND/5178685" H 5300 5000 50  0001 C CNN
F 4 "IC REG BUCK ADJUSTABLE 6A 8SOPWR" H 5300 5050 50  0001 C CNN "Description"
F 5 "296-40808-1-ND" H 5300 5050 50  0001 C CNN "Digikey PartNumber"
F 6 "TPS54627DDAR" H 5300 5050 50  0001 C CNN "Manufactured Part Number"
F 7 "Texas Instruments" H 5300 5050 50  0001 C CNN "Maufaturer"
	1    5300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1600 4000 1600
Connection ~ 3850 1800
Wire Wire Line
	3850 1800 3850 1950
Wire Wire Line
	3850 1800 3700 1800
Wire Wire Line
	3850 1700 3850 1800
Wire Wire Line
	3700 1700 3850 1700
Wire Wire Line
	5450 1600 5450 1750
$Comp
L Aardonyx-rescue:V12P0-aardonyx #PWR045
U 1 1 5E820603
P 7750 1350
AR Path="/5DB8A7DC/5E820603" Ref="#PWR045"  Part="1" 
AR Path="/5E6E93B2/5E820603" Ref="#PWR?"  Part="1" 
F 0 "#PWR045" H 7900 1300 50  0001 C CNN
F 1 "V12P0" H 7755 1525 50  0000 C CNN
F 2 "" H 7750 1350 50  0001 C CNN
F 3 "" H 7750 1350 50  0001 C CNN
	1    7750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2150 5450 1950
$Comp
L Aardonyx-rescue:C_Small-aardonyx C38
U 1 1 5E824D85
P 5450 1850
AR Path="/5DB8A7DC/5E824D85" Ref="C38"  Part="1" 
AR Path="/5E6E93B2/5E824D85" Ref="C?"  Part="1" 
F 0 "C38" H 5450 1950 50  0000 L CNN
F 1 "1UF,0805" V 5550 1500 50  0000 L CNN
F 2 "" H 5450 1850 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/C0805C105J3RACTU/399-10060-6-ND/3739580" H 5450 1850 50  0001 C CNN
F 4 "CAP CER 1UF 25V X7R 0805" H 5450 1850 50  0001 C CNN "Description"
F 5 "399-10060-6-ND" H 5450 1850 50  0001 C CNN "Digikey PartNumber"
F 6 "C0805C105J3RACTU" H 5450 1850 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 5450 1850 50  0001 C CNN "Maufaturer"
	1    5450 1850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C39
U 1 1 5E8299D0
P 5800 1850
AR Path="/5DB8A7DC/5E8299D0" Ref="C39"  Part="1" 
AR Path="/5E6E93B2/5E8299D0" Ref="C?"  Part="1" 
F 0 "C39" H 5800 1950 50  0000 L CNN
F 1 "0.1UF,0402" V 5900 1450 50  0000 L CNN
F 2 "" H 5800 1850 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 5800 1850 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 5800 1850 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 5800 1850 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 5800 1850 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 5800 1850 50  0001 C CNN "Maufaturer"
	1    5800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1600 5800 1750
Connection ~ 5450 1600
Wire Wire Line
	5450 2150 5800 2150
Wire Wire Line
	5800 1950 5800 2150
Connection ~ 5800 1600
Wire Wire Line
	5450 1600 5800 1600
Wire Wire Line
	5800 2150 5800 2200
Connection ~ 5800 2150
Wire Wire Line
	4050 5950 4450 5950
Connection ~ 4450 5950
Wire Wire Line
	4750 5500 4450 5500
Wire Wire Line
	5850 5500 6900 5500
Wire Wire Line
	6200 4900 6500 4900
Wire Wire Line
	5850 4900 6200 4900
Wire Wire Line
	7250 4900 7700 4900
Wire Wire Line
	6900 4900 7250 4900
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
Text Notes 4600 3650 0    79   Italic 0
SWITCHING REGULATOR FOR  V5P0 POWER RAIL
Text Notes 5250 900  0    79   Italic 0
DC JACK POWER SUPPLY\n
Wire Wire Line
	5100 1600 5100 1750
Wire Wire Line
	5100 1600 5450 1600
Wire Wire Line
	5100 1950 5100 2150
Wire Wire Line
	5100 2150 5450 2150
Connection ~ 5450 2150
$Comp
L Aardonyx-rescue:Conn_1x3_M-aardonyx J?
U 1 1 5E52467C
P 8750 4200
AR Path="/5D8B37DE/5E52467C" Ref="J?"  Part="1" 
AR Path="/5DB8A7DC/5E52467C" Ref="J6"  Part="1" 
AR Path="/5E6E93B2/5E52467C" Ref="J?"  Part="1" 
F 0 "J6" H 8750 4400 50  0000 L CNN
F 1 "Conn_1x3_M" H 8650 4000 50  0000 L CNN
F 2 "" H 8750 4200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/68000-203HLF/609-3464-ND/2023305" H 8750 4200 50  0001 C CNN
F 4 "CONN HEADER VERT 3POS 2.54MM" H 8750 4200 50  0001 C CNN "Description"
F 5 "609-3464-ND" H 8750 4200 50  0001 C CNN "Digikey PartNumber"
F 6 "68000-203HLF" H 8750 4200 50  0001 C CNN "Manufactured Part Number"
F 7 "Amphenol ICC (FCI)" H 8750 4200 50  0001 C CNN "Maufaturer"
	1    8750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4250 7950 4300
Wire Wire Line
	7950 4300 8550 4300
Wire Wire Line
	8150 4200 8150 4100
Wire Wire Line
	8500 4100 8550 4100
Wire Wire Line
	8500 4100 8500 4900
$Comp
L Device:CP1_Small C37
U 1 1 5E53A053
P 5100 1850
AR Path="/5DB8A7DC/5E53A053" Ref="C37"  Part="1" 
AR Path="/5E6E93B2/5E53A053" Ref="C?"  Part="1" 
F 0 "C37" H 5100 1950 50  0000 L CNN
F 1 "220UF,3226" V 5050 1350 50  0000 L CNN
F 2 "" H 5100 1850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-sprague/597D227X0025M2T/718-1945-1-ND/3985794" H 5100 1850 50  0001 C CNN
F 4 "CAP TANT 220UF 20% 25V 3226" H 5100 1850 50  0001 C CNN "Description"
F 5 "718-1945-1-ND" H 5100 1850 50  0001 C CNN "Digikey PartNumber"
F 6 "597D227X0025M2T" H 5100 1850 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay Sprague" H 5100 1850 50  0001 C CNN "Maufaturer"
	1    5100 1850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:L_Core_Iron_Coupled-aardonyx L1
U 1 1 5E574791
P 6600 1700
AR Path="/5DB8A7DC/5E574791" Ref="L1"  Part="1" 
AR Path="/5E6E93B2/5E574791" Ref="L?"  Part="1" 
F 0 "L1" H 6600 1981 50  0000 C CNN
F 1 "CM3421Y600R-10" H 6600 1550 50  0000 C CNN
F 2 "" H 6600 1700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/laird-signal-integrity-products/CM3421Y600R-10/240-2501-1-ND/935987" H 6600 1700 50  0001 C CNN
F 4 "	CMC 15A 2LN 60 OHM SMD" H 6600 1700 50  0001 C CNN "Description"
F 5 "240-2501-1-ND" H 6600 1700 50  0001 C CNN "Digikey PartNumber"
F 6 "CM3421Y600R-10" H 6600 1700 50  0001 C CNN "Manufactured Part Number"
F 7 "	Laird-Signal Integrity Products" H 6600 1700 50  0001 C CNN "Maufaturer"
	1    6600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1600 4550 1600
Wire Wire Line
	4850 1600 5100 1600
Connection ~ 5100 1600
Wire Wire Line
	6400 1800 6200 1800
Wire Wire Line
	6200 1800 6200 2000
Wire Wire Line
	5800 1600 6400 1600
Wire Wire Line
	7050 1800 7050 2000
Wire Wire Line
	6800 1800 7050 1800
Wire Wire Line
	7400 1600 7400 1750
Wire Wire Line
	7400 2150 7400 1950
$Comp
L Aardonyx-rescue:C_Small-aardonyx C42
U 1 1 5E5FEAFA
P 7400 1850
AR Path="/5DB8A7DC/5E5FEAFA" Ref="C42"  Part="1" 
AR Path="/5E6E93B2/5E5FEAFA" Ref="C?"  Part="1" 
F 0 "C42" H 7400 1950 50  0000 L CNN
F 1 "1UF,0805" V 7350 1450 50  0000 L CNN
F 2 "" H 7400 1850 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/kemet/C0805C105J3RACTU/399-10060-6-ND/3739580" H 7400 1850 50  0001 C CNN
F 4 "CAP CER 1UF 25V X7R 0805" H 7400 1850 50  0001 C CNN "Description"
F 5 "399-10060-6-ND" H 7400 1850 50  0001 C CNN "Digikey PartNumber"
F 6 "C0805C105J3RACTU" H 7400 1850 50  0001 C CNN "Manufactured Part Number"
F 7 "Kemet" H 7400 1850 50  0001 C CNN "Maufaturer"
	1    7400 1850
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:C_Small-aardonyx C44
U 1 1 5E5FEB00
P 7750 1850
AR Path="/5DB8A7DC/5E5FEB00" Ref="C44"  Part="1" 
AR Path="/5E6E93B2/5E5FEB00" Ref="C?"  Part="1" 
F 0 "C44" H 7750 1950 50  0000 L CNN
F 1 "0.1UF,0402" V 7950 1550 50  0000 L CNN
F 2 "" H 7750 1850 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/avx-corporation/04023C104JAT2A/478-10050-1-ND/6564273" H 7750 1850 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0402" H 7750 1850 50  0001 C CNN "Description"
F 5 "478-10050-1-ND" H 7750 1850 50  0001 C CNN "Digikey PartNumber"
F 6 "04023C104JAT2A" H 7750 1850 50  0001 C CNN "Manufactured Part Number"
F 7 "AVX Corporation" H 7750 1850 50  0001 C CNN "Maufaturer"
	1    7750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1600 7750 1750
Wire Wire Line
	7400 2150 7750 2150
Wire Wire Line
	7750 1950 7750 2150
Wire Wire Line
	7750 2150 7750 2200
Connection ~ 7750 2150
Wire Wire Line
	6800 1600 7400 1600
Connection ~ 7400 1600
Wire Wire Line
	7400 1600 7750 1600
Connection ~ 7750 1600
$Comp
L Device:LED_ALT D3
U 1 1 5E6988C1
P 10000 5150
AR Path="/5DB8A7DC/5E6988C1" Ref="D3"  Part="1" 
AR Path="/5E6E93B2/5E6988C1" Ref="D?"  Part="1" 
F 0 "D3" V 10100 5100 50  0000 R CNN
F 1 "LED,0603" V 9750 5100 50  0000 R CNN
F 2 "" H 10000 5150 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/lite-on-inc/LTST-C193TGKT-5A/160-1832-1-ND/2356255" H 10000 5150 50  0001 C CNN
F 4 "LED GREEN CLEAR CHIP SMD" H 10000 5150 50  0001 C CNN "Description"
F 5 "Lite-On Inc." H 10000 5150 50  0001 C CNN "Maufaturer"
F 6 "160-1832-1-ND" H 10000 5150 50  0001 C CNN "Digikey PartNumber"
F 7 "LTST-C193TGKT-5A" H 10000 5150 50  0001 C CNN "Manufactured Part Number"
	1    10000 5150
	0    -1   -1   0   
$EndComp
$Comp
L Aardonyx-rescue:V5P0-aardonyx #PWR050
U 1 1 5E699359
P 10000 4450
AR Path="/5DB8A7DC/5E699359" Ref="#PWR050"  Part="1" 
AR Path="/5E6E93B2/5E699359" Ref="#PWR?"  Part="1" 
F 0 "#PWR050" H 10150 4400 50  0001 C CNN
F 1 "V5P0" H 9995 4625 50  0000 C CNN
F 2 "" H 10000 4450 50  0001 C CNN
F 3 "" H 10000 4450 50  0001 C CNN
	1    10000 4450
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:R_US-aardonyx R29
U 1 1 5E6A34B8
P 10000 4700
AR Path="/5DB8A7DC/5E6A34B8" Ref="R29"  Part="1" 
AR Path="/5E6E93B2/5E6A34B8" Ref="R?"  Part="1" 
F 0 "R29" H 10050 4800 50  0000 L CNN
F 1 "1KE,0402" V 9900 4450 50  0000 L CNN
F 2 "" V 10040 4690 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-2GEJ102X/P1-0KJCT-ND/146897" H 10000 4700 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0402" H 10000 4700 50  0001 C CNN "Description"
F 5 "P1.0KJCT-ND " H 10000 4700 50  0001 C CNN "Digikey PartNumber"
F 6 "ERA-2AEB123X" H 10000 4700 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 10000 4700 50  0001 C CNN "Maufaturer"
	1    10000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4450 10000 4550
Wire Wire Line
	8550 4200 8150 4200
$Comp
L Aardonyx-rescue:VBUS-aardonyx #PWR?
U 1 1 5E51F41F
P 7950 4250
AR Path="/5D8B3761/5E51F41F" Ref="#PWR?"  Part="1" 
AR Path="/5DB8A7DC/5E51F41F" Ref="#PWR047"  Part="1" 
AR Path="/5E6E93B2/5E51F41F" Ref="#PWR?"  Part="1" 
F 0 "#PWR047" H 8100 4200 50  0001 C CNN
F 1 "VBUS" H 7955 4425 50  0000 C CNN
F 2 "" H 7950 4250 50  0001 C CNN
F 3 "" H 7950 4250 50  0001 C CNN
	1    7950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4450 2250 4600
Wire Wire Line
	7750 1350 7750 1600
$Comp
L Aardonyx-rescue:R_US-aardonyx R28
U 1 1 5DC0E17E
P 7250 5200
AR Path="/5DB8A7DC/5DC0E17E" Ref="R28"  Part="1" 
AR Path="/5E6E93B2/5DC0E17E" Ref="R?"  Part="1" 
F 0 "R28" H 7318 5246 50  0000 L CNN
F 1 "124KE,0805" V 7350 4750 50  0000 L CNN
F 2 "" V 7290 5190 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERJ-6ENF1243V/P124KCCT-ND/119578" H 7250 5200 50  0001 C CNN
F 4 "RES SMD 124K OHM 1% 1/8W 0805" H 7250 5200 50  0001 C CNN "Description"
F 5 "P124KCCT-ND" H 7250 5200 50  0001 C CNN "Digikey PartNumber"
F 6 "ERJ-6ENF1243V" H 7250 5200 50  0001 C CNN "Manufactured Part Number"
F 7 "Panasonic Electronic Components" H 7250 5200 50  0001 C CNN "Maufaturer"
	1    7250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4850 10000 5000
Wire Wire Line
	10000 5300 10000 5550
$Comp
L Aardonyx-rescue:R_US-skt32e_asic R27
U 1 1 5EE2D8E4
P 7250 5800
F 0 "R27" H 7318 5846 50  0000 L CNN
F 1 "22.1KE,0805" H 7318 5755 50  0000 L CNN
F 2 "" V 7290 5790 50  0001 C CNN
F 3 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN
F 4 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN "Description"
F 5 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN "Digikey PartNumber"
F 6 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN "Field4"
F 7 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN "Field5"
F 8 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN "Field6"
F 9 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN "Field7"
F 10 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN "Manufactured Part Number"
F 11 "https://www.digikey.in/product-detail/en/panasonic-electronic-components/ERA-6AEB2212V/P22-1KDACT-ND/3075024" H 7250 5800 50  0001 C CNN "Maufaturer"
	1    7250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5950 7250 6100
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0143
U 1 1 5EE6F664
P 2250 5300
F 0 "#PWR0143" H 2250 5050 50  0001 C CNN
F 1 "GND" H 2255 5127 50  0000 C CNN
F 2 "" H 2250 5300 50  0001 C CNN
F 3 "" H 2250 5300 50  0001 C CNN
	1    2250 5300
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0144
U 1 1 5EE71DA1
P 4450 6100
F 0 "#PWR0144" H 4450 5850 50  0001 C CNN
F 1 "GND" H 4455 5927 50  0000 C CNN
F 2 "" H 4450 6100 50  0001 C CNN
F 3 "" H 4450 6100 50  0001 C CNN
	1    4450 6100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0147
U 1 1 5EE727ED
P 5300 6100
F 0 "#PWR0147" H 5300 5850 50  0001 C CNN
F 1 "GND" H 5305 5927 50  0000 C CNN
F 2 "" H 5300 6100 50  0001 C CNN
F 3 "" H 5300 6100 50  0001 C CNN
	1    5300 6100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0148
U 1 1 5EE72E68
P 7250 6100
F 0 "#PWR0148" H 7250 5850 50  0001 C CNN
F 1 "GND" H 7255 5927 50  0000 C CNN
F 2 "" H 7250 6100 50  0001 C CNN
F 3 "" H 7250 6100 50  0001 C CNN
	1    7250 6100
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0150
U 1 1 5EE7D0B1
P 10000 5550
F 0 "#PWR0150" H 10000 5300 50  0001 C CNN
F 1 "GND" H 10005 5377 50  0000 C CNN
F 2 "" H 10000 5550 50  0001 C CNN
F 3 "" H 10000 5550 50  0001 C CNN
	1    10000 5550
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0151
U 1 1 5EE7ED73
P 3850 1950
F 0 "#PWR0151" H 3850 1700 50  0001 C CNN
F 1 "GND" H 3855 1777 50  0000 C CNN
F 2 "" H 3850 1950 50  0001 C CNN
F 3 "" H 3850 1950 50  0001 C CNN
	1    3850 1950
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0152
U 1 1 5EE7FF2C
P 5800 2200
F 0 "#PWR0152" H 5800 1950 50  0001 C CNN
F 1 "GND" H 5805 2027 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0153
U 1 1 5EE81813
P 6200 2000
F 0 "#PWR0153" H 6200 1750 50  0001 C CNN
F 1 "GND" H 6205 1827 50  0000 C CNN
F 2 "" H 6200 2000 50  0001 C CNN
F 3 "" H 6200 2000 50  0001 C CNN
	1    6200 2000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0154
U 1 1 5EE81F60
P 7050 2000
F 0 "#PWR0154" H 7050 1750 50  0001 C CNN
F 1 "GND" H 7055 1827 50  0000 C CNN
F 2 "" H 7050 2000 50  0001 C CNN
F 3 "" H 7050 2000 50  0001 C CNN
	1    7050 2000
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0155
U 1 1 5EE824AC
P 7750 2200
F 0 "#PWR0155" H 7750 1950 50  0001 C CNN
F 1 "GND" H 7755 2027 50  0000 C CNN
F 2 "" H 7750 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0001 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
$Comp
L Aardonyx-rescue:GND-skt32e_asic #PWR0149
U 1 1 5EE84285
P 8500 5800
F 0 "#PWR0149" H 8500 5550 50  0001 C CNN
F 1 "GND" H 8505 5627 50  0000 C CNN
F 2 "" H 8500 5800 50  0001 C CNN
F 3 "" H 8500 5800 50  0001 C CNN
	1    8500 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J5
U 1 1 5E9E6D33
P 3400 1700
F 0 "J5" H 3457 2017 50  0000 C CNN
F 1 "12V" H 3457 1926 50  0000 C CNN
F 2 "" H 3450 1660 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=PJ-202AH" H 3450 1660 50  0001 C CNN
F 4 "CONN PWR JACK 2X5.5MM KINKED PIN" H 3400 1700 50  0001 C CNN "Description"
F 5 "CP-202AH-ND" H 3400 1700 50  0001 C CNN "Digikey PartNumber"
F 6 "PJ-202AH" H 3400 1700 50  0001 C CNN "Manufactured Part Number"
F 7 "CUI Devices" H 3400 1700 50  0001 C CNN "Maufaturer"
	1    3400 1700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5E9F450C
P 4200 1600
F 0 "SW1" H 4200 1835 50  0000 C CNN
F 1 "SW_SPST" H 4200 1744 50  0000 C CNN
F 2 "" H 4200 1600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-alcoswitch-switches/TMS6T1B1M1QE/450-2109-ND/5125729" H 4200 1600 50  0001 C CNN
F 4 "SWITCH TOGGLE SPST 3A 120V" H 4200 1600 50  0001 C CNN "Description"
F 5 "450-2109-ND" H 4200 1600 50  0001 C CNN "Digikey PartNumber"
F 6 "TMS6T1B1M1QE" H 4200 1600 50  0001 C CNN "Manufactured Part Number"
F 7 "TE Connectivity ALCOSWITCH Switches" H 4200 1600 50  0001 C CNN "Maufaturer"
	1    4200 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5E9F4F23
P 4700 1600
F 0 "F1" V 4475 1600 50  0000 C CNN
F 1 "PTCCL13H921DBE" V 4566 1600 50  0000 C CNN
F 2 "" H 4750 1400 50  0001 L CNN
F 3 "https://www.digikey.in/products/en?keywords=PTCCL13H921DBE" H 4700 1600 50  0001 C CNN
F 4 "PTC RESET FUSE 30V 920MA RADIAL" H 4700 1600 50  0001 C CNN "Description"
F 5 "BC2323-ND" H 4700 1600 50  0001 C CNN "Digikey PartNumber"
F 6 "PTCCL13H921DBE" H 4700 1600 50  0001 C CNN "Manufactured Part Number"
F 7 "Vishay BC Components" H 4700 1600 50  0001 C CNN "Maufaturer"
	1    4700 1600
	0    1    1    0   
$EndComp
$EndSCHEMATC
