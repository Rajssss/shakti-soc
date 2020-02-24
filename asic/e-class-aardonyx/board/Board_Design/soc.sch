EESchema Schematic File Version 4
LIBS:Aardonyx-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L aardonyx:C_Small C3
U 1 1 5DD40122
P 3300 1050
F 0 "C3" H 3300 1150 50  0000 L CNN
F 1 "0.1uF" H 3300 950 50  0000 L CNN
F 2 "" H 3300 1050 50  0001 C CNN
F 3 "~" H 3300 1050 50  0001 C CNN
	1    3300 1050
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C4
U 1 1 5DD40128
P 3550 1050
F 0 "C4" H 3550 1150 50  0000 L CNN
F 1 "0.1uF" H 3550 950 50  0000 L CNN
F 2 "" H 3550 1050 50  0001 C CNN
F 3 "~" H 3550 1050 50  0001 C CNN
	1    3550 1050
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C5
U 1 1 5DD4012E
P 3800 1050
F 0 "C5" H 3800 1150 50  0000 L CNN
F 1 "0.1uF" H 3800 950 50  0000 L CNN
F 2 "" H 3800 1050 50  0001 C CNN
F 3 "~" H 3800 1050 50  0001 C CNN
	1    3800 1050
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C7
U 1 1 5DD40134
P 4050 1050
F 0 "C7" H 4050 1150 50  0000 L CNN
F 1 "0.1uF" H 4050 950 50  0000 L CNN
F 2 "" H 4050 1050 50  0001 C CNN
F 3 "~" H 4050 1050 50  0001 C CNN
	1    4050 1050
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C9
U 1 1 5DD4013A
P 4300 1050
F 0 "C9" H 4300 1150 50  0000 L CNN
F 1 "0.1uF" H 4300 950 50  0000 L CNN
F 2 "" H 4300 1050 50  0001 C CNN
F 3 "~" H 4300 1050 50  0001 C CNN
	1    4300 1050
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C11
U 1 1 5DD40140
P 4550 1050
F 0 "C11" H 4550 1150 50  0000 L CNN
F 1 "0.1uF" H 4550 950 50  0000 L CNN
F 2 "" H 4550 1050 50  0001 C CNN
F 3 "~" H 4550 1050 50  0001 C CNN
	1    4550 1050
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C13
U 1 1 5DD40146
P 4800 1050
F 0 "C13" H 4800 1150 50  0000 L CNN
F 1 "0.1uF" H 4800 950 50  0000 L CNN
F 2 "" H 4800 1050 50  0001 C CNN
F 3 "~" H 4800 1050 50  0001 C CNN
	1    4800 1050
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C15
U 1 1 5DD4014C
P 5050 1050
F 0 "C15" H 5050 1150 50  0000 L CNN
F 1 "0.1uF" H 5050 950 50  0000 L CNN
F 2 "" H 5050 1050 50  0001 C CNN
F 3 "~" H 5050 1050 50  0001 C CNN
	1    5050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1150 3300 1300
Wire Wire Line
	3300 1300 3550 1300
Wire Wire Line
	3300 800  3300 950 
Wire Wire Line
	3550 950  3550 800 
Connection ~ 3550 800 
Wire Wire Line
	3550 800  3300 800 
Wire Wire Line
	3800 950  3800 800 
Connection ~ 3800 800 
Wire Wire Line
	3800 800  3550 800 
Wire Wire Line
	3550 1150 3550 1300
Connection ~ 3550 1300
Wire Wire Line
	3550 1300 3800 1300
Wire Wire Line
	3800 1150 3800 1300
Connection ~ 3800 1300
Wire Wire Line
	3800 1300 4050 1300
Wire Wire Line
	4050 1150 4050 1300
Connection ~ 4050 1300
Wire Wire Line
	4050 1300 4300 1300
Wire Wire Line
	4050 950  4050 800 
Connection ~ 4050 800 
Wire Wire Line
	4050 800  3800 800 
Wire Wire Line
	4300 950  4300 800 
Connection ~ 4300 800 
Wire Wire Line
	4300 800  4050 800 
Wire Wire Line
	4300 1150 4300 1300
Connection ~ 4300 1300
Wire Wire Line
	4300 1300 4550 1300
Wire Wire Line
	4550 1150 4550 1300
Connection ~ 4550 1300
Wire Wire Line
	4550 1300 4800 1300
Wire Wire Line
	4550 950  4550 800 
Connection ~ 4550 800 
Wire Wire Line
	4550 800  4300 800 
Wire Wire Line
	4800 950  4800 800 
Connection ~ 4800 800 
Wire Wire Line
	4800 800  4550 800 
Wire Wire Line
	4800 1150 4800 1300
Connection ~ 4800 1300
Wire Wire Line
	4800 1300 5050 1300
Wire Wire Line
	5050 950  5050 800 
Wire Wire Line
	5050 800  4800 800 
Wire Wire Line
	5050 1150 5050 1300
Wire Wire Line
	650  2650 650  2800
$Comp
L aardonyx:V1P8 #PWR09
U 1 1 5DD1AD11
P 950 850
F 0 "#PWR09" H 1100 800 50  0001 C CNN
F 1 "V1P8" H 955 1025 50  0000 C CNN
F 2 "" H 950 850 50  0001 C CNN
F 3 "" H 950 850 50  0001 C CNN
	1    950  850 
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:V3P3 #PWR08
U 1 1 5DD1B90C
P 650 2650
F 0 "#PWR08" H 800 2600 50  0001 C CNN
F 1 "V3P3" H 655 2825 50  0000 C CNN
F 2 "" H 650 2650 50  0001 C CNN
F 3 "" H 650 2650 50  0001 C CNN
	1    650  2650
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:GND #PWR011
U 1 1 5DD1C03B
P 2850 3950
F 0 "#PWR011" H 2850 3700 50  0001 C CNN
F 1 "GND" H 2855 3777 50  0000 C CNN
F 2 "" H 2850 3950 50  0001 C CNN
F 3 "" H 2850 3950 50  0001 C CNN
	1    2850 3950
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:V1P8 #PWR012
U 1 1 5DD7A800
P 3300 750
F 0 "#PWR012" H 3450 700 50  0001 C CNN
F 1 "V1P8" H 3305 925 50  0000 C CNN
F 2 "" H 3300 750 50  0001 C CNN
F 3 "" H 3300 750 50  0001 C CNN
	1    3300 750 
	1    0    0    -1  
$EndComp
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
$Comp
L aardonyx:SKT32E U?
U 3 1 5DC7AC9F
P 1950 2450
AR Path="/5DC7AC9F" Ref="U?"  Part="3" 
AR Path="/5D8B3740/5DC7AC9F" Ref="U1"  Part="3" 
F 0 "U1" H 1450 3900 50  0000 C CNN
F 1 "SKT32E" H 2350 1000 50  0000 C CNN
F 2 "" H 1200 2900 50  0001 C CNN
F 3 "" H 1200 2900 50  0001 C CNN
	3    1950 2450
	1    0    0    -1  
$EndComp
Text Notes 1400 800  0    79   Italic 0
SKT32E - POWER
Wire Wire Line
	1150 2600 950  2600
Wire Wire Line
	1150 2500 950  2500
Connection ~ 950  2500
Wire Wire Line
	950  2500 950  2600
Wire Wire Line
	950  2400 1150 2400
Connection ~ 950  2400
Wire Wire Line
	950  2400 950  2500
Wire Wire Line
	1150 2300 950  2300
Connection ~ 950  2300
Wire Wire Line
	950  2300 950  2400
Wire Wire Line
	950  2200 1150 2200
Connection ~ 950  2200
Wire Wire Line
	950  2200 950  2300
Wire Wire Line
	1150 2100 950  2100
Connection ~ 950  2100
Wire Wire Line
	950  2100 950  2200
Wire Wire Line
	1150 2000 950  2000
Connection ~ 950  2000
Wire Wire Line
	950  2000 950  2100
Wire Wire Line
	1150 1900 950  1900
Connection ~ 950  1900
Wire Wire Line
	950  1900 950  2000
Wire Wire Line
	1150 1800 950  1800
Connection ~ 950  1800
Wire Wire Line
	950  1800 950  1900
Wire Wire Line
	1150 1700 950  1700
Connection ~ 950  1700
Wire Wire Line
	950  1700 950  1800
Wire Wire Line
	1150 1600 950  1600
Connection ~ 950  1600
Wire Wire Line
	950  1600 950  1700
Wire Wire Line
	1150 1500 950  1500
Connection ~ 950  1500
Wire Wire Line
	950  1500 950  1600
Wire Wire Line
	650  2800 950  2800
Wire Wire Line
	950  3700 1150 3700
Connection ~ 950  2800
Wire Wire Line
	950  2800 1150 2800
Wire Wire Line
	1150 3600 950  3600
Connection ~ 950  3600
Wire Wire Line
	950  3600 950  3700
Wire Wire Line
	950  3500 1150 3500
Connection ~ 950  3500
Wire Wire Line
	950  3500 950  3600
Wire Wire Line
	1150 3400 950  3400
Connection ~ 950  3400
Wire Wire Line
	950  3400 950  3500
Wire Wire Line
	950  3300 1150 3300
Connection ~ 950  3300
Wire Wire Line
	950  3300 950  3400
Wire Wire Line
	1150 3200 950  3200
Connection ~ 950  3200
Wire Wire Line
	950  3200 950  3300
Wire Wire Line
	950  3100 1150 3100
Wire Wire Line
	950  2800 950  2900
Connection ~ 950  3100
Wire Wire Line
	950  3100 950  3200
Wire Wire Line
	1150 3000 950  3000
Connection ~ 950  3000
Wire Wire Line
	950  3000 950  3100
Wire Wire Line
	950  2900 1150 2900
Connection ~ 950  2900
Wire Wire Line
	950  2900 950  3000
Wire Wire Line
	2700 1400 2850 1400
Wire Wire Line
	2850 1400 2850 1500
Wire Wire Line
	2700 3700 2850 3700
Connection ~ 2850 3700
Wire Wire Line
	2850 3700 2850 3950
Wire Wire Line
	2700 3600 2850 3600
Connection ~ 2850 3600
Wire Wire Line
	2850 3600 2850 3700
Wire Wire Line
	2700 3500 2850 3500
Connection ~ 2850 3500
Wire Wire Line
	2850 3500 2850 3600
Wire Wire Line
	2700 3400 2850 3400
Connection ~ 2850 3400
Wire Wire Line
	2850 3400 2850 3500
Wire Wire Line
	2700 3300 2850 3300
Connection ~ 2850 3300
Wire Wire Line
	2850 3300 2850 3400
Wire Wire Line
	2700 3200 2850 3200
Connection ~ 2850 3200
Wire Wire Line
	2850 3200 2850 3300
Wire Wire Line
	2700 3100 2850 3100
Connection ~ 2850 3100
Wire Wire Line
	2850 3100 2850 3200
Wire Wire Line
	2700 3000 2850 3000
Connection ~ 2850 3000
Wire Wire Line
	2850 3000 2850 3100
Wire Wire Line
	2850 2900 2700 2900
Connection ~ 2850 2900
Wire Wire Line
	2850 2900 2850 3000
Wire Wire Line
	2700 2800 2850 2800
Wire Wire Line
	2850 2800 2850 2900
Wire Wire Line
	2700 2300 2850 2300
Wire Wire Line
	2850 2200 2700 2200
Connection ~ 2850 2200
Wire Wire Line
	2850 2200 2850 2300
Wire Wire Line
	2700 2100 2850 2100
Connection ~ 2850 2100
Wire Wire Line
	2850 2100 2850 2200
Wire Wire Line
	2850 2000 2700 2000
Connection ~ 2850 2000
Wire Wire Line
	2850 2000 2850 2100
Wire Wire Line
	2700 1900 2850 1900
Connection ~ 2850 1900
Wire Wire Line
	2850 1900 2850 2000
Wire Wire Line
	2850 1800 2700 1800
Connection ~ 2850 1800
Wire Wire Line
	2850 1800 2850 1900
Wire Wire Line
	2700 1700 2850 1700
Connection ~ 2850 1700
Wire Wire Line
	2850 1700 2850 1800
Wire Wire Line
	2850 1600 2700 1600
Connection ~ 2850 1600
Wire Wire Line
	2850 1600 2850 1700
Wire Wire Line
	2700 1500 2850 1500
Connection ~ 2850 1500
Wire Wire Line
	2850 1500 2850 1600
$Comp
L aardonyx:C_Small C17
U 1 1 5F22D8AB
P 3350 2150
F 0 "C17" H 3350 2250 50  0000 L CNN
F 1 "0.1uF" H 3350 2050 50  0000 L CNN
F 2 "" H 3350 2150 50  0001 C CNN
F 3 "~" H 3350 2150 50  0001 C CNN
	1    3350 2150
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C19
U 1 1 5F22D8B1
P 3600 2150
F 0 "C19" H 3600 2250 50  0000 L CNN
F 1 "0.1uF" H 3600 2050 50  0000 L CNN
F 2 "" H 3600 2150 50  0001 C CNN
F 3 "~" H 3600 2150 50  0001 C CNN
	1    3600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2050 3350 1900
Wire Wire Line
	3350 2250 3350 2400
Wire Wire Line
	3600 2050 3600 1900
Wire Wire Line
	3600 2250 3600 2400
Wire Wire Line
	3350 1900 3600 1900
Wire Wire Line
	3350 2400 3600 2400
Connection ~ 3600 2400
Wire Wire Line
	3300 750  3300 800 
Connection ~ 3300 800 
$Comp
L aardonyx:C_Small C6
U 1 1 5F38ACB1
P 3150 3450
F 0 "C6" H 3150 3550 50  0000 L CNN
F 1 "0.1uF" H 3150 3350 50  0000 L CNN
F 2 "" H 3150 3450 50  0001 C CNN
F 3 "~" H 3150 3450 50  0001 C CNN
	1    3150 3450
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C8
U 1 1 5F38ACB7
P 3400 3450
F 0 "C8" H 3400 3550 50  0000 L CNN
F 1 "0.1uF" H 3400 3350 50  0000 L CNN
F 2 "" H 3400 3450 50  0001 C CNN
F 3 "~" H 3400 3450 50  0001 C CNN
	1    3400 3450
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C10
U 1 1 5F38ACBD
P 3650 3450
F 0 "C10" H 3650 3550 50  0000 L CNN
F 1 "0.1uF" H 3650 3350 50  0000 L CNN
F 2 "" H 3650 3450 50  0001 C CNN
F 3 "~" H 3650 3450 50  0001 C CNN
	1    3650 3450
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C12
U 1 1 5F38ACC3
P 3900 3450
F 0 "C12" H 3900 3550 50  0000 L CNN
F 1 "0.1uF" H 3900 3350 50  0000 L CNN
F 2 "" H 3900 3450 50  0001 C CNN
F 3 "~" H 3900 3450 50  0001 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C14
U 1 1 5F38ACC9
P 4150 3450
F 0 "C14" H 4150 3550 50  0000 L CNN
F 1 "0.1uF" H 4150 3350 50  0000 L CNN
F 2 "" H 4150 3450 50  0001 C CNN
F 3 "~" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C16
U 1 1 5F38ACCF
P 4400 3450
F 0 "C16" H 4400 3550 50  0000 L CNN
F 1 "0.1uF" H 4400 3350 50  0000 L CNN
F 2 "" H 4400 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C18
U 1 1 5F38ACD5
P 4650 3450
F 0 "C18" H 4650 3550 50  0000 L CNN
F 1 "0.1uF" H 4650 3350 50  0000 L CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "~" H 4650 3450 50  0001 C CNN
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C20
U 1 1 5F38ACDB
P 4900 3450
F 0 "C20" H 4900 3550 50  0000 L CNN
F 1 "0.1uF" H 4900 3350 50  0000 L CNN
F 2 "" H 4900 3450 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3550 3150 3700
Wire Wire Line
	3150 3700 3400 3700
Wire Wire Line
	3150 3200 3150 3350
Wire Wire Line
	3400 3350 3400 3200
Connection ~ 3400 3200
Wire Wire Line
	3400 3200 3150 3200
Wire Wire Line
	3650 3350 3650 3200
Connection ~ 3650 3200
Wire Wire Line
	3650 3200 3400 3200
Wire Wire Line
	3400 3550 3400 3700
Connection ~ 3400 3700
Wire Wire Line
	3400 3700 3650 3700
Wire Wire Line
	3650 3550 3650 3700
Connection ~ 3650 3700
Wire Wire Line
	3650 3700 3900 3700
Wire Wire Line
	3900 3550 3900 3700
Connection ~ 3900 3700
Wire Wire Line
	3900 3700 4150 3700
Wire Wire Line
	3900 3350 3900 3200
Connection ~ 3900 3200
Wire Wire Line
	3900 3200 3650 3200
Wire Wire Line
	4150 3350 4150 3200
Connection ~ 4150 3200
Wire Wire Line
	4150 3200 3900 3200
Wire Wire Line
	4150 3550 4150 3700
Connection ~ 4150 3700
Wire Wire Line
	4150 3700 4400 3700
Wire Wire Line
	4400 3550 4400 3700
Connection ~ 4400 3700
Wire Wire Line
	4400 3700 4650 3700
Wire Wire Line
	4400 3350 4400 3200
Connection ~ 4400 3200
Wire Wire Line
	4400 3200 4150 3200
Wire Wire Line
	4650 3350 4650 3200
Connection ~ 4650 3200
Wire Wire Line
	4650 3200 4400 3200
Wire Wire Line
	4650 3550 4650 3700
Connection ~ 4650 3700
Wire Wire Line
	4650 3700 4900 3700
Wire Wire Line
	4900 3350 4900 3200
Wire Wire Line
	4900 3200 4650 3200
Wire Wire Line
	4900 3550 4900 3700
Connection ~ 4900 3700
$Comp
L aardonyx:GND #PWR015
U 1 1 5F38AD0C
P 5400 3700
F 0 "#PWR015" H 5400 3450 50  0001 C CNN
F 1 "GND" H 5405 3527 50  0000 C CNN
F 2 "" H 5400 3700 50  0001 C CNN
F 3 "" H 5400 3700 50  0001 C CNN
	1    5400 3700
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C22
U 1 1 5F38AD12
P 5150 3450
F 0 "C22" H 5150 3550 50  0000 L CNN
F 1 "0.1uF" H 5150 3350 50  0000 L CNN
F 2 "" H 5150 3450 50  0001 C CNN
F 3 "~" H 5150 3450 50  0001 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C24
U 1 1 5F38AD18
P 5400 3450
F 0 "C24" H 5400 3550 50  0000 L CNN
F 1 "0.1uF" H 5400 3350 50  0000 L CNN
F 2 "" H 5400 3450 50  0001 C CNN
F 3 "~" H 5400 3450 50  0001 C CNN
	1    5400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3350 5150 3200
Wire Wire Line
	5150 3550 5150 3700
Wire Wire Line
	5400 3350 5400 3200
Wire Wire Line
	5400 3550 5400 3700
Wire Wire Line
	4900 3200 5150 3200
Connection ~ 4900 3200
Connection ~ 5150 3200
Wire Wire Line
	5150 3200 5400 3200
Wire Wire Line
	4900 3700 5150 3700
Connection ~ 5150 3700
Wire Wire Line
	5150 3700 5400 3700
Connection ~ 5400 3700
$Comp
L aardonyx:V3P3 #PWR013
U 1 1 5F38AD2A
P 3150 3150
F 0 "#PWR013" H 3300 3100 50  0001 C CNN
F 1 "V3P3" H 3155 3325 50  0000 C CNN
F 2 "" H 3150 3150 50  0001 C CNN
F 3 "" H 3150 3150 50  0001 C CNN
	1    3150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3150 3150 3200
Connection ~ 3150 3200
$Comp
L aardonyx:C_Small C21
U 1 1 5F55509B
P 3850 2150
F 0 "C21" H 3850 2250 50  0000 L CNN
F 1 "0.1uF" H 3850 2050 50  0000 L CNN
F 2 "" H 3850 2150 50  0001 C CNN
F 3 "~" H 3850 2150 50  0001 C CNN
	1    3850 2150
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C23
U 1 1 5F5550A1
P 4100 2150
F 0 "C23" H 4100 2250 50  0000 L CNN
F 1 "0.1uF" H 4100 2050 50  0000 L CNN
F 2 "" H 4100 2150 50  0001 C CNN
F 3 "~" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C25
U 1 1 5F5550A7
P 4350 2150
F 0 "C25" H 4350 2250 50  0000 L CNN
F 1 "0.1uF" H 4350 2050 50  0000 L CNN
F 2 "" H 4350 2150 50  0001 C CNN
F 3 "~" H 4350 2150 50  0001 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2400 3850 2400
Wire Wire Line
	3850 2250 3850 2400
Connection ~ 3850 2400
Wire Wire Line
	3850 2400 4100 2400
Wire Wire Line
	3850 2050 3850 1900
Connection ~ 3850 1900
Wire Wire Line
	3850 1900 3600 1900
Wire Wire Line
	4100 2050 4100 1900
Connection ~ 4100 1900
Wire Wire Line
	4100 1900 3850 1900
Wire Wire Line
	4100 2250 4100 2400
Connection ~ 4100 2400
Wire Wire Line
	4100 2400 4350 2400
Wire Wire Line
	4350 2050 4350 1900
Wire Wire Line
	4350 1900 4100 1900
Wire Wire Line
	4350 2250 4350 2400
Connection ~ 4350 2400
$Comp
L aardonyx:GND #PWR016
U 1 1 5F5550BE
P 4850 2400
F 0 "#PWR016" H 4850 2150 50  0001 C CNN
F 1 "GND" H 4855 2227 50  0000 C CNN
F 2 "" H 4850 2400 50  0001 C CNN
F 3 "" H 4850 2400 50  0001 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C26
U 1 1 5F5550C4
P 4600 2150
F 0 "C26" H 4600 2250 50  0000 L CNN
F 1 "0.1uF" H 4600 2050 50  0000 L CNN
F 2 "" H 4600 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
$Comp
L aardonyx:C_Small C27
U 1 1 5F5550CA
P 4850 2150
F 0 "C27" H 4850 2250 50  0000 L CNN
F 1 "0.1uF" H 4850 2050 50  0000 L CNN
F 2 "" H 4850 2150 50  0001 C CNN
F 3 "~" H 4850 2150 50  0001 C CNN
	1    4850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2050 4600 1900
Wire Wire Line
	4600 2250 4600 2400
Wire Wire Line
	4850 2050 4850 1900
Wire Wire Line
	4850 2250 4850 2400
Wire Wire Line
	4350 1900 4600 1900
Connection ~ 4350 1900
Connection ~ 4600 1900
Wire Wire Line
	4600 1900 4850 1900
Wire Wire Line
	4350 2400 4600 2400
Connection ~ 4600 2400
Wire Wire Line
	4600 2400 4850 2400
Connection ~ 4850 2400
Connection ~ 3600 1900
$Comp
L aardonyx:GND #PWR010
U 1 1 5F5D5945
P 2850 2400
F 0 "#PWR010" H 2850 2150 50  0001 C CNN
F 1 "GND" H 2855 2227 50  0000 C CNN
F 2 "" H 2850 2400 50  0001 C CNN
F 3 "" H 2850 2400 50  0001 C CNN
	1    2850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2300 2850 2400
Connection ~ 2850 2300
Wire Wire Line
	950  850  950  1200
Connection ~ 950  1200
Wire Wire Line
	1150 1200 950  1200
Wire Wire Line
	950  1200 950  1300
Connection ~ 950  1300
Wire Wire Line
	1150 1300 950  1300
Wire Wire Line
	950  1300 950  1400
Wire Wire Line
	950  1400 950  1500
Connection ~ 950  1400
Wire Wire Line
	1150 1400 950  1400
Wire Wire Line
	9550 3650 9600 3650
Wire Wire Line
	9600 3550 9550 3550
Wire Wire Line
	9550 3450 9600 3450
Wire Wire Line
	9600 3350 9550 3350
Wire Wire Line
	9550 3250 9600 3250
Wire Wire Line
	9600 3150 9550 3150
Wire Wire Line
	9550 2950 9600 2950
Wire Wire Line
	9600 2850 9550 2850
Wire Wire Line
	9550 2750 9600 2750
Wire Wire Line
	9550 2650 9600 2650
Wire Wire Line
	9600 2550 9550 2550
Wire Wire Line
	9550 2450 9600 2450
Wire Wire Line
	9600 2150 9550 2150
Wire Wire Line
	9550 2050 9600 2050
Wire Wire Line
	9550 1950 9600 1950
Wire Wire Line
	9600 1850 9550 1850
Wire Wire Line
	9550 1750 9600 1750
Wire Wire Line
	9550 1650 9600 1650
Wire Wire Line
	9600 3750 9550 3750
Wire Wire Line
	9550 3850 9600 3850
Wire Wire Line
	9600 3950 9550 3950
Wire Wire Line
	9550 4050 9600 4050
Wire Wire Line
	9600 4150 9550 4150
Wire Wire Line
	9550 4250 9600 4250
Wire Wire Line
	9600 4350 9550 4350
Wire Wire Line
	9550 4450 9600 4450
Wire Wire Line
	9550 4550 9600 4550
Wire Wire Line
	9600 4650 9550 4650
Wire Wire Line
	9550 4750 9600 4750
Wire Wire Line
	7700 4400 7650 4400
Wire Wire Line
	7650 4300 7700 4300
Wire Wire Line
	7700 4200 7650 4200
Wire Wire Line
	7650 4100 7700 4100
Wire Wire Line
	7700 4000 7650 4000
Wire Wire Line
	7650 3900 7700 3900
Wire Wire Line
	7700 3750 7650 3750
Wire Wire Line
	7650 3650 7700 3650
Wire Wire Line
	7700 3500 7650 3500
Wire Wire Line
	7650 3400 7700 3400
Wire Wire Line
	7700 3300 7650 3300
Wire Wire Line
	7650 3200 7700 3200
Wire Wire Line
	7700 2850 7650 2850
Wire Wire Line
	7650 2750 7700 2750
Wire Wire Line
	7700 2650 7650 2650
Wire Wire Line
	7650 2550 7700 2550
Wire Wire Line
	7700 2450 7650 2450
Wire Wire Line
	7650 2350 7700 2350
Wire Wire Line
	7700 2250 7650 2250
Wire Wire Line
	7650 2150 7700 2150
Wire Wire Line
	7700 2050 7650 2050
Wire Wire Line
	7650 1950 7700 1950
Wire Wire Line
	7650 1850 7700 1850
Wire Wire Line
	7700 1750 7650 1750
Wire Wire Line
	7650 1650 7700 1650
$Comp
L aardonyx:R_US R27
U 1 1 5E93944E
P 7500 4400
F 0 "R27" V 7450 4250 50  0000 C CNN
F 1 "22E" V 7450 4550 50  0000 C CNN
F 2 "" V 7540 4390 50  0001 C CNN
F 3 "~" H 7500 4400 50  0001 C CNN
	1    7500 4400
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R26
U 1 1 5E939448
P 7500 4300
F 0 "R26" V 7450 4150 50  0000 C CNN
F 1 "22E" V 7450 4450 50  0000 C CNN
F 2 "" V 7540 4290 50  0001 C CNN
F 3 "~" H 7500 4300 50  0001 C CNN
	1    7500 4300
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R25
U 1 1 5E939442
P 7500 4200
F 0 "R25" V 7450 4050 50  0000 C CNN
F 1 "22E" V 7450 4350 50  0000 C CNN
F 2 "" V 7540 4190 50  0001 C CNN
F 3 "~" H 7500 4200 50  0001 C CNN
	1    7500 4200
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R24
U 1 1 5E93943C
P 7500 4100
F 0 "R24" V 7450 3950 50  0000 C CNN
F 1 "22E" V 7450 4250 50  0000 C CNN
F 2 "" V 7540 4090 50  0001 C CNN
F 3 "~" H 7500 4100 50  0001 C CNN
	1    7500 4100
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R23
U 1 1 5E939436
P 7500 4000
F 0 "R23" V 7450 3850 50  0000 C CNN
F 1 "22E" V 7450 4150 50  0000 C CNN
F 2 "" V 7540 3990 50  0001 C CNN
F 3 "~" H 7500 4000 50  0001 C CNN
	1    7500 4000
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R22
U 1 1 5E939430
P 7500 3900
F 0 "R22" V 7450 3750 50  0000 C CNN
F 1 "22E" V 7450 4050 50  0000 C CNN
F 2 "" V 7540 3890 50  0001 C CNN
F 3 "~" H 7500 3900 50  0001 C CNN
	1    7500 3900
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R21
U 1 1 5E939424
P 7500 3750
F 0 "R21" V 7450 3600 50  0000 C CNN
F 1 "22E" V 7450 3900 50  0000 C CNN
F 2 "" V 7540 3740 50  0001 C CNN
F 3 "~" H 7500 3750 50  0001 C CNN
	1    7500 3750
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R20
U 1 1 5E93941E
P 7500 3650
F 0 "R20" V 7450 3500 50  0000 C CNN
F 1 "22E" V 7450 3800 50  0000 C CNN
F 2 "" V 7540 3640 50  0001 C CNN
F 3 "~" H 7500 3650 50  0001 C CNN
	1    7500 3650
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R19
U 1 1 5E939418
P 7500 3500
F 0 "R19" V 7450 3350 50  0000 C CNN
F 1 "22E" V 7450 3650 50  0000 C CNN
F 2 "" V 7540 3490 50  0001 C CNN
F 3 "~" H 7500 3500 50  0001 C CNN
	1    7500 3500
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R18
U 1 1 5E939412
P 7500 3400
F 0 "R18" V 7450 3250 50  0000 C CNN
F 1 "22E" V 7450 3550 50  0000 C CNN
F 2 "" V 7540 3390 50  0001 C CNN
F 3 "~" H 7500 3400 50  0001 C CNN
	1    7500 3400
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R17
U 1 1 5E93940C
P 7500 3300
F 0 "R17" V 7450 3150 50  0000 C CNN
F 1 "22E" V 7450 3450 50  0000 C CNN
F 2 "" V 7540 3290 50  0001 C CNN
F 3 "~" H 7500 3300 50  0001 C CNN
	1    7500 3300
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R16
U 1 1 5E939406
P 7500 3200
F 0 "R16" V 7450 3050 50  0000 C CNN
F 1 "22E" V 7450 3350 50  0000 C CNN
F 2 "" V 7540 3190 50  0001 C CNN
F 3 "~" H 7500 3200 50  0001 C CNN
	1    7500 3200
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R15
U 1 1 5E906F83
P 7500 2850
F 0 "R15" V 7450 2700 50  0000 C CNN
F 1 "22E" V 7450 3000 50  0000 C CNN
F 2 "" V 7540 2840 50  0001 C CNN
F 3 "~" H 7500 2850 50  0001 C CNN
	1    7500 2850
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R14
U 1 1 5E906F7D
P 7500 2750
F 0 "R14" V 7450 2600 50  0000 C CNN
F 1 "22E" V 7450 2900 50  0000 C CNN
F 2 "" V 7540 2740 50  0001 C CNN
F 3 "~" H 7500 2750 50  0001 C CNN
	1    7500 2750
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R13
U 1 1 5E906F77
P 7500 2650
F 0 "R13" V 7450 2500 50  0000 C CNN
F 1 "22E" V 7450 2800 50  0000 C CNN
F 2 "" V 7540 2640 50  0001 C CNN
F 3 "~" H 7500 2650 50  0001 C CNN
	1    7500 2650
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R12
U 1 1 5E906F71
P 7500 2550
F 0 "R12" V 7450 2400 50  0000 C CNN
F 1 "22E" V 7450 2700 50  0000 C CNN
F 2 "" V 7540 2540 50  0001 C CNN
F 3 "~" H 7500 2550 50  0001 C CNN
	1    7500 2550
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R11
U 1 1 5E906F6B
P 7500 2450
F 0 "R11" V 7450 2300 50  0000 C CNN
F 1 "22E" V 7450 2600 50  0000 C CNN
F 2 "" V 7540 2440 50  0001 C CNN
F 3 "~" H 7500 2450 50  0001 C CNN
	1    7500 2450
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R10
U 1 1 5E906F65
P 7500 2350
F 0 "R10" V 7450 2200 50  0000 C CNN
F 1 "22E" V 7450 2500 50  0000 C CNN
F 2 "" V 7540 2340 50  0001 C CNN
F 3 "~" H 7500 2350 50  0001 C CNN
	1    7500 2350
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R9
U 1 1 5E906F5F
P 7500 2250
F 0 "R9" V 7450 2100 50  0000 C CNN
F 1 "22E" V 7450 2400 50  0000 C CNN
F 2 "" V 7540 2240 50  0001 C CNN
F 3 "~" H 7500 2250 50  0001 C CNN
	1    7500 2250
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R8
U 1 1 5E906F59
P 7500 2150
F 0 "R8" V 7450 2000 50  0000 C CNN
F 1 "22E" V 7450 2300 50  0000 C CNN
F 2 "" V 7540 2140 50  0001 C CNN
F 3 "~" H 7500 2150 50  0001 C CNN
	1    7500 2150
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R7
U 1 1 5E906F53
P 7500 2050
F 0 "R7" V 7450 1900 50  0000 C CNN
F 1 "22E" V 7450 2200 50  0000 C CNN
F 2 "" V 7540 2040 50  0001 C CNN
F 3 "~" H 7500 2050 50  0001 C CNN
	1    7500 2050
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R6
U 1 1 5E906F4D
P 7500 1950
F 0 "R6" V 7450 1800 50  0000 C CNN
F 1 "22E" V 7450 2100 50  0000 C CNN
F 2 "" V 7540 1940 50  0001 C CNN
F 3 "~" H 7500 1950 50  0001 C CNN
	1    7500 1950
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R5
U 1 1 5E906F47
P 7500 1850
F 0 "R5" V 7450 1700 50  0000 C CNN
F 1 "22E" V 7450 2000 50  0000 C CNN
F 2 "" V 7540 1840 50  0001 C CNN
F 3 "~" H 7500 1850 50  0001 C CNN
	1    7500 1850
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R4
U 1 1 5E906F41
P 7500 1750
F 0 "R4" V 7450 1600 50  0000 C CNN
F 1 "22E" V 7450 1900 50  0000 C CNN
F 2 "" V 7540 1740 50  0001 C CNN
F 3 "~" H 7500 1750 50  0001 C CNN
	1    7500 1750
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R3
U 1 1 5E906F3B
P 7500 1650
F 0 "R3" V 7450 1500 50  0000 C CNN
F 1 "22E" V 7450 1800 50  0000 C CNN
F 2 "" V 7540 1640 50  0001 C CNN
F 3 "~" H 7500 1650 50  0001 C CNN
	1    7500 1650
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R59
U 1 1 5E7A81DF
P 9750 4750
F 0 "R59" V 9700 4600 50  0000 C CNN
F 1 "22E" V 9700 4900 50  0000 C CNN
F 2 "" V 9790 4740 50  0001 C CNN
F 3 "~" H 9750 4750 50  0001 C CNN
	1    9750 4750
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R58
U 1 1 5E795474
P 9750 4650
F 0 "R58" V 9700 4500 50  0000 C CNN
F 1 "22E" V 9700 4800 50  0000 C CNN
F 2 "" V 9790 4640 50  0001 C CNN
F 3 "~" H 9750 4650 50  0001 C CNN
	1    9750 4650
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R57
U 1 1 5E79546E
P 9750 4550
F 0 "R57" V 9700 4400 50  0000 C CNN
F 1 "22E" V 9700 4700 50  0000 C CNN
F 2 "" V 9790 4540 50  0001 C CNN
F 3 "~" H 9750 4550 50  0001 C CNN
	1    9750 4550
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R50
U 1 1 5E7821FD
P 9750 3850
F 0 "R50" V 9700 3700 50  0000 C CNN
F 1 "22E" V 9700 4000 50  0000 C CNN
F 2 "" V 9790 3840 50  0001 C CNN
F 3 "~" H 9750 3850 50  0001 C CNN
	1    9750 3850
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R43
U 1 1 5E75C936
P 9750 3150
F 0 "R43" V 9700 3000 50  0000 C CNN
F 1 "22E" V 9700 3300 50  0000 C CNN
F 2 "" V 9790 3140 50  0001 C CNN
F 3 "~" H 9750 3150 50  0001 C CNN
	1    9750 3150
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R42
U 1 1 5E75C930
P 9750 3050
F 0 "R42" V 9700 2900 50  0000 C CNN
F 1 "22E" V 9700 3200 50  0000 C CNN
F 2 "" V 9790 3040 50  0001 C CNN
F 3 "~" H 9750 3050 50  0001 C CNN
	1    9750 3050
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R41
U 1 1 5E75C92A
P 9750 2950
F 0 "R41" V 9700 2800 50  0000 C CNN
F 1 "22E" V 9700 3100 50  0000 C CNN
F 2 "" V 9790 2940 50  0001 C CNN
F 3 "~" H 9750 2950 50  0001 C CNN
	1    9750 2950
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R56
U 1 1 5E54A406
P 9750 4450
F 0 "R56" V 9700 4300 50  0000 C CNN
F 1 "22E" V 9700 4600 50  0000 C CNN
F 2 "" V 9790 4440 50  0001 C CNN
F 3 "~" H 9750 4450 50  0001 C CNN
	1    9750 4450
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R55
U 1 1 5E53B3F2
P 9750 4350
F 0 "R55" V 9700 4200 50  0000 C CNN
F 1 "22E" V 9700 4500 50  0000 C CNN
F 2 "" V 9790 4340 50  0001 C CNN
F 3 "~" H 9750 4350 50  0001 C CNN
	1    9750 4350
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R54
U 1 1 5E52C580
P 9750 4250
F 0 "R54" V 9700 4100 50  0000 C CNN
F 1 "22E" V 9700 4400 50  0000 C CNN
F 2 "" V 9790 4240 50  0001 C CNN
F 3 "~" H 9750 4250 50  0001 C CNN
	1    9750 4250
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R53
U 1 1 5E51D743
P 9750 4150
F 0 "R53" V 9700 4000 50  0000 C CNN
F 1 "22E" V 9700 4300 50  0000 C CNN
F 2 "" V 9790 4140 50  0001 C CNN
F 3 "~" H 9750 4150 50  0001 C CNN
	1    9750 4150
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R52
U 1 1 5E50E860
P 9750 4050
F 0 "R52" V 9700 3900 50  0000 C CNN
F 1 "22E" V 9700 4200 50  0000 C CNN
F 2 "" V 9790 4040 50  0001 C CNN
F 3 "~" H 9750 4050 50  0001 C CNN
	1    9750 4050
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R51
U 1 1 5E4FF973
P 9750 3950
F 0 "R51" V 9700 3800 50  0000 C CNN
F 1 "22E" V 9700 4100 50  0000 C CNN
F 2 "" V 9790 3940 50  0001 C CNN
F 3 "~" H 9750 3950 50  0001 C CNN
	1    9750 3950
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R49
U 1 1 5E4F0A09
P 9750 3750
F 0 "R49" V 9700 3600 50  0000 C CNN
F 1 "22E" V 9700 3900 50  0000 C CNN
F 2 "" V 9790 3740 50  0001 C CNN
F 3 "~" H 9750 3750 50  0001 C CNN
	1    9750 3750
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R48
U 1 1 5E4E1A96
P 9750 3650
F 0 "R48" V 9700 3500 50  0000 C CNN
F 1 "22E" V 9700 3800 50  0000 C CNN
F 2 "" V 9790 3640 50  0001 C CNN
F 3 "~" H 9750 3650 50  0001 C CNN
	1    9750 3650
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R47
U 1 1 5E4D2C98
P 9750 3550
F 0 "R47" V 9700 3400 50  0000 C CNN
F 1 "22E" V 9700 3700 50  0000 C CNN
F 2 "" V 9790 3540 50  0001 C CNN
F 3 "~" H 9750 3550 50  0001 C CNN
	1    9750 3550
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R46
U 1 1 5E4C3D89
P 9750 3450
F 0 "R46" V 9700 3300 50  0000 C CNN
F 1 "22E" V 9700 3600 50  0000 C CNN
F 2 "" V 9790 3440 50  0001 C CNN
F 3 "~" H 9750 3450 50  0001 C CNN
	1    9750 3450
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R45
U 1 1 5E4B4FA8
P 9750 3350
F 0 "R45" V 9700 3200 50  0000 C CNN
F 1 "22E" V 9700 3500 50  0000 C CNN
F 2 "" V 9790 3340 50  0001 C CNN
F 3 "~" H 9750 3350 50  0001 C CNN
	1    9750 3350
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R44
U 1 1 5E4A616F
P 9750 3250
F 0 "R44" V 9700 3100 50  0000 C CNN
F 1 "22E" V 9700 3400 50  0000 C CNN
F 2 "" V 9790 3240 50  0001 C CNN
F 3 "~" H 9750 3250 50  0001 C CNN
	1    9750 3250
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R40
U 1 1 5E496E28
P 9750 2850
F 0 "R40" V 9700 2700 50  0000 C CNN
F 1 "22E" V 9700 3000 50  0000 C CNN
F 2 "" V 9790 2840 50  0001 C CNN
F 3 "~" H 9750 2850 50  0001 C CNN
	1    9750 2850
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R39
U 1 1 5E488081
P 9750 2750
F 0 "R39" V 9700 2600 50  0000 C CNN
F 1 "22E" V 9700 2900 50  0000 C CNN
F 2 "" V 9790 2740 50  0001 C CNN
F 3 "~" H 9750 2750 50  0001 C CNN
	1    9750 2750
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R38
U 1 1 5E4792DA
P 9750 2650
F 0 "R38" V 9700 2500 50  0000 C CNN
F 1 "22E" V 9700 2800 50  0000 C CNN
F 2 "" V 9790 2640 50  0001 C CNN
F 3 "~" H 9750 2650 50  0001 C CNN
	1    9750 2650
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R37
U 1 1 5E46A533
P 9750 2550
F 0 "R37" V 9700 2400 50  0000 C CNN
F 1 "22E" V 9700 2700 50  0000 C CNN
F 2 "" V 9790 2540 50  0001 C CNN
F 3 "~" H 9750 2550 50  0001 C CNN
	1    9750 2550
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R36
U 1 1 5E45B78C
P 9750 2450
F 0 "R36" V 9700 2300 50  0000 C CNN
F 1 "22E" V 9700 2600 50  0000 C CNN
F 2 "" V 9790 2440 50  0001 C CNN
F 3 "~" H 9750 2450 50  0001 C CNN
	1    9750 2450
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R35
U 1 1 5E44C8E4
P 9750 2350
F 0 "R35" V 9700 2200 50  0000 C CNN
F 1 "22E" V 9700 2500 50  0000 C CNN
F 2 "" V 9790 2340 50  0001 C CNN
F 3 "~" H 9750 2350 50  0001 C CNN
	1    9750 2350
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R34
U 1 1 5E43DB20
P 9750 2250
F 0 "R34" V 9700 2100 50  0000 C CNN
F 1 "22E" V 9700 2400 50  0000 C CNN
F 2 "" V 9790 2240 50  0001 C CNN
F 3 "~" H 9750 2250 50  0001 C CNN
	1    9750 2250
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R33
U 1 1 5E42EC91
P 9750 2150
F 0 "R33" V 9700 2000 50  0000 C CNN
F 1 "22E" V 9700 2300 50  0000 C CNN
F 2 "" V 9790 2140 50  0001 C CNN
F 3 "~" H 9750 2150 50  0001 C CNN
	1    9750 2150
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R32
U 1 1 5E41FEEA
P 9750 2050
F 0 "R32" V 9700 1900 50  0000 C CNN
F 1 "22E" V 9700 2200 50  0000 C CNN
F 2 "" V 9790 2040 50  0001 C CNN
F 3 "~" H 9750 2050 50  0001 C CNN
	1    9750 2050
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R31
U 1 1 5E4110C5
P 9750 1950
F 0 "R31" V 9700 1800 50  0000 C CNN
F 1 "22E" V 9700 2100 50  0000 C CNN
F 2 "" V 9790 1940 50  0001 C CNN
F 3 "~" H 9750 1950 50  0001 C CNN
	1    9750 1950
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R30
U 1 1 5E40223A
P 9750 1850
F 0 "R30" V 9700 1700 50  0000 C CNN
F 1 "22E" V 9700 2000 50  0000 C CNN
F 2 "" V 9790 1840 50  0001 C CNN
F 3 "~" H 9750 1850 50  0001 C CNN
	1    9750 1850
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R29
U 1 1 5E3F33F8
P 9750 1750
F 0 "R29" V 9700 1600 50  0000 C CNN
F 1 "22E" V 9700 1900 50  0000 C CNN
F 2 "" V 9790 1740 50  0001 C CNN
F 3 "~" H 9750 1750 50  0001 C CNN
	1    9750 1750
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R28
U 1 1 5E3B43DA
P 9750 1650
F 0 "R28" V 9700 1500 50  0000 C CNN
F 1 "22E" V 9700 1800 50  0000 C CNN
F 2 "" V 9790 1640 50  0001 C CNN
F 3 "~" H 9750 1650 50  0001 C CNN
	1    9750 1650
	0    1    1    0   
$EndComp
$Comp
L aardonyx:SKT32E U?
U 2 1 5DBF55F4
P 8600 3050
AR Path="/5DBF55F4" Ref="U?"  Part="2" 
AR Path="/5D8B3740/5DBF55F4" Ref="U1"  Part="2" 
F 0 "U1" H 8050 4500 50  0000 C CNN
F 1 "SKT32E" H 9200 1150 50  0000 C CNN
F 2 "" H 7900 4200 50  0001 C CNN
F 3 "" H 7900 4200 50  0001 C CNN
	2    8600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1750 10500 1750
Wire Wire Line
	9900 1850 10500 1850
Wire Wire Line
	9900 1950 10500 1950
Wire Wire Line
	9900 2050 10500 2050
Wire Wire Line
	9900 2150 10500 2150
Wire Wire Line
	9900 2250 10500 2250
Wire Wire Line
	9900 2350 10500 2350
Wire Wire Line
	9900 2450 10500 2450
Wire Wire Line
	9900 2550 10500 2550
Wire Wire Line
	9900 2650 10500 2650
Wire Wire Line
	9900 2750 10500 2750
Wire Wire Line
	9900 2850 10500 2850
Wire Wire Line
	9900 2950 10500 2950
Wire Wire Line
	9900 3050 10500 3050
Wire Wire Line
	9900 3150 10500 3150
Wire Wire Line
	9900 3250 10500 3250
Wire Wire Line
	9900 3350 10500 3350
Wire Wire Line
	9900 3450 10500 3450
Wire Wire Line
	9900 3550 10500 3550
Wire Wire Line
	9900 3650 10500 3650
Wire Wire Line
	9900 3750 10500 3750
Wire Wire Line
	9900 3850 10500 3850
Wire Wire Line
	9900 3950 10500 3950
Wire Wire Line
	9900 4050 10500 4050
Wire Wire Line
	9900 4150 10500 4150
Wire Wire Line
	9900 4250 10500 4250
Wire Wire Line
	9900 4350 10500 4350
Wire Wire Line
	9900 4450 10500 4450
Wire Wire Line
	9900 4550 10500 4550
Wire Wire Line
	9900 4650 10500 4650
Wire Wire Line
	9900 4750 10500 4750
Wire Wire Line
	6750 1650 7350 1650
Wire Wire Line
	6750 1750 7350 1750
Wire Wire Line
	6750 1850 7350 1850
Wire Wire Line
	6750 1950 7350 1950
Wire Wire Line
	6750 2050 7350 2050
Wire Wire Line
	6750 2150 7350 2150
Wire Wire Line
	6750 2250 7350 2250
Wire Wire Line
	6750 2350 7350 2350
Wire Wire Line
	6750 2450 7350 2450
Wire Wire Line
	6750 2550 7350 2550
Wire Wire Line
	6750 2650 7350 2650
Wire Wire Line
	6750 2750 7350 2750
Wire Wire Line
	6750 2850 7350 2850
Wire Wire Line
	6750 3200 7350 3200
Wire Wire Line
	6750 3300 7350 3300
Wire Wire Line
	6750 3400 7350 3400
Wire Wire Line
	6750 3500 7350 3500
Wire Wire Line
	6750 3650 7350 3650
Wire Wire Line
	6750 3750 7350 3750
Wire Wire Line
	6750 3900 7350 3900
Wire Wire Line
	6750 4000 7350 4000
Wire Wire Line
	6750 4100 7350 4100
Wire Wire Line
	6750 4200 7350 4200
Wire Wire Line
	6750 4300 7350 4300
Wire Wire Line
	7350 4400 6750 4400
Wire Wire Line
	9900 1650 10500 1650
Text Label 10050 1650 0    39   ~ 0
SDRAM_D0
Text Label 10050 1750 0    39   ~ 0
SDRAM_D1
Text Label 10050 1850 0    39   ~ 0
SDRAM_D2
Text Label 10050 1950 0    39   ~ 0
SDRAM_D3
Text Label 10050 2050 0    39   ~ 0
SDRAM_D4
Text Label 10050 2150 0    39   ~ 0
SDRAM_D5
Text Label 10050 2250 0    39   ~ 0
SDRAM_D6
Text Label 10050 2350 0    39   ~ 0
SDRAM_D7
Text Label 10050 2450 0    39   ~ 0
SDRAM_D8
Text Label 10050 2550 0    39   ~ 0
SDRAM_D9
Text Label 10050 2650 0    39   ~ 0
SDRAM_D10
Text Label 10050 2750 0    39   ~ 0
SDRAM_D11
Text Label 10050 2850 0    39   ~ 0
SDRAM_D12
Text Label 10050 2950 0    39   ~ 0
SDRAM_D13
Text Label 10050 3050 0    39   ~ 0
SDRAM_D14
Text Label 10050 3150 0    39   ~ 0
SDRAM_D15
Text Label 10050 3250 0    39   ~ 0
SDRAM_D16
Text Label 10050 3350 0    39   ~ 0
SDRAM_D17
Text Label 10050 3450 0    39   ~ 0
SDRAM_D18
Text Label 10050 3550 0    39   ~ 0
SDRAM_D19
Text Label 10050 3650 0    39   ~ 0
SDRAM_D20
Text Label 10050 3750 0    39   ~ 0
SDRAM_D21
Text Label 10050 3850 0    39   ~ 0
SDRAM_D22
Text Label 10050 3950 0    39   ~ 0
SDRAM_D23
Text Label 10050 4050 0    39   ~ 0
SDRAM_D24
Text Label 10050 4150 0    39   ~ 0
SDRAM_D25
Text Label 10050 4250 0    39   ~ 0
SDRAM_D26
Text Label 10050 4350 0    39   ~ 0
SDRAM_D27
Text Label 10050 4450 0    39   ~ 0
SDRAM_D28
Text Label 10050 4550 0    39   ~ 0
SDRAM_D29
Text Label 10050 4650 0    39   ~ 0
SDRAM_D30
Text Label 10050 4750 0    39   ~ 0
SDRAM_D31
Text Label 6900 1650 0    39   ~ 0
SDRAM_A0
Text Label 6900 1750 0    39   ~ 0
SDRAM_A1
Text Label 6900 1850 0    39   ~ 0
SDRAM_A2
Text Label 6900 1950 0    39   ~ 0
SDRAM_A3
Text Label 6900 2050 0    39   ~ 0
SDRAM_A4
Text Label 6900 2150 0    39   ~ 0
SDRAM_A5
Text Label 6900 2250 0    39   ~ 0
SDRAM_A6
Text Label 6900 2350 0    39   ~ 0
SDRAM_A7
Text Label 6900 2450 0    39   ~ 0
SDRAM_A8
Text Label 6900 2550 0    39   ~ 0
SDRAM_A9
Text Label 6900 2650 0    39   ~ 0
SDRAM_A10
Text Label 6900 2750 0    39   ~ 0
SDRAM_A11
Text Label 6900 2850 0    39   ~ 0
SDRAM_A12
Text Label 6900 3200 0    39   ~ 0
SDRAM_DQM0
Text Label 6900 3300 0    39   ~ 0
SDRAM_DQM1
Text Label 6900 3400 0    39   ~ 0
SDRAM_DQM2
Text Label 6900 3500 0    39   ~ 0
SDRAM_DQM3
Text Label 6900 3650 0    39   ~ 0
SDRAM_BA0
Text Label 6900 3750 0    39   ~ 0
SDRAM_BA1
Text Label 6900 3900 0    39   ~ 0
SDRAM_CS
Text Label 6900 4000 0    39   ~ 0
SDRAM_RAS
Text Label 6900 4100 0    39   ~ 0
SDRAM_CAS
Text Label 6900 4200 0    39   ~ 0
SDRAM_WE
Text Label 6900 4300 0    39   ~ 0
SDRAM_CLK
Text Label 6900 4400 0    39   ~ 0
SDRAM_CKE
Text Notes 8100 1350 0    79   Italic 0
SKT32E - SDRAM
Wire Wire Line
	4300 5700 4900 5700
Wire Wire Line
	4300 5800 4900 5800
Wire Wire Line
	4300 5900 4900 5900
Wire Wire Line
	4300 6000 4900 6000
Wire Wire Line
	4300 6500 4900 6500
Wire Wire Line
	4300 6600 4900 6600
Wire Wire Line
	4300 6700 4900 6700
Wire Wire Line
	4300 6800 4900 6800
Wire Wire Line
	4300 6900 4900 6900
Wire Wire Line
	4300 7100 4900 7100
Wire Wire Line
	4300 7200 4900 7200
Wire Wire Line
	4300 7300 4900 7300
Wire Wire Line
	4300 6100 4900 6100
Wire Wire Line
	4300 6200 4900 6200
Wire Wire Line
	4300 5450 4900 5450
Wire Wire Line
	4300 5550 4900 5550
Wire Wire Line
	4300 5200 4900 5200
Wire Wire Line
	4300 5300 4900 5300
Wire Wire Line
	4300 4800 4900 4800
Wire Wire Line
	4300 4900 4900 4900
Text Label 4400 4800 0    39   ~ 0
CLK
Text Label 4400 4900 0    39   ~ 0
RESET
Text Label 4400 5200 0    39   ~ 0
UART0_TX
Text Label 4400 5300 0    39   ~ 0
UART0_RX
Text Label 4400 5450 0    39   ~ 0
I2C0_SDA
Text Label 4400 5550 0    39   ~ 0
I2C0_SCL
Text Label 4400 5700 0    39   ~ 0
QSPI0_CLK
Text Label 4400 5800 0    39   ~ 0
QSPI0_NCS
Text Label 4400 5900 0    39   ~ 0
QSPI0_IO0
Text Label 4400 6000 0    39   ~ 0
QSPI0_IO1
Text Label 4400 6100 0    39   ~ 0
QSPI0_IO2
Text Label 4400 6200 0    39   ~ 0
QSPI0_IO3
Text Label 4400 6500 0    39   ~ 0
TMS
Text Label 4400 6600 0    39   ~ 0
TRST
Text Label 4400 6700 0    39   ~ 0
TCK
Text Label 4300 6800 0    39   ~ 0
TDI
Text Label 4400 6900 0    39   ~ 0
TDO
Text Label 4400 7100 0    39   ~ 0
BOOT_MODE0
Text Label 4400 7200 0    39   ~ 0
BOOT_MODE1
Text Label 4400 7300 0    39   ~ 0
TEST_MODE
$Comp
L aardonyx:SKT32E U1
U 1 1 5DEBECB8
P 3200 6000
F 0 "U1" H 2450 7400 50  0000 C CNN
F 1 "SKT32E" H 3950 4350 50  0000 C CNN
F 2 "" H 2150 6450 50  0001 C CNN
F 3 "" H 2150 6450 50  0001 C CNN
	1    3200 6000
	1    0    0    -1  
$EndComp
Text Notes 2500 4450 0    79   Italic 0
SKT32E - PERIPHERALS
Text Label 1700 7450 0    39   ~ 0
SPI1_MOSI
Text Label 1700 7350 0    39   ~ 0
SPI1_MISO
Text Label 1700 7250 0    39   ~ 0
SPI1_CLK
Text Label 1700 7150 0    39   ~ 0
SPI1_NCS
Text Label 1700 7000 0    39   ~ 0
I2C1_SDA
Text Label 1700 6900 0    39   ~ 0
I2C1_SCL
Text Label 1700 6750 0    39   ~ 0
IO_15
Text Label 1700 6650 0    39   ~ 0
IO_14
Text Label 1700 6550 0    39   ~ 0
IO_13
Text Label 1700 6450 0    39   ~ 0
IO_12
Text Label 1700 6350 0    39   ~ 0
IO_11
Text Label 1700 6250 0    39   ~ 0
IO_10
Text Label 1700 6150 0    39   ~ 0
IO_9
Text Label 1700 6050 0    39   ~ 0
IO_8
Text Label 1700 5950 0    39   ~ 0
IO_7
Text Label 1700 5850 0    39   ~ 0
IO_6
Text Label 1700 5750 0    39   ~ 0
IO_5
Text Label 1700 5650 0    39   ~ 0
IO_4
Text Label 1700 5550 0    39   ~ 0
IO_3
Text Label 1700 5450 0    39   ~ 0
IO_2
Text Label 1700 5350 0    39   ~ 0
IO_1
Text Label 1700 5250 0    39   ~ 0
IO_0
Text Label 1300 5100 0    39   ~ 0
SPI0_MOSI
Text Label 1300 5000 0    39   ~ 0
SPI0_MISO
Text Label 1300 4900 0    39   ~ 0
SPI0_CLK
Text Label 1300 4800 0    39   ~ 0
SPI0_nCS
Wire Wire Line
	1150 5100 1750 5100
Wire Wire Line
	1150 5000 1750 5000
Wire Wire Line
	1150 4900 1750 4900
Wire Wire Line
	1150 4800 1750 4800
Wire Wire Line
	2150 7450 1550 7450
Wire Wire Line
	1550 7350 2150 7350
Wire Wire Line
	1550 7250 2150 7250
Wire Wire Line
	1550 7150 2150 7150
Wire Wire Line
	1550 7000 2150 7000
Wire Wire Line
	1550 6900 2150 6900
Wire Wire Line
	1550 6750 2150 6750
Wire Wire Line
	1550 6650 2150 6650
Wire Wire Line
	1550 6550 2150 6550
Wire Wire Line
	1550 6450 2150 6450
Wire Wire Line
	1550 6350 2150 6350
Wire Wire Line
	1550 6250 2150 6250
Wire Wire Line
	1550 6150 2150 6150
Wire Wire Line
	1550 6050 2150 6050
Wire Wire Line
	1550 5950 2150 5950
Wire Wire Line
	1550 5850 2150 5850
Wire Wire Line
	1550 5750 2150 5750
Wire Wire Line
	1550 5650 2150 5650
Wire Wire Line
	1550 5550 2150 5550
Wire Wire Line
	1550 5450 2150 5450
Wire Wire Line
	1550 5350 2150 5350
Wire Wire Line
	1550 5250 2150 5250
$Comp
L aardonyx:GND #PWR02
U 1 1 5F2FFB5A
P 5050 1350
F 0 "#PWR02" H 5050 1100 50  0001 C CNN
F 1 "GND" H 5055 1177 50  0000 C CNN
F 2 "" H 5050 1350 50  0001 C CNN
F 3 "" H 5050 1350 50  0001 C CNN
	1    5050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1300 5050 1350
Connection ~ 5050 1300
$Comp
L aardonyx:V1P8 #PWR01
U 1 1 5F36DBCF
P 3350 1850
F 0 "#PWR01" H 3500 1800 50  0001 C CNN
F 1 "V1P8" H 3355 2025 50  0000 C CNN
F 2 "" H 3350 1850 50  0001 C CNN
F 3 "" H 3350 1850 50  0001 C CNN
	1    3350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1850 3350 1900
Connection ~ 3350 1900
$Comp
L aardonyx:R_US R99
U 1 1 5F567A2E
P 1900 5100
F 0 "R99" V 1850 4950 50  0000 C CNN
F 1 "22E" V 1850 5250 50  0000 C CNN
F 2 "" V 1940 5090 50  0001 C CNN
F 3 "~" H 1900 5100 50  0001 C CNN
	1    1900 5100
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R98
U 1 1 5F567A34
P 1900 5000
F 0 "R98" V 1850 4850 50  0000 C CNN
F 1 "22E" V 1850 5150 50  0000 C CNN
F 2 "" V 1940 4990 50  0001 C CNN
F 3 "~" H 1900 5000 50  0001 C CNN
	1    1900 5000
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R2
U 1 1 5F567A3A
P 1900 4900
F 0 "R2" V 1850 4750 50  0000 C CNN
F 1 "22E" V 1850 5050 50  0000 C CNN
F 2 "" V 1940 4890 50  0001 C CNN
F 3 "~" H 1900 4900 50  0001 C CNN
	1    1900 4900
	0    1    1    0   
$EndComp
$Comp
L aardonyx:R_US R1
U 1 1 5F567A40
P 1900 4800
F 0 "R1" V 1850 4650 50  0000 C CNN
F 1 "22E" V 1850 4950 50  0000 C CNN
F 2 "" V 1940 4790 50  0001 C CNN
F 3 "~" H 1900 4800 50  0001 C CNN
	1    1900 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 4800 2150 4800
Wire Wire Line
	2050 4900 2150 4900
Wire Wire Line
	2150 5000 2050 5000
Wire Wire Line
	2050 5100 2150 5100
$EndSCHEMATC
