EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Intel 10M02SCE144 Development Board"
Date "2021-02-02"
Rev "1.0"
Comp ""
Comment1 "Designer: Marcus De La Garza"
Comment2 ""
Comment3 "FPGA Specifications: 2000 LE's, 144 Pin EQFP, Internal Configuration Memory, 3.3V IO"
Comment4 "FPGA Development Board based on Intel MAX 10 FPGA"
$EndDescr
$Comp
L Device:CP_Small C2
U 1 1 6016C346
P 3050 1100
F 0 "C2" H 3138 1146 50  0000 L CNN
F 1 "10uF" H 3138 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 3050 1100 50  0001 C CNN
F 3 "~" H 3050 1100 50  0001 C CNN
	1    3050 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 6016EF84
P 1350 1100
F 0 "C1" H 1438 1146 50  0000 L CNN
F 1 "10uF" H 1438 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 1350 1100 50  0001 C CNN
F 3 "~" H 1350 1100 50  0001 C CNN
	1    1350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1000 1350 900 
Wire Wire Line
	3050 1000 3050 900 
Wire Wire Line
	1350 1200 1350 1600
Wire Wire Line
	3050 1600 3050 1200
$Comp
L power:VCC #PWR0101
U 1 1 60172066
P 3050 700
F 0 "#PWR0101" H 3050 550 50  0001 C CNN
F 1 "VCC" H 3065 873 50  0000 C CNN
F 2 "" H 3050 700 50  0001 C CNN
F 3 "" H 3050 700 50  0001 C CNN
	1    3050 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 700  3050 900 
Connection ~ 3050 900 
$Comp
L Connector:USB_B_Mini J1
U 1 1 60173097
P 850 1100
F 0 "J1" H 907 1567 50  0000 C CNN
F 1 "USB_B_Mini" H 907 1476 50  0000 C CNN
F 2 "Custom_Parts:USB_Mini_Through_Hole" H 1000 1050 50  0001 C CNN
F 3 "~" H 1000 1050 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60175783
P 850 1650
F 0 "#PWR0102" H 850 1400 50  0001 C CNN
F 1 "GND" H 855 1477 50  0000 C CNN
F 2 "" H 850 1650 50  0001 C CNN
F 3 "" H 850 1650 50  0001 C CNN
	1    850  1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1500 850  1600
Wire Wire Line
	1150 900  1250 900 
Connection ~ 1350 900 
Wire Wire Line
	1350 1600 850  1600
Connection ~ 1350 1600
Connection ~ 850  1600
Wire Wire Line
	850  1600 850  1650
$Comp
L Custom_Parts:Crystal_Oscillator Y1
U 1 1 601A0097
P 1250 2750
F 0 "Y1" H 1750 3015 50  0000 C CNN
F 1 "Crystal_Oscillator" H 1750 2925 50  0000 C CNN
F 2 "Custom_Parts:7x5_Crystal_Oscillator" H 2100 2850 50  0001 L CNN
F 3 "" H 2100 2750 50  0001 L CNN
F 4 "4 Pin Crystal Oscillator" H 2100 2650 50  0001 L CNN "Description"
	1    1250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 601A172B
P 1100 2550
F 0 "#PWR0103" H 1100 2400 50  0001 C CNN
F 1 "VCC" H 1115 2723 50  0000 C CNN
F 2 "" H 1100 2550 50  0001 C CNN
F 3 "" H 1100 2550 50  0001 C CNN
	1    1100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 601A2057
P 2400 3150
F 0 "#PWR0104" H 2400 2900 50  0001 C CNN
F 1 "GND" H 2405 2977 50  0000 C CNN
F 2 "" H 2400 3150 50  0001 C CNN
F 3 "" H 2400 3150 50  0001 C CNN
	1    2400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2750 1100 2750
Wire Wire Line
	1100 2750 1100 2550
Wire Wire Line
	2400 2850 2250 2850
Wire Wire Line
	2400 2850 2400 3100
$Comp
L Device:C_Small C3
U 1 1 601A4E1E
P 1750 3100
F 0 "C3" V 1790 3010 50  0000 C CNN
F 1 "0.01uF" V 1870 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1750 3100 50  0001 C CNN
F 3 "~" H 1750 3100 50  0001 C CNN
	1    1750 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 3100 2400 3100
Connection ~ 2400 3100
Wire Wire Line
	2400 3100 2400 3150
Wire Wire Line
	1650 3100 1100 3100
Wire Wire Line
	1100 3100 1100 2750
Connection ~ 1100 2750
NoConn ~ 1250 2850
Text Notes 1070 3470 0    50   ~ 0
*Enable pin is pulled high internally
Text GLabel 2400 2750 2    50   Input ~ 0
50MHz_CLK
Wire Wire Line
	2250 2750 2400 2750
$Comp
L Intel_MAX10_FPGA:10M02SCE144C8G U1
U 1 1 601AC975
P 1400 5350
F 0 "U1" H 1400 7015 50  0000 C CNN
F 1 "10M02SCE144C8G" H 1400 6924 50  0000 C CNN
F 2 "Intel_MAX10_FPGA:QFP50P2200X2200X165-144N" H 3200 6750 50  0001 C CNN
F 3 "" H 1350 4750 50  0001 C CNN
F 4 "Intel" H 2400 6950 50  0001 C CNN "Manfufactuer"
F 5 "10M02SCE144C8G" H 2650 6850 50  0001 C CNN "Part Number"
	1    1400 5350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 601C88D7
P 700 3900
F 0 "#PWR0105" H 700 3750 50  0001 C CNN
F 1 "VCC" H 715 4073 50  0000 C CNN
F 2 "" H 700 3900 50  0001 C CNN
F 3 "" H 700 3900 50  0001 C CNN
	1    700  3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 601C91A5
P 700 6800
F 0 "#PWR0106" H 700 6550 50  0001 C CNN
F 1 "GND" H 705 6627 50  0000 C CNN
F 2 "" H 700 6800 50  0001 C CNN
F 3 "" H 700 6800 50  0001 C CNN
	1    700  6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5150 700  5150
Wire Wire Line
	700  5150 700  5050
Wire Wire Line
	900  5050 700  5050
Connection ~ 700  5050
Wire Wire Line
	700  5050 700  4950
Wire Wire Line
	900  4950 700  4950
Connection ~ 700  4950
Wire Wire Line
	700  4950 700  4850
Wire Wire Line
	900  4850 700  4850
Connection ~ 700  4850
Wire Wire Line
	700  4850 700  4750
Wire Wire Line
	900  4750 700  4750
Connection ~ 700  4750
Wire Wire Line
	700  4750 700  4650
Wire Wire Line
	900  4650 700  4650
Connection ~ 700  4650
Wire Wire Line
	700  4650 700  4550
Wire Wire Line
	900  4550 700  4550
Connection ~ 700  4550
Wire Wire Line
	700  4550 700  4450
Wire Wire Line
	900  4450 700  4450
Connection ~ 700  4450
Wire Wire Line
	700  4450 700  4350
Wire Wire Line
	900  4350 700  4350
Connection ~ 700  4350
Wire Wire Line
	700  4350 700  4250
Wire Wire Line
	900  4250 700  4250
Connection ~ 700  4250
Wire Wire Line
	700  4250 700  4150
Wire Wire Line
	900  4150 700  4150
Connection ~ 700  4150
Wire Wire Line
	700  4150 700  4050
Wire Wire Line
	900  4050 700  4050
Connection ~ 700  4050
Wire Wire Line
	700  4050 700  3900
Wire Wire Line
	900  5300 700  5300
Wire Wire Line
	700  5300 700  5400
Wire Wire Line
	900  5400 700  5400
Connection ~ 700  5400
Wire Wire Line
	700  5400 700  5500
Wire Wire Line
	900  5500 700  5500
Connection ~ 700  5500
Wire Wire Line
	700  5500 700  5600
Wire Wire Line
	900  5600 700  5600
Connection ~ 700  5600
Wire Wire Line
	700  5600 700  5700
Wire Wire Line
	900  5700 700  5700
Connection ~ 700  5700
Wire Wire Line
	700  5700 700  5800
Wire Wire Line
	900  5800 700  5800
Connection ~ 700  5800
Wire Wire Line
	700  5800 700  5900
Wire Wire Line
	900  5900 700  5900
Connection ~ 700  5900
Wire Wire Line
	700  5900 700  6000
Wire Wire Line
	900  6000 700  6000
Connection ~ 700  6000
Wire Wire Line
	700  6000 700  6100
Wire Wire Line
	900  6100 700  6100
Connection ~ 700  6100
Wire Wire Line
	700  6100 700  6200
Wire Wire Line
	900  6200 700  6200
Connection ~ 700  6200
Wire Wire Line
	700  6200 700  6300
Wire Wire Line
	900  6300 700  6300
Connection ~ 700  6300
Wire Wire Line
	700  6300 700  6400
Wire Wire Line
	900  6400 700  6400
Connection ~ 700  6400
Wire Wire Line
	700  6400 700  6500
Wire Wire Line
	900  6500 700  6500
Connection ~ 700  6500
Wire Wire Line
	700  6500 700  6600
Wire Wire Line
	900  6600 700  6600
Connection ~ 700  6600
Wire Wire Line
	700  6600 700  6800
$Comp
L power:VCC #PWR0107
U 1 1 601E6BFF
P 2100 3900
F 0 "#PWR0107" H 2100 3750 50  0001 C CNN
F 1 "VCC" H 2115 4073 50  0000 C CNN
F 2 "" H 2100 3900 50  0001 C CNN
F 3 "" H 2100 3900 50  0001 C CNN
	1    2100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5400 2100 5400
Wire Wire Line
	2100 5400 2100 5300
Wire Wire Line
	1900 5300 2100 5300
Connection ~ 2100 5300
Wire Wire Line
	2100 5300 2100 5250
Wire Wire Line
	1900 5200 2100 5200
Connection ~ 2100 5200
Wire Wire Line
	2100 5200 2100 5050
Wire Wire Line
	1900 5050 2100 5050
Connection ~ 2100 5050
Wire Wire Line
	2100 5050 2100 4950
Wire Wire Line
	1900 4950 2100 4950
Connection ~ 2100 4950
Wire Wire Line
	2100 4950 2100 4800
Wire Wire Line
	1900 4800 2100 4800
Connection ~ 2100 4800
Wire Wire Line
	2100 4800 2100 4650
Wire Wire Line
	1900 4650 2100 4650
Connection ~ 2100 4650
Wire Wire Line
	2100 4650 2100 4550
Wire Wire Line
	1900 4550 2100 4550
Connection ~ 2100 4550
Wire Wire Line
	2100 4550 2100 4450
Wire Wire Line
	1900 4450 2100 4450
Connection ~ 2100 4450
Wire Wire Line
	2100 4450 2100 4350
Wire Wire Line
	1900 4300 2100 4300
Connection ~ 2100 4300
Wire Wire Line
	2100 4300 2100 4150
Wire Wire Line
	1900 4150 2100 4150
Connection ~ 2100 4150
Wire Wire Line
	2100 4150 2100 4050
Wire Wire Line
	1900 4050 2100 4050
Connection ~ 2100 4050
Wire Wire Line
	2100 4050 2100 3900
Wire Wire Line
	1900 6600 2100 6600
Wire Wire Line
	2100 6600 2100 6500
Connection ~ 2100 5400
Wire Wire Line
	1900 6500 2100 6500
Connection ~ 2100 6500
Wire Wire Line
	2100 6500 2100 6400
Wire Wire Line
	1900 6400 2100 6400
Connection ~ 2100 6400
Wire Wire Line
	2100 6400 2100 6300
Wire Wire Line
	1900 6300 2100 6300
Connection ~ 2100 6300
Wire Wire Line
	2100 6300 2100 6200
Wire Wire Line
	1900 6200 2100 6200
Connection ~ 2100 6200
Wire Wire Line
	2100 6200 2100 5550
$Comp
L Device:C_Small C4
U 1 1 6020F2C6
P 1000 7200
F 0 "C4" H 880 7120 50  0000 L CNN
F 1 "0.1uF" H 1092 7155 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1000 7200 50  0001 C CNN
F 3 "~" H 1000 7200 50  0001 C CNN
	1    1000 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 60213C35
P 1150 7200
F 0 "C5" H 1030 7120 50  0000 L CNN
F 1 "0.1uF" H 1242 7155 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1150 7200 50  0001 C CNN
F 3 "~" H 1150 7200 50  0001 C CNN
	1    1150 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 60214115
P 1300 7200
F 0 "C6" H 1180 7120 50  0000 L CNN
F 1 "0.1uF" H 1392 7155 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1300 7200 50  0001 C CNN
F 3 "~" H 1300 7200 50  0001 C CNN
	1    1300 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 602145C5
P 1450 7200
F 0 "C7" H 1330 7120 50  0000 L CNN
F 1 "0.1uF" H 1542 7155 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1450 7200 50  0001 C CNN
F 3 "~" H 1450 7200 50  0001 C CNN
	1    1450 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 60214AB3
P 1600 7200
F 0 "C8" H 1480 7120 50  0000 L CNN
F 1 "0.1uF" H 1692 7155 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1600 7200 50  0001 C CNN
F 3 "~" H 1600 7200 50  0001 C CNN
	1    1600 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 60214D84
P 1750 7200
F 0 "C9" H 1630 7120 50  0000 L CNN
F 1 "0.1uF" H 1842 7155 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1750 7200 50  0001 C CNN
F 3 "~" H 1750 7200 50  0001 C CNN
	1    1750 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 6021529F
P 1900 7200
F 0 "C10" H 1750 7120 50  0000 L CNN
F 1 "0.1uF" H 1992 7155 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1900 7200 50  0001 C CNN
F 3 "~" H 1900 7200 50  0001 C CNN
	1    1900 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 6021563A
P 2050 7200
F 0 "C11" H 1900 7120 50  0000 L CNN
F 1 "0.1uF" H 2142 7155 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2050 7200 50  0001 C CNN
F 3 "~" H 2050 7200 50  0001 C CNN
	1    2050 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 60215BE5
P 2200 7200
F 0 "C12" H 2050 7120 50  0000 L CNN
F 1 "1uF" H 2270 7200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2200 7200 50  0001 C CNN
F 3 "~" H 2200 7200 50  0001 C CNN
	1    2200 7200
	1    0    0    -1  
$EndComp
Text Notes 750  7750 0    50   ~ 0
*All capacitors are 0.1uF unless otherwise stated
$Comp
L Device:C_Small C25
U 1 1 60244465
P 2400 4150
F 0 "C25" H 2250 4070 50  0000 L CNN
F 1 "0.1uF" H 2492 4105 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2400 4150 50  0001 C CNN
F 3 "~" H 2400 4150 50  0001 C CNN
	1    2400 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C26
U 1 1 6024446B
P 2550 4150
F 0 "C26" H 2400 4070 50  0000 L CNN
F 1 "1uF" H 2620 4150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2550 4150 50  0001 C CNN
F 3 "~" H 2550 4150 50  0001 C CNN
	1    2550 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 60248135
P 2400 4450
F 0 "C23" H 2250 4370 50  0000 L CNN
F 1 "0.1uF" H 2492 4405 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2400 4450 50  0001 C CNN
F 3 "~" H 2400 4450 50  0001 C CNN
	1    2400 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 6024813B
P 2550 4450
F 0 "C24" H 2400 4370 50  0000 L CNN
F 1 "1uF" H 2620 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2550 4450 50  0001 C CNN
F 3 "~" H 2550 4450 50  0001 C CNN
	1    2550 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 6024BF99
P 2400 4750
F 0 "C21" H 2250 4670 50  0000 L CNN
F 1 "0.1uF" H 2492 4705 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2400 4750 50  0001 C CNN
F 3 "~" H 2400 4750 50  0001 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 6024BF9F
P 2550 4750
F 0 "C22" H 2400 4670 50  0000 L CNN
F 1 "1uF" H 2620 4750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2550 4750 50  0001 C CNN
F 3 "~" H 2550 4750 50  0001 C CNN
	1    2550 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 6024F643
P 2400 5050
F 0 "C19" H 2250 4970 50  0000 L CNN
F 1 "0.1uF" H 2492 5005 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2400 5050 50  0001 C CNN
F 3 "~" H 2400 5050 50  0001 C CNN
	1    2400 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 6024F649
P 2550 5050
F 0 "C20" H 2400 4970 50  0000 L CNN
F 1 "1uF" H 2620 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2550 5050 50  0001 C CNN
F 3 "~" H 2550 5050 50  0001 C CNN
	1    2550 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 602535BF
P 2400 5350
F 0 "C17" H 2250 5270 50  0000 L CNN
F 1 "0.1uF" H 2492 5305 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2400 5350 50  0001 C CNN
F 3 "~" H 2400 5350 50  0001 C CNN
	1    2400 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 602535C5
P 2550 5350
F 0 "C18" H 2400 5270 50  0000 L CNN
F 1 "1uF" H 2620 5350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2550 5350 50  0001 C CNN
F 3 "~" H 2550 5350 50  0001 C CNN
	1    2550 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 60256ECF
P 2400 5650
F 0 "C15" H 2250 5570 50  0000 L CNN
F 1 "0.1uF" H 2492 5605 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2400 5650 50  0001 C CNN
F 3 "~" H 2400 5650 50  0001 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 60256ED5
P 2550 5650
F 0 "C16" H 2400 5570 50  0000 L CNN
F 1 "1uF" H 2620 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2550 5650 50  0001 C CNN
F 3 "~" H 2550 5650 50  0001 C CNN
	1    2550 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 6025AB99
P 2400 6300
F 0 "C13" H 2250 6220 50  0000 L CNN
F 1 "0.1uF" H 2492 6255 50  0001 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2400 6300 50  0001 C CNN
F 3 "~" H 2400 6300 50  0001 C CNN
	1    2400 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 6025AB9F
P 2550 6300
F 0 "C14" H 2400 6220 50  0000 L CNN
F 1 "1uF" H 2620 6300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2550 6300 50  0001 C CNN
F 3 "~" H 2550 6300 50  0001 C CNN
	1    2550 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4050 2100 4050
Wire Wire Line
	2550 4050 2400 4050
Connection ~ 2400 4050
Wire Wire Line
	2550 4350 2400 4350
Wire Wire Line
	2400 4350 2100 4350
Connection ~ 2400 4350
Connection ~ 2100 4350
Wire Wire Line
	2100 4350 2100 4300
Wire Wire Line
	2550 4650 2400 4650
Connection ~ 2400 4650
Wire Wire Line
	2400 4650 2100 4650
Wire Wire Line
	2550 4950 2400 4950
Connection ~ 2400 4950
Wire Wire Line
	2400 4950 2100 4950
Wire Wire Line
	2550 5250 2400 5250
Connection ~ 2100 5250
Wire Wire Line
	2100 5250 2100 5200
Connection ~ 2400 5250
Wire Wire Line
	2400 5250 2100 5250
Wire Wire Line
	2550 5550 2400 5550
Connection ~ 2100 5550
Wire Wire Line
	2100 5550 2100 5400
Connection ~ 2400 5550
Wire Wire Line
	2400 5550 2100 5550
Wire Wire Line
	2550 6200 2400 6200
Connection ~ 2400 6200
Wire Wire Line
	2400 6200 2100 6200
$Comp
L power:VCC #PWR0108
U 1 1 6033966C
P 1000 6950
F 0 "#PWR0108" H 1000 6800 50  0001 C CNN
F 1 "VCC" H 1015 7123 50  0000 C CNN
F 2 "" H 1000 6950 50  0001 C CNN
F 3 "" H 1000 6950 50  0001 C CNN
	1    1000 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6034094D
P 2200 7450
F 0 "#PWR0109" H 2200 7200 50  0001 C CNN
F 1 "GND" H 2205 7277 50  0000 C CNN
F 2 "" H 2200 7450 50  0001 C CNN
F 3 "" H 2200 7450 50  0001 C CNN
	1    2200 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 603851D1
P 2800 6650
F 0 "#PWR0110" H 2800 6400 50  0001 C CNN
F 1 "GND" H 2805 6477 50  0000 C CNN
F 2 "" H 2800 6650 50  0001 C CNN
F 3 "" H 2800 6650 50  0001 C CNN
	1    2800 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6400 2400 6450
Wire Wire Line
	2400 6450 2550 6450
Wire Wire Line
	2800 6450 2800 6650
Wire Wire Line
	2550 6400 2550 6450
Connection ~ 2550 6450
Wire Wire Line
	2550 6450 2800 6450
Wire Wire Line
	2400 5750 2400 5800
Wire Wire Line
	2400 5800 2550 5800
Wire Wire Line
	2800 5800 2800 6450
Connection ~ 2800 6450
Wire Wire Line
	2550 5750 2550 5800
Connection ~ 2550 5800
Wire Wire Line
	2550 5800 2800 5800
Wire Wire Line
	2400 5450 2400 5500
Wire Wire Line
	2400 5500 2550 5500
Wire Wire Line
	2800 5500 2800 5800
Connection ~ 2800 5800
Wire Wire Line
	2550 5450 2550 5500
Connection ~ 2550 5500
Wire Wire Line
	2550 5500 2800 5500
Wire Wire Line
	2400 5150 2400 5200
Wire Wire Line
	2400 5200 2550 5200
Wire Wire Line
	2800 5200 2800 5500
Connection ~ 2800 5500
Wire Wire Line
	2550 5150 2550 5200
Connection ~ 2550 5200
Wire Wire Line
	2550 5200 2800 5200
Wire Wire Line
	2400 4850 2400 4900
Wire Wire Line
	2400 4900 2550 4900
Wire Wire Line
	2800 4900 2800 5200
Connection ~ 2800 5200
Wire Wire Line
	2550 4850 2550 4900
Connection ~ 2550 4900
Wire Wire Line
	2550 4900 2800 4900
Wire Wire Line
	2400 4550 2400 4600
Wire Wire Line
	2400 4600 2550 4600
Wire Wire Line
	2800 4600 2800 4900
Connection ~ 2800 4900
Wire Wire Line
	2550 4550 2550 4600
Connection ~ 2550 4600
Wire Wire Line
	2550 4600 2800 4600
Wire Wire Line
	2400 4250 2400 4300
Wire Wire Line
	2400 4300 2550 4300
Wire Wire Line
	2800 4300 2800 4600
Connection ~ 2800 4600
Wire Wire Line
	2550 4250 2550 4300
Connection ~ 2550 4300
Wire Wire Line
	2550 4300 2800 4300
$Comp
L Intel_MAX10_FPGA:10M02SCE144C8G U1
U 2 1 603F8041
P 6300 1600
F 0 "U1" H 6300 2265 50  0000 C CNN
F 1 "10M02SCE144C8G" H 6300 2174 50  0000 C CNN
F 2 "Intel_MAX10_FPGA:QFP50P2200X2200X165-144N" H 8100 3000 50  0001 C CNN
F 3 "" H 6250 1000 50  0001 C CNN
F 4 "Intel" H 7300 3200 50  0001 C CNN "Manfufactuer"
F 5 "10M02SCE144C8G" H 7550 3100 50  0001 C CNN "Part Number"
	2    6300 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 604011DC
P 5450 1150
F 0 "R5" H 5520 1196 50  0000 L CNN
F 1 "10k" H 5520 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5380 1150 50  0001 C CNN
F 3 "~" H 5450 1150 50  0001 C CNN
	1    5450 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1400 5450 1400
Wire Wire Line
	5450 1400 5450 1300
$Comp
L Device:R R6
U 1 1 604225CD
P 7000 900
F 0 "R6" H 7070 946 50  0000 L CNN
F 1 "10k" H 7070 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6930 900 50  0001 C CNN
F 3 "~" H 7000 900 50  0001 C CNN
	1    7000 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60422DC5
P 7300 900
F 0 "R7" H 7370 946 50  0000 L CNN
F 1 "10k" H 7370 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7230 900 50  0001 C CNN
F 3 "~" H 7300 900 50  0001 C CNN
	1    7300 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 604230D0
P 7600 900
F 0 "R8" H 7670 946 50  0000 L CNN
F 1 "10k" H 7670 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7530 900 50  0001 C CNN
F 3 "~" H 7600 900 50  0001 C CNN
	1    7600 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60433C47
P 7900 900
F 0 "R9" H 7970 946 50  0000 L CNN
F 1 "10k" H 7970 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7830 900 50  0001 C CNN
F 3 "~" H 7900 900 50  0001 C CNN
	1    7900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1200 7000 1200
Wire Wire Line
	7000 1200 7000 1050
Wire Wire Line
	6900 1300 7300 1300
Wire Wire Line
	7300 1300 7300 1050
Wire Wire Line
	6900 1600 7600 1600
Wire Wire Line
	7600 1600 7600 1050
Wire Wire Line
	6900 1800 7900 1800
Wire Wire Line
	7900 1800 7900 1050
$Comp
L Device:R R10
U 1 1 6046737E
P 8200 900
F 0 "R10" H 8270 946 50  0000 L CNN
F 1 "10k" H 8270 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8130 900 50  0001 C CNN
F 3 "~" H 8200 900 50  0001 C CNN
	1    8200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1900 8200 1900
Wire Wire Line
	8200 1900 8200 1050
$Comp
L Device:R R11
U 1 1 60471ECC
P 8500 900
F 0 "R11" H 8570 946 50  0000 L CNN
F 1 "10k" H 8570 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8430 900 50  0001 C CNN
F 3 "~" H 8500 900 50  0001 C CNN
	1    8500 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2000 8500 2000
Wire Wire Line
	8500 2000 8500 1050
$Comp
L Device:R R12
U 1 1 6047D28F
P 8850 900
F 0 "R12" H 8920 946 50  0000 L CNN
F 1 "10k" H 8920 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8780 900 50  0001 C CNN
F 3 "~" H 8850 900 50  0001 C CNN
	1    8850 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60489DCA
P 8850 1850
F 0 "R13" H 8920 1896 50  0000 L CNN
F 1 "10k" H 8920 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8780 1850 50  0001 C CNN
F 3 "~" H 8850 1850 50  0001 C CNN
	1    8850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1500 8850 1500
Wire Wire Line
	8850 1500 8850 1050
Wire Wire Line
	8850 1700 8850 1500
Connection ~ 8850 1500
Text Notes 7500 2250 0    50   ~ 0
*Connect only one resistor \n(R12 or R13) to set CONFIG_SEL
$Comp
L Device:D_Schottky D3
U 1 1 604A10B1
P 3800 1150
F 0 "D3" V 3800 1230 50  0000 L CNN
F 1 "D_Schottky" V 3845 1230 50  0001 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3800 1150 50  0001 C CNN
F 3 "~" H 3800 1150 50  0001 C CNN
	1    3800 1150
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 604A3128
P 4050 1150
F 0 "D4" V 4050 1230 50  0000 L CNN
F 1 "D_Schottky" V 4095 1230 50  0001 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4050 1150 50  0001 C CNN
F 3 "~" H 4050 1150 50  0001 C CNN
	1    4050 1150
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 604A350D
P 4300 1150
F 0 "D5" V 4300 1230 50  0000 L CNN
F 1 "D_Schottky" V 4345 1230 50  0001 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 1150 50  0001 C CNN
F 3 "~" H 4300 1150 50  0001 C CNN
	1    4300 1150
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D6
U 1 1 604A38E8
P 4550 1150
F 0 "D6" V 4550 1230 50  0000 L CNN
F 1 "D_Schottky" V 4595 1230 50  0001 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4550 1150 50  0001 C CNN
F 3 "~" H 4550 1150 50  0001 C CNN
	1    4550 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 604C287D
P 5150 1150
F 0 "R4" H 5220 1196 50  0000 L CNN
F 1 "10k" H 5220 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5080 1150 50  0001 C CNN
F 3 "~" H 5150 1150 50  0001 C CNN
	1    5150 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 604C2F12
P 4850 1150
F 0 "R3" H 4920 1196 50  0000 L CNN
F 1 "10k" H 4920 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4780 1150 50  0001 C CNN
F 3 "~" H 4850 1150 50  0001 C CNN
	1    4850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1500 5150 1500
Wire Wire Line
	5150 1500 5150 1300
Wire Wire Line
	5700 1700 4850 1700
Wire Wire Line
	4850 1700 4850 1300
$Comp
L Device:R R2
U 1 1 604D996B
P 5150 2150
F 0 "R2" H 5220 2196 50  0000 L CNN
F 1 "1k" H 5220 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5080 2150 50  0001 C CNN
F 3 "~" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1600 5150 1600
Wire Wire Line
	5150 1600 5150 2000
Wire Wire Line
	5150 1500 4550 1500
Wire Wire Line
	4550 1500 4550 1300
Connection ~ 5150 1500
Wire Wire Line
	5150 1600 4300 1600
Wire Wire Line
	4300 1600 4300 1300
Connection ~ 5150 1600
Wire Wire Line
	4850 1700 4050 1700
Wire Wire Line
	4050 1700 4050 1300
Connection ~ 4850 1700
Wire Wire Line
	5700 1800 3800 1800
Wire Wire Line
	3800 1800 3800 1300
$Comp
L Device:C_Small C30
U 1 1 60569044
P 4550 2150
F 0 "C30" H 4400 2070 50  0000 L CNN
F 1 "10pF" H 4570 2240 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4550 2150 50  0001 C CNN
F 3 "~" H 4550 2150 50  0001 C CNN
	1    4550 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C29
U 1 1 605777E2
P 4300 2150
F 0 "C29" H 4150 2070 50  0000 L CNN
F 1 "10pF" H 4320 2240 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4300 2150 50  0001 C CNN
F 3 "~" H 4300 2150 50  0001 C CNN
	1    4300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C28
U 1 1 60577FA2
P 4050 2150
F 0 "C28" H 3900 2070 50  0000 L CNN
F 1 "10pF" H 4070 2240 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4050 2150 50  0001 C CNN
F 3 "~" H 4050 2150 50  0001 C CNN
	1    4050 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C27
U 1 1 60578479
P 3800 2150
F 0 "C27" H 3650 2070 50  0000 L CNN
F 1 "10pF" H 3820 2240 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3800 2150 50  0001 C CNN
F 3 "~" H 3800 2150 50  0001 C CNN
	1    3800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2050 3800 1800
Connection ~ 3800 1800
Wire Wire Line
	4050 2050 4050 1700
Connection ~ 4050 1700
Wire Wire Line
	4300 2050 4300 1600
Connection ~ 4300 1600
Wire Wire Line
	4550 2050 4550 1500
Connection ~ 4550 1500
Wire Wire Line
	3800 2250 3800 2350
Wire Wire Line
	3800 2350 4050 2350
Wire Wire Line
	5150 2350 5150 2300
Wire Wire Line
	4050 2250 4050 2350
Connection ~ 4050 2350
Wire Wire Line
	4050 2350 4300 2350
Wire Wire Line
	4300 2250 4300 2350
Connection ~ 4300 2350
Wire Wire Line
	4300 2350 4550 2350
Wire Wire Line
	4550 2250 4550 2350
Connection ~ 4550 2350
Wire Wire Line
	4550 2350 5150 2350
Wire Wire Line
	3800 1000 3800 900 
Wire Wire Line
	3800 900  4050 900 
Wire Wire Line
	5450 900  5450 1000
Wire Wire Line
	4050 1000 4050 900 
Connection ~ 4050 900 
Wire Wire Line
	4050 900  4300 900 
Wire Wire Line
	4300 1000 4300 900 
Connection ~ 4300 900 
Wire Wire Line
	4300 900  4550 900 
Wire Wire Line
	4550 1000 4550 900 
Connection ~ 4550 900 
Wire Wire Line
	4550 900  4850 900 
Wire Wire Line
	4850 1000 4850 900 
Connection ~ 4850 900 
Wire Wire Line
	4850 900  5150 900 
Wire Wire Line
	5150 1000 5150 900 
Connection ~ 5150 900 
Wire Wire Line
	5150 900  5450 900 
$Comp
L power:GND #PWR0111
U 1 1 6068E69F
P 3800 2500
F 0 "#PWR0111" H 3800 2250 50  0001 C CNN
F 1 "GND" H 3805 2327 50  0000 C CNN
F 2 "" H 3800 2500 50  0001 C CNN
F 3 "" H 3800 2500 50  0001 C CNN
	1    3800 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 6068F113
P 8850 2150
F 0 "#PWR0112" H 8850 1900 50  0001 C CNN
F 1 "GND" H 8855 1977 50  0000 C CNN
F 2 "" H 8850 2150 50  0001 C CNN
F 3 "" H 8850 2150 50  0001 C CNN
	1    8850 2150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 6068F5AF
P 5450 750
F 0 "#PWR0113" H 5450 600 50  0001 C CNN
F 1 "VCC" H 5465 923 50  0000 C CNN
F 2 "" H 5450 750 50  0001 C CNN
F 3 "" H 5450 750 50  0001 C CNN
	1    5450 750 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 6068FC81
P 8850 700
F 0 "#PWR0114" H 8850 550 50  0001 C CNN
F 1 "VCC" H 8865 873 50  0000 C CNN
F 2 "" H 8850 700 50  0001 C CNN
F 3 "" H 8850 700 50  0001 C CNN
	1    8850 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2500 3800 2350
Connection ~ 3800 2350
Wire Wire Line
	8850 2000 8850 2150
Text GLabel 3650 1500 0    50   Input ~ 0
TMS
Text GLabel 3650 1600 0    50   Input ~ 0
TCK
Text GLabel 3650 1700 0    50   Input ~ 0
TDI
Text GLabel 3650 1800 0    50   Input ~ 0
TDO
Wire Wire Line
	3650 1500 4550 1500
Wire Wire Line
	3650 1600 4300 1600
Wire Wire Line
	3650 1700 4050 1700
Wire Wire Line
	3650 1800 3800 1800
$Comp
L Intel_MAX10_FPGA:10M02SCE144C8G U1
U 3 1 6079A2E8
P 3350 4650
F 0 "U1" H 3408 5565 50  0000 C CNN
F 1 "10M02SCE144C8G" H 3408 5474 50  0000 C CNN
F 2 "Intel_MAX10_FPGA:QFP50P2200X2200X165-144N" H 5150 6050 50  0001 C CNN
F 3 "" H 3300 4050 50  0001 C CNN
F 4 "Intel" H 4350 6250 50  0001 C CNN "Manfufactuer"
F 5 "10M02SCE144C8G" H 4600 6150 50  0001 C CNN "Part Number"
	3    3350 4650
	1    0    0    -1  
$EndComp
$Comp
L Intel_MAX10_FPGA:10M02SCE144C8G U1
U 4 1 6079E575
P 3500 6250
F 0 "U1" H 3512 6915 50  0000 C CNN
F 1 "10M02SCE144C8G" H 3512 6824 50  0000 C CNN
F 2 "Intel_MAX10_FPGA:QFP50P2200X2200X165-144N" H 5300 7650 50  0001 C CNN
F 3 "" H 3450 5650 50  0001 C CNN
F 4 "Intel" H 4500 7850 50  0001 C CNN "Manfufactuer"
F 5 "10M02SCE144C8G" H 4750 7750 50  0001 C CNN "Part Number"
	4    3500 6250
	1    0    0    -1  
$EndComp
$Comp
L Intel_MAX10_FPGA:10M02SCE144C8G U1
U 5 1 607A33CC
P 4800 4650
F 0 "U1" H 4837 6165 50  0000 C CNN
F 1 "10M02SCE144C8G" H 4837 6074 50  0000 C CNN
F 2 "Intel_MAX10_FPGA:QFP50P2200X2200X165-144N" H 6600 6050 50  0001 C CNN
F 3 "" H 4750 4050 50  0001 C CNN
F 4 "Intel" H 5800 6250 50  0001 C CNN "Manfufactuer"
F 5 "10M02SCE144C8G" H 6050 6150 50  0001 C CNN "Part Number"
	5    4800 4650
	1    0    0    -1  
$EndComp
$Comp
L Intel_MAX10_FPGA:10M02SCE144C8G U1
U 6 1 607A6CDC
P 4850 6950
F 0 "U1" H 4887 7815 50  0000 C CNN
F 1 "10M02SCE144C8G" H 4887 7724 50  0000 C CNN
F 2 "Intel_MAX10_FPGA:QFP50P2200X2200X165-144N" H 6650 8350 50  0001 C CNN
F 3 "" H 4800 6350 50  0001 C CNN
F 4 "Intel" H 5850 8550 50  0001 C CNN "Manfufactuer"
F 5 "10M02SCE144C8G" H 6100 8450 50  0001 C CNN "Part Number"
	6    4850 6950
	1    0    0    -1  
$EndComp
$Comp
L Intel_MAX10_FPGA:10M02SCE144C8G U1
U 7 1 607AA67D
P 6050 4150
F 0 "U1" H 6087 5165 50  0000 C CNN
F 1 "10M02SCE144C8G" H 6087 5074 50  0000 C CNN
F 2 "Intel_MAX10_FPGA:QFP50P2200X2200X165-144N" H 7850 5550 50  0001 C CNN
F 3 "" H 6000 3550 50  0001 C CNN
F 4 "Intel" H 7050 5750 50  0001 C CNN "Manfufactuer"
F 5 "10M02SCE144C8G" H 7300 5650 50  0001 C CNN "Part Number"
	7    6050 4150
	1    0    0    -1  
$EndComp
$Comp
L Intel_MAX10_FPGA:10M02SCE144C8G U1
U 8 1 607AEA8F
P 6050 6100
F 0 "U1" H 6087 7215 50  0000 C CNN
F 1 "10M02SCE144C8G" H 6087 7124 50  0000 C CNN
F 2 "Intel_MAX10_FPGA:QFP50P2200X2200X165-144N" H 7850 7500 50  0001 C CNN
F 3 "" H 6000 5500 50  0001 C CNN
F 4 "Intel" H 7050 7700 50  0001 C CNN "Manfufactuer"
F 5 "10M02SCE144C8G" H 7300 7600 50  0001 C CNN "Part Number"
	8    6050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 750  7000 700 
Wire Wire Line
	7000 700  7300 700 
Wire Wire Line
	8850 750  8850 700 
Connection ~ 8850 700 
Wire Wire Line
	8500 750  8500 700 
Connection ~ 8500 700 
Wire Wire Line
	8500 700  8850 700 
Wire Wire Line
	8200 750  8200 700 
Connection ~ 8200 700 
Wire Wire Line
	8200 700  8500 700 
Wire Wire Line
	7900 750  7900 700 
Connection ~ 7900 700 
Wire Wire Line
	7900 700  8200 700 
Wire Wire Line
	7600 750  7600 700 
Connection ~ 7600 700 
Wire Wire Line
	7600 700  7900 700 
Wire Wire Line
	7300 750  7300 700 
Connection ~ 7300 700 
Wire Wire Line
	7300 700  7600 700 
Wire Notes Line
	500  2300 3400 2300
Wire Notes Line
	500  3500 2950 3500
Wire Notes Line
	3400 500  3400 2750
Wire Notes Line
	2950 2750 2950 7750
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 60A11ABF
P 10150 1150
F 0 "J6" H 10200 1567 50  0000 C CNN
F 1 "JTAG" H 10200 1476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 10150 1150 50  0001 C CNN
F 3 "~" H 10150 1150 50  0001 C CNN
	1    10150 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 60A13035
P 10450 2650
F 0 "D2" H 10443 2487 50  0000 C CNN
F 1 "LED" H 10443 2486 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 10450 2650 50  0001 C CNN
F 3 "~" H 10450 2650 50  0001 C CNN
	1    10450 2650
	-1   0    0    1   
$EndComp
NoConn ~ 9950 1250
NoConn ~ 10450 1150
Text GLabel 9900 950  0    50   Input ~ 0
TCK
Text GLabel 9900 1050 0    50   Input ~ 0
TDO
Text GLabel 9900 1150 0    50   Input ~ 0
TMS
Text GLabel 9900 1350 0    50   Input ~ 0
TDI
Wire Wire Line
	9950 950  9900 950 
Wire Wire Line
	9950 1050 9900 1050
Wire Wire Line
	9950 1150 9900 1150
Wire Wire Line
	9950 1350 9900 1350
$Comp
L power:VCC #PWR0115
U 1 1 60A94958
P 10700 900
F 0 "#PWR0115" H 10700 750 50  0001 C CNN
F 1 "VCC" H 10715 1073 50  0000 C CNN
F 2 "" H 10700 900 50  0001 C CNN
F 3 "" H 10700 900 50  0001 C CNN
	1    10700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1050 10700 1050
Wire Wire Line
	10700 1050 10700 900 
$Comp
L power:GND #PWR0116
U 1 1 60AA7520
P 10700 1400
F 0 "#PWR0116" H 10700 1150 50  0001 C CNN
F 1 "GND" H 10705 1227 50  0000 C CNN
F 2 "" H 10700 1400 50  0001 C CNN
F 3 "" H 10700 1400 50  0001 C CNN
	1    10700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1350 10600 1350
Wire Wire Line
	10700 1350 10700 1400
Wire Wire Line
	10450 950  10600 950 
Wire Wire Line
	10600 950  10600 1350
Connection ~ 10600 1350
Wire Wire Line
	10600 1350 10700 1350
Text GLabel 5400 1400 0    50   Input ~ 0
JEN
Wire Wire Line
	5400 1400 5450 1400
Connection ~ 5450 1400
Text GLabel 10700 1250 2    50   Input ~ 0
JEN
Wire Wire Line
	10700 1250 10450 1250
Text Notes 3950 2650 0    50   ~ 0
*Diodes (D3-D6) and Capacitors (C27-C30) \non JTAG lines recommended in Configuration User Guide\n(May not be nessesary)
NoConn ~ 4050 5950
Text GLabel 4100 6050 2    50   Input ~ 0
50MHz_CLK
Wire Wire Line
	4100 6050 4050 6050
$Comp
L Custom_Parts:Tact_Switch S1
U 1 1 60B1D997
P 9900 2150
F 0 "S1" H 10300 2415 50  0000 C CNN
F 1 "RESET" H 10300 2324 50  0000 C CNN
F 2 "Custom_Parts:THT_Tact_Switch" H 10550 2250 50  0001 L CNN
F 3 "" H 10550 2150 50  0001 L CNN
F 4 "Generic Tact Switch" H 10550 2050 50  0001 L CNN "Description"
	1    9900 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 60B1F989
P 9800 1900
F 0 "R14" H 9870 1946 50  0000 L CNN
F 1 "10k" H 9870 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9730 1900 50  0001 C CNN
F 3 "~" H 9800 1900 50  0001 C CNN
	1    9800 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 60B32B4F
P 10800 2350
F 0 "#PWR0117" H 10800 2100 50  0001 C CNN
F 1 "GND" H 10805 2177 50  0000 C CNN
F 2 "" H 10800 2350 50  0001 C CNN
F 3 "" H 10800 2350 50  0001 C CNN
	1    10800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 2350 10800 2250
Wire Wire Line
	10800 2250 10700 2250
Wire Wire Line
	9900 2150 9800 2150
Wire Wire Line
	9800 2150 9800 2050
NoConn ~ 10700 2150
NoConn ~ 9900 2250
Text GLabel 9750 2150 0    50   Input ~ 0
~RESET
Wire Wire Line
	9750 2150 9800 2150
Connection ~ 9800 2150
$Comp
L power:VCC #PWR0118
U 1 1 60BC8785
P 9800 1700
F 0 "#PWR0118" H 9800 1550 50  0001 C CNN
F 1 "VCC" H 9815 1873 50  0000 C CNN
F 2 "" H 9800 1700 50  0001 C CNN
F 3 "" H 9800 1700 50  0001 C CNN
	1    9800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1750 9800 1700
$Comp
L power:GND #PWR0119
U 1 1 60C51D35
P 10950 2700
F 0 "#PWR0119" H 10950 2450 50  0001 C CNN
F 1 "GND" H 10955 2527 50  0000 C CNN
F 2 "" H 10950 2700 50  0001 C CNN
F 3 "" H 10950 2700 50  0001 C CNN
	1    10950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 2650 10950 2650
Wire Wire Line
	10950 2650 10950 2700
$Comp
L Device:R R15
U 1 1 60C78F6D
P 10050 2650
F 0 "R15" V 9843 2650 50  0000 C CNN
F 1 "220" V 9934 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9980 2650 50  0001 C CNN
F 3 "~" H 10050 2650 50  0001 C CNN
	1    10050 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 2650 10300 2650
Text GLabel 9850 2650 0    50   Input ~ 0
USER_LED
Wire Wire Line
	9850 2650 9900 2650
Text GLabel 3800 4650 2    35   Input ~ 0
~RESET
Text GLabel 3800 4750 2    50   Input ~ 0
USER_LED
NoConn ~ 3750 4850
NoConn ~ 3750 4950
NoConn ~ 3750 5050
NoConn ~ 3750 5150
NoConn ~ 3750 5250
Text Notes 3050 5500 0    50   ~ 0
*Some pins not connected \nto optimize routing
$Comp
L Device:LED D1
U 1 1 60DE4F7A
P 2750 1950
F 0 "D1" H 2743 1695 50  0000 C CNN
F 1 "POWER" H 2743 1786 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2750 1950 50  0001 C CNN
F 3 "~" H 2750 1950 50  0001 C CNN
	1    2750 1950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 60DE4F80
P 3250 2000
F 0 "#PWR0120" H 3250 1750 50  0001 C CNN
F 1 "GND" H 3255 1827 50  0000 C CNN
F 2 "" H 3250 2000 50  0001 C CNN
F 3 "" H 3250 2000 50  0001 C CNN
	1    3250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1950 3250 1950
Wire Wire Line
	3250 1950 3250 2000
$Comp
L Device:R R1
U 1 1 60DE4F88
P 2350 1950
F 0 "R1" V 2143 1950 50  0000 C CNN
F 1 "220" V 2234 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2280 1950 50  0001 C CNN
F 3 "~" H 2350 1950 50  0001 C CNN
	1    2350 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1950 2600 1950
$Comp
L power:VCC #PWR0121
U 1 1 60EAE601
P 1900 1850
F 0 "#PWR0121" H 1900 1700 50  0001 C CNN
F 1 "VCC" H 1915 2023 50  0000 C CNN
F 2 "" H 1900 1850 50  0001 C CNN
F 3 "" H 1900 1850 50  0001 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1950 1900 1950
Wire Wire Line
	1900 1950 1900 1850
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J4
U 1 1 60F71F30
P 9000 5650
F 0 "J4" H 9050 6375 50  0000 C CNN
F 1 "Conn_02x14_Odd_Even" H 9050 6376 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x14_P2.54mm_Vertical" H 9000 5650 50  0001 C CNN
F 3 "~" H 9000 5650 50  0001 C CNN
	1    9000 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 60FB7B87
P 7750 4300
F 0 "J3" H 7800 5325 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 7800 5326 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 7750 4300 50  0001 C CNN
F 3 "~" H 7750 4300 50  0001 C CNN
	1    7750 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J5
U 1 1 60FB9D6F
P 10250 4300
F 0 "J5" H 10300 5325 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 10300 5326 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 10250 4300 50  0001 C CNN
F 3 "~" H 10250 4300 50  0001 C CNN
	1    10250 4300
	1    0    0    -1  
$EndComp
Text GLabel 7500 3600 0    50   Input ~ 0
IO_27
Text GLabel 7500 3700 0    50   Input ~ 0
IO_31
Text GLabel 7500 3800 0    50   Input ~ 0
IO_33
Text GLabel 7500 3900 0    50   Input ~ 0
IO_40
Text GLabel 7500 4000 0    50   Input ~ 0
IO_42
Text GLabel 7500 4100 0    50   Input ~ 0
IO_46
Text GLabel 7500 4200 0    50   Input ~ 0
IO_48
Text GLabel 7500 4500 0    50   Input ~ 0
IO_50
Text GLabel 7500 4600 0    50   Input ~ 0
IO_52
Text GLabel 7500 4700 0    50   Input ~ 0
IO_54
Text GLabel 7500 4800 0    50   Input ~ 0
IO_59
Text GLabel 7500 4900 0    50   Input ~ 0
IO_61
Text GLabel 7500 5000 0    50   Input ~ 0
IO_63
Text GLabel 7500 5100 0    50   Input ~ 0
IO_67
Text GLabel 7500 5200 0    50   Input ~ 0
IO_69
Text GLabel 10000 3600 0    50   Input ~ 0
IO_7
Text GLabel 10000 3700 0    50   Input ~ 0
IO_5
Text GLabel 10000 3800 0    50   Input ~ 0
IO_3
Text GLabel 10000 3900 0    50   Input ~ 0
IO_141
Text GLabel 10000 4000 0    50   Input ~ 0
IO_139
Text GLabel 10000 4100 0    50   Input ~ 0
IO_137
Text GLabel 10000 4200 0    50   Input ~ 0
IO_129
Text GLabel 10000 4500 0    50   Input ~ 0
IO_127
Text GLabel 10000 4600 0    50   Input ~ 0
IO_125
Text GLabel 10000 4700 0    50   Input ~ 0
IO_123
Text GLabel 10000 4800 0    50   Input ~ 0
IO_116
Text GLabel 10000 4900 0    50   Input ~ 0
IO_112
Text GLabel 10000 5000 0    50   Input ~ 0
IO_105
Text GLabel 10000 5100 0    50   Input ~ 0
IO_101
Text GLabel 10000 5200 0    50   Input ~ 0
IO_99
Text GLabel 8750 5250 0    50   Input ~ 0
IO_74
Text GLabel 8750 5350 0    50   Input ~ 0
IO_76
Text GLabel 8750 5450 0    50   Input ~ 0
IO_78
Text GLabel 8750 5550 0    50   Input ~ 0
IO_80
Text GLabel 8750 5650 0    50   Input ~ 0
IO_84
Text GLabel 8750 5750 0    50   Input ~ 0
IO_86
Text GLabel 8750 5850 0    50   Input ~ 0
IO_88
Text GLabel 8750 5950 0    50   Input ~ 0
IO_90
Text GLabel 8750 6050 0    50   Input ~ 0
IO_92
Text GLabel 8750 6150 0    50   Input ~ 0
IO_95
Text GLabel 8100 3600 2    50   Input ~ 0
IO_28
Text GLabel 8100 3700 2    50   Input ~ 0
IO_32
Text GLabel 8100 3800 2    50   Input ~ 0
IO_39
Text GLabel 8100 3900 2    50   Input ~ 0
IO_41
Text GLabel 8100 4000 2    50   Input ~ 0
IO_44
Text GLabel 8100 4100 2    50   Input ~ 0
IO_47
Text GLabel 8100 4200 2    50   Input ~ 0
IO_49
Text GLabel 8100 4500 2    50   Input ~ 0
IO_51
Text GLabel 8100 4600 2    50   Input ~ 0
IO_53
Text GLabel 8100 4700 2    50   Input ~ 0
IO_55
Text GLabel 8100 4800 2    50   Input ~ 0
IO_60
Text GLabel 8100 4900 2    50   Input ~ 0
IO_62
Text GLabel 8100 5000 2    50   Input ~ 0
IO_65
Text GLabel 8100 5100 2    50   Input ~ 0
IO_68
Text GLabel 8100 5200 2    50   Input ~ 0
IO_70
Text GLabel 10600 3600 2    50   Input ~ 0
IO_8
Text GLabel 10600 3700 2    50   Input ~ 0
IO_6
Text GLabel 10600 3800 2    50   Input ~ 0
IO_4
Text GLabel 10600 3900 2    50   Input ~ 0
IO_140
Text GLabel 10600 4000 2    50   Input ~ 0
IO_138
Text GLabel 10600 4100 2    50   Input ~ 0
IO_134
Text GLabel 10600 4200 2    50   Input ~ 0
IO_128
Text GLabel 10600 4500 2    50   Input ~ 0
IO_126
Text GLabel 10600 4600 2    50   Input ~ 0
IO_124
Text GLabel 10600 4700 2    50   Input ~ 0
IO_117
Text GLabel 10600 4800 2    50   Input ~ 0
IO_114
Text GLabel 10600 4900 2    50   Input ~ 0
IO_106
Text GLabel 10600 5000 2    50   Input ~ 0
IO_103
Text GLabel 10600 5100 2    50   Input ~ 0
IO_100
Text GLabel 10600 5200 2    50   Input ~ 0
IO_98
Text GLabel 9350 5250 2    50   Input ~ 0
IO_75
Text GLabel 9350 5350 2    50   Input ~ 0
IO_77
Text GLabel 9350 5550 2    50   Input ~ 0
IO_81
Text GLabel 9350 5650 2    50   Input ~ 0
IO_85
Text GLabel 9350 5750 2    50   Input ~ 0
IO_87
Text GLabel 9350 5450 2    50   Input ~ 0
IO_79
Text GLabel 9350 5850 2    50   Input ~ 0
IO_89
Text GLabel 9350 5950 2    50   Input ~ 0
IO_91
Text GLabel 9350 6050 2    50   Input ~ 0
IO_94
Text GLabel 9350 6150 2    50   Input ~ 0
IO_97
Wire Wire Line
	7500 3600 7550 3600
Wire Wire Line
	7500 3700 7550 3700
Wire Wire Line
	7500 3800 7550 3800
Wire Wire Line
	7500 3900 7550 3900
Wire Wire Line
	7500 4000 7550 4000
Wire Wire Line
	7500 4100 7550 4100
Wire Wire Line
	7500 4200 7550 4200
Wire Wire Line
	7500 4500 7550 4500
Wire Wire Line
	7500 4600 7550 4600
Wire Wire Line
	7500 4700 7550 4700
Wire Wire Line
	7500 4800 7550 4800
Wire Wire Line
	7500 4900 7550 4900
Wire Wire Line
	7500 5000 7550 5000
Wire Wire Line
	7500 5100 7550 5100
Wire Wire Line
	7500 5200 7550 5200
Wire Wire Line
	8050 3600 8100 3600
Wire Wire Line
	8050 3700 8100 3700
Wire Wire Line
	8050 3800 8100 3800
Wire Wire Line
	8050 3900 8100 3900
Wire Wire Line
	8050 4000 8100 4000
Wire Wire Line
	8050 4100 8100 4100
Wire Wire Line
	8050 4200 8100 4200
Wire Wire Line
	8050 4500 8100 4500
Wire Wire Line
	8050 4600 8100 4600
Wire Wire Line
	8050 4700 8100 4700
Wire Wire Line
	8050 4800 8100 4800
Wire Wire Line
	8050 4900 8100 4900
Wire Wire Line
	8050 5000 8100 5000
Wire Wire Line
	8050 5100 8100 5100
Wire Wire Line
	8050 5200 8100 5200
Wire Wire Line
	8750 5250 8800 5250
Wire Wire Line
	8750 5350 8800 5350
Wire Wire Line
	8750 5450 8800 5450
Wire Wire Line
	8750 5550 8800 5550
Wire Wire Line
	8750 5650 8800 5650
Wire Wire Line
	8750 5750 8800 5750
Wire Wire Line
	8750 5850 8800 5850
Wire Wire Line
	8750 5950 8800 5950
Wire Wire Line
	8750 6050 8800 6050
Wire Wire Line
	8750 6150 8800 6150
Wire Wire Line
	9300 5250 9350 5250
Wire Wire Line
	9300 5350 9350 5350
Wire Wire Line
	9300 5450 9350 5450
Wire Wire Line
	9300 5550 9350 5550
Wire Wire Line
	9300 5650 9350 5650
Wire Wire Line
	9300 5750 9350 5750
Wire Wire Line
	9300 5850 9350 5850
Wire Wire Line
	9300 5950 9350 5950
Wire Wire Line
	9300 6050 9350 6050
Wire Wire Line
	9300 6150 9350 6150
Wire Wire Line
	10000 3600 10050 3600
Wire Wire Line
	10000 3700 10050 3700
Wire Wire Line
	10000 3800 10050 3800
Wire Wire Line
	10000 3900 10050 3900
Wire Wire Line
	10000 4000 10050 4000
Wire Wire Line
	10000 4100 10050 4100
Wire Wire Line
	10000 4200 10050 4200
Wire Wire Line
	10000 4500 10050 4500
Wire Wire Line
	10000 4600 10050 4600
Wire Wire Line
	10000 4700 10050 4700
Wire Wire Line
	10000 4800 10050 4800
Wire Wire Line
	10000 4900 10050 4900
Wire Wire Line
	10000 5000 10050 5000
Wire Wire Line
	10000 5100 10050 5100
Wire Wire Line
	10000 5200 10050 5200
Wire Wire Line
	10550 5200 10600 5200
Wire Wire Line
	10550 5100 10600 5100
Wire Wire Line
	10550 5000 10600 5000
Wire Wire Line
	10550 4900 10600 4900
Wire Wire Line
	10550 4800 10600 4800
Wire Wire Line
	10550 4700 10600 4700
Wire Wire Line
	10550 4600 10600 4600
Wire Wire Line
	10550 4500 10600 4500
Wire Wire Line
	10550 4200 10600 4200
Wire Wire Line
	10550 4100 10600 4100
Wire Wire Line
	10550 4000 10600 4000
Wire Wire Line
	10550 3900 10600 3900
Wire Wire Line
	10550 3800 10600 3800
Wire Wire Line
	10550 3700 10600 3700
Wire Wire Line
	10550 3600 10600 3600
Text GLabel 3800 4050 2    50   Input ~ 0
IO_3
Text GLabel 3800 4150 2    50   Input ~ 0
IO_4
Text GLabel 3800 4250 2    50   Input ~ 0
IO_5
Text GLabel 3800 4350 2    50   Input ~ 0
IO_6
Text GLabel 3800 4450 2    50   Input ~ 0
IO_7
Text GLabel 3800 4550 2    50   Input ~ 0
IO_8
Text GLabel 4100 6150 2    50   Input ~ 0
IO_27
Text GLabel 4100 6250 2    50   Input ~ 0
IO_28
Text GLabel 4100 6350 2    50   Input ~ 0
IO_31
Text GLabel 4100 6450 2    50   Input ~ 0
IO_32
Text GLabel 4100 6550 2    50   Input ~ 0
IO_33
Text GLabel 5250 3450 2    50   Input ~ 0
IO_39
Text GLabel 5250 3550 2    50   Input ~ 0
IO_40
Text GLabel 5250 3650 2    50   Input ~ 0
IO_41
Text GLabel 5250 3750 2    50   Input ~ 0
IO_42
Text GLabel 5250 3850 2    50   Input ~ 0
IO_44
Text GLabel 5250 3950 2    50   Input ~ 0
IO_46
Text GLabel 5250 4050 2    50   Input ~ 0
IO_47
Text GLabel 5250 4150 2    50   Input ~ 0
IO_48
Text GLabel 5250 4250 2    50   Input ~ 0
IO_49
Text GLabel 5250 4350 2    50   Input ~ 0
IO_50
Text GLabel 5250 4450 2    50   Input ~ 0
IO_51
Text GLabel 5250 4550 2    50   Input ~ 0
IO_52
Text GLabel 5250 4650 2    50   Input ~ 0
IO_53
Text GLabel 5250 4750 2    50   Input ~ 0
IO_54
Text GLabel 5250 4850 2    50   Input ~ 0
IO_55
Text GLabel 5250 4950 2    50   Input ~ 0
IO_59
Text GLabel 5250 5050 2    50   Input ~ 0
IO_60
Text GLabel 5250 5150 2    50   Input ~ 0
IO_61
Text GLabel 5250 5250 2    50   Input ~ 0
IO_62
Text GLabel 5250 5350 2    50   Input ~ 0
IO_63
Text GLabel 5250 5450 2    50   Input ~ 0
IO_65
Text GLabel 5250 5550 2    50   Input ~ 0
IO_67
Text GLabel 5250 5650 2    50   Input ~ 0
IO_68
Text GLabel 5250 5750 2    50   Input ~ 0
IO_69
Text GLabel 5250 5850 2    50   Input ~ 0
IO_70
Text GLabel 5350 6400 2    50   Input ~ 0
IO_74
Text GLabel 5350 6500 2    50   Input ~ 0
IO_75
Text GLabel 5350 6600 2    50   Input ~ 0
IO_76
Text GLabel 5350 6700 2    50   Input ~ 0
IO_77
Text GLabel 5350 6800 2    50   Input ~ 0
IO_78
Text GLabel 5350 6900 2    50   Input ~ 0
IO_79
Text GLabel 5350 7000 2    50   Input ~ 0
IO_80
Text GLabel 5350 7100 2    50   Input ~ 0
IO_81
Text GLabel 5350 7200 2    50   Input ~ 0
IO_84
Text GLabel 5350 7300 2    50   Input ~ 0
IO_85
Text GLabel 5350 7400 2    50   Input ~ 0
IO_86
Text GLabel 5350 7500 2    50   Input ~ 0
IO_87
Text GLabel 6500 3450 2    50   Input ~ 0
IO_88
Text GLabel 6500 3550 2    50   Input ~ 0
IO_89
Text GLabel 6500 3650 2    50   Input ~ 0
IO_90
Text GLabel 6500 3750 2    50   Input ~ 0
IO_91
Text GLabel 6500 3850 2    50   Input ~ 0
IO_92
Text GLabel 6500 3950 2    50   Input ~ 0
IO_94
Text GLabel 6500 4050 2    50   Input ~ 0
IO_95
Text GLabel 6500 4150 2    50   Input ~ 0
IO_97
Text GLabel 6500 4250 2    50   Input ~ 0
IO_98
Text GLabel 6500 4350 2    50   Input ~ 0
IO_99
Text GLabel 6500 4450 2    50   Input ~ 0
IO_100
Text GLabel 6500 4550 2    50   Input ~ 0
IO_101
Text GLabel 6500 4650 2    50   Input ~ 0
IO_103
Text GLabel 6500 4750 2    50   Input ~ 0
IO_105
Text GLabel 6500 4850 2    50   Input ~ 0
IO_106
Text GLabel 6500 5300 2    50   Input ~ 0
IO_112
Text GLabel 6500 5400 2    50   Input ~ 0
IO_114
Text GLabel 6500 5500 2    50   Input ~ 0
IO_116
Text GLabel 6500 5600 2    50   Input ~ 0
IO_117
Text GLabel 6500 5700 2    50   Input ~ 0
IO_123
Text GLabel 6500 5800 2    50   Input ~ 0
IO_124
Text GLabel 6500 5900 2    50   Input ~ 0
IO_125
Text GLabel 6500 6000 2    50   Input ~ 0
IO_126
Text GLabel 6500 6100 2    50   Input ~ 0
IO_127
Text GLabel 6500 6200 2    50   Input ~ 0
IO_128
Text GLabel 6500 6300 2    50   Input ~ 0
IO_129
Text GLabel 6500 6400 2    50   Input ~ 0
IO_134
Text GLabel 6500 6500 2    50   Input ~ 0
IO_137
Text GLabel 6500 6600 2    50   Input ~ 0
IO_138
Text GLabel 6500 6700 2    50   Input ~ 0
IO_139
Text GLabel 6500 6800 2    50   Input ~ 0
IO_140
Text GLabel 6500 6900 2    50   Input ~ 0
IO_141
Wire Wire Line
	3750 4050 3800 4050
Wire Wire Line
	3750 4150 3800 4150
Wire Wire Line
	3750 4250 3800 4250
Wire Wire Line
	3750 4350 3800 4350
Wire Wire Line
	3750 4450 3800 4450
Wire Wire Line
	3750 4550 3800 4550
Wire Wire Line
	4050 6150 4100 6150
Wire Wire Line
	4050 6250 4100 6250
Wire Wire Line
	4050 6350 4100 6350
Wire Wire Line
	4050 6450 4100 6450
Wire Wire Line
	4050 6550 4100 6550
Wire Wire Line
	5200 3450 5250 3450
Wire Wire Line
	5200 3550 5250 3550
Wire Wire Line
	5200 3650 5250 3650
Wire Wire Line
	5200 3750 5250 3750
Wire Wire Line
	5200 3850 5250 3850
Wire Wire Line
	5200 3950 5250 3950
Wire Wire Line
	5200 4050 5250 4050
Wire Wire Line
	5200 4150 5250 4150
Wire Wire Line
	5200 4250 5250 4250
Wire Wire Line
	5200 4350 5250 4350
Wire Wire Line
	5200 4450 5250 4450
Wire Wire Line
	5200 4550 5250 4550
Wire Wire Line
	5200 4650 5250 4650
Wire Wire Line
	5200 4750 5250 4750
Wire Wire Line
	5200 4850 5250 4850
Wire Wire Line
	5200 4950 5250 4950
Wire Wire Line
	5200 5050 5250 5050
Wire Wire Line
	5200 5150 5250 5150
Wire Wire Line
	5200 5250 5250 5250
Wire Wire Line
	5200 5350 5250 5350
Wire Wire Line
	5200 5450 5250 5450
Wire Wire Line
	5200 5550 5250 5550
Wire Wire Line
	5200 5650 5250 5650
Wire Wire Line
	5200 5750 5250 5750
Wire Wire Line
	5200 5850 5250 5850
Wire Wire Line
	5300 6400 5350 6400
Wire Wire Line
	5300 6500 5350 6500
Wire Wire Line
	5300 6600 5350 6600
Wire Wire Line
	5300 6700 5350 6700
Wire Wire Line
	5300 6800 5350 6800
Wire Wire Line
	5300 6900 5350 6900
Wire Wire Line
	5300 7000 5350 7000
Wire Wire Line
	5300 7100 5350 7100
Wire Wire Line
	5300 7200 5350 7200
Wire Wire Line
	5300 7300 5350 7300
Wire Wire Line
	5300 7400 5350 7400
Wire Wire Line
	5300 7500 5350 7500
Wire Wire Line
	6450 3450 6500 3450
Wire Wire Line
	6450 3550 6500 3550
Wire Wire Line
	6450 3650 6500 3650
Wire Wire Line
	6450 3750 6500 3750
Wire Wire Line
	6450 3850 6500 3850
Wire Wire Line
	6450 3950 6500 3950
Wire Wire Line
	6450 4050 6500 4050
Wire Wire Line
	6450 4150 6500 4150
Wire Wire Line
	6450 4250 6500 4250
Wire Wire Line
	6450 4350 6500 4350
Wire Wire Line
	6450 4450 6500 4450
Wire Wire Line
	6450 4550 6500 4550
Wire Wire Line
	6450 4650 6500 4650
Wire Wire Line
	6450 4750 6500 4750
Wire Wire Line
	6450 4850 6500 4850
Wire Wire Line
	6450 5300 6500 5300
Wire Wire Line
	6450 5400 6500 5400
Wire Wire Line
	6450 5500 6500 5500
Wire Wire Line
	6450 5600 6500 5600
Wire Wire Line
	6450 5700 6500 5700
Wire Wire Line
	6450 5800 6500 5800
Wire Wire Line
	6450 5900 6500 5900
Wire Wire Line
	6450 6000 6500 6000
Wire Wire Line
	6450 6100 6500 6100
Wire Wire Line
	6450 6200 6500 6200
Wire Wire Line
	6450 6300 6500 6300
Wire Wire Line
	6450 6400 6500 6400
Wire Wire Line
	6450 6500 6500 6500
Wire Wire Line
	6450 6600 6500 6600
Wire Wire Line
	6450 6700 6500 6700
Wire Wire Line
	6450 6800 6500 6800
Wire Wire Line
	6450 6900 6500 6900
Text GLabel 7500 3400 0    50   Input ~ 0
H_GND
Text GLabel 7500 4300 0    50   Input ~ 0
H_GND
Text GLabel 7500 5300 0    50   Input ~ 0
H_GND
Text GLabel 10000 3400 0    50   Input ~ 0
H_GND
Text GLabel 10000 4300 0    50   Input ~ 0
H_GND
Text GLabel 10000 5300 0    50   Input ~ 0
H_GND
Text GLabel 8100 3400 2    50   Input ~ 0
H_GND
Text GLabel 8100 4300 2    50   Input ~ 0
H_GND
Text GLabel 8100 5300 2    50   Input ~ 0
H_GND
Text GLabel 8750 5050 0    50   Input ~ 0
H_GND
Text GLabel 8750 6350 0    50   Input ~ 0
H_GND
Text GLabel 9350 5050 2    50   Input ~ 0
H_GND
Text GLabel 9350 6350 2    50   Input ~ 0
H_GND
Text GLabel 10600 3400 2    50   Input ~ 0
H_GND
Text GLabel 10600 4300 2    50   Input ~ 0
H_GND
Text GLabel 10600 5300 2    50   Input ~ 0
H_GND
Text GLabel 7500 3500 0    50   Input ~ 0
H_VCC
Text GLabel 7500 4400 0    50   Input ~ 0
H_VCC
Text GLabel 8750 5150 0    50   Input ~ 0
H_VCC
Text GLabel 8750 6250 0    50   Input ~ 0
H_VCC
Text GLabel 10000 3500 0    50   Input ~ 0
H_VCC
Text GLabel 10000 4400 0    50   Input ~ 0
H_VCC
Text GLabel 8100 3500 2    50   Input ~ 0
H_VCC
Text GLabel 8100 4400 2    50   Input ~ 0
H_VCC
Text GLabel 9350 5150 2    50   Input ~ 0
H_VCC
Text GLabel 9350 6250 2    50   Input ~ 0
H_VCC
Text GLabel 10600 3500 2    50   Input ~ 0
H_VCC
Text GLabel 10600 4400 2    50   Input ~ 0
H_VCC
Wire Wire Line
	7500 3400 7550 3400
Wire Wire Line
	7500 3500 7550 3500
Wire Wire Line
	7500 4300 7550 4300
Wire Wire Line
	7500 4400 7550 4400
Wire Wire Line
	7500 5300 7550 5300
Wire Wire Line
	8050 3400 8100 3400
Wire Wire Line
	8050 3500 8100 3500
Wire Wire Line
	8050 4300 8100 4300
Wire Wire Line
	8050 4400 8100 4400
Wire Wire Line
	8050 5300 8100 5300
Wire Wire Line
	8750 5050 8800 5050
Wire Wire Line
	8750 5150 8800 5150
Wire Wire Line
	8750 6250 8800 6250
Wire Wire Line
	8750 6350 8800 6350
Wire Wire Line
	9300 5050 9350 5050
Wire Wire Line
	9300 5150 9350 5150
Wire Wire Line
	9300 6250 9350 6250
Wire Wire Line
	9300 6350 9350 6350
Wire Wire Line
	10000 3400 10050 3400
Wire Wire Line
	10000 3500 10050 3500
Wire Wire Line
	10000 4300 10050 4300
Wire Wire Line
	10000 4400 10050 4400
Wire Wire Line
	10000 5300 10050 5300
Wire Wire Line
	10550 3400 10600 3400
Wire Wire Line
	10550 3500 10600 3500
Wire Wire Line
	10550 4300 10600 4300
Wire Wire Line
	10550 4400 10600 4400
Wire Wire Line
	10550 5300 10600 5300
Text GLabel 10400 5950 2    50   Input ~ 0
H_VCC
Text GLabel 10400 6050 2    50   Input ~ 0
H_GND
$Comp
L power:GND #PWR0122
U 1 1 633C3303
P 10250 6200
F 0 "#PWR0122" H 10250 5950 50  0001 C CNN
F 1 "GND" H 10255 6027 50  0000 C CNN
F 2 "" H 10250 6200 50  0001 C CNN
F 3 "" H 10250 6200 50  0001 C CNN
	1    10250 6200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0123
U 1 1 633C3B0A
P 10250 5800
F 0 "#PWR0123" H 10250 5650 50  0001 C CNN
F 1 "VCC" H 10265 5973 50  0000 C CNN
F 2 "" H 10250 5800 50  0001 C CNN
F 3 "" H 10250 5800 50  0001 C CNN
	1    10250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5950 10250 5950
Wire Wire Line
	10250 5950 10250 5800
Wire Wire Line
	10400 6050 10250 6050
Wire Wire Line
	10250 6050 10250 6200
Wire Notes Line
	7000 6500 7000 2750
Text Notes 500  600  0    50   ~ 10
Board Power
Text Notes 500  2400 0    50   ~ 10
Clock
Text Notes 500  3600 0    50   ~ 10
FPGA Power
Text Notes 3000 2850 0    50   ~ 10
FPGA GPIO
Text Notes 3450 600  0    50   ~ 10
FPGA Configuration
Text Notes 7050 2850 0    50   ~ 10
GPIO Headers
Wire Notes Line
	2950 2750 9150 2750
Wire Notes Line
	9150 2950 11200 2950
Wire Notes Line
	9150 500  9150 2950
Text Notes 9200 600  0    50   ~ 10
Misc.
Wire Wire Line
	5450 900  5450 750 
Connection ~ 5450 900 
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J2
U 1 1 601B49E3
P 1350 1900
F 0 "J2" H 1400 2117 50  0000 C CNN
F 1 "5V POWER" H 1400 2026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 1350 1900 50  0001 C CNN
F 3 "~" H 1350 1900 50  0001 C CNN
	1    1350 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 60237284
P 1250 800
F 0 "#PWR0124" H 1250 650 50  0001 C CNN
F 1 "+5V" H 1265 973 50  0000 C CNN
F 2 "" H 1250 800 50  0001 C CNN
F 3 "" H 1250 800 50  0001 C CNN
	1    1250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 900  1250 800 
Connection ~ 1250 900 
Wire Wire Line
	1250 900  1350 900 
$Comp
L power:+5V #PWR0125
U 1 1 60279272
P 1100 1850
F 0 "#PWR0125" H 1100 1700 50  0001 C CNN
F 1 "+5V" H 1115 2023 50  0000 C CNN
F 2 "" H 1100 1850 50  0001 C CNN
F 3 "" H 1100 1850 50  0001 C CNN
	1    1100 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0126
U 1 1 602797DA
P 1700 1850
F 0 "#PWR0126" H 1700 1700 50  0001 C CNN
F 1 "+5V" H 1715 2023 50  0000 C CNN
F 2 "" H 1700 1850 50  0001 C CNN
F 3 "" H 1700 1850 50  0001 C CNN
	1    1700 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 60279DA5
P 1700 2050
F 0 "#PWR0127" H 1700 1800 50  0001 C CNN
F 1 "GND" H 1705 1877 50  0000 C CNN
F 2 "" H 1700 2050 50  0001 C CNN
F 3 "" H 1700 2050 50  0001 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 6027A834
P 1100 2050
F 0 "#PWR0128" H 1100 1800 50  0001 C CNN
F 1 "GND" H 1105 1877 50  0000 C CNN
F 2 "" H 1100 2050 50  0001 C CNN
F 3 "" H 1100 2050 50  0001 C CNN
	1    1100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1900 1100 1900
Wire Wire Line
	1100 1900 1100 1850
Wire Wire Line
	1150 2000 1100 2000
Wire Wire Line
	1100 2000 1100 2050
Wire Wire Line
	1650 2000 1700 2000
Wire Wire Line
	1700 2000 1700 2050
Wire Wire Line
	1650 1900 1700 1900
Wire Wire Line
	1700 1900 1700 1850
Wire Wire Line
	1000 7300 1000 7350
Wire Wire Line
	1000 7350 1150 7350
Wire Wire Line
	2200 7350 2200 7450
Wire Wire Line
	2200 7350 2200 7300
Connection ~ 2200 7350
Wire Wire Line
	2050 7300 2050 7350
Connection ~ 2050 7350
Wire Wire Line
	2050 7350 2200 7350
Wire Wire Line
	1900 7300 1900 7350
Connection ~ 1900 7350
Wire Wire Line
	1900 7350 2050 7350
Wire Wire Line
	1750 7300 1750 7350
Connection ~ 1750 7350
Wire Wire Line
	1750 7350 1900 7350
Wire Wire Line
	1600 7300 1600 7350
Connection ~ 1600 7350
Wire Wire Line
	1600 7350 1750 7350
Wire Wire Line
	1450 7300 1450 7350
Connection ~ 1450 7350
Wire Wire Line
	1450 7350 1600 7350
Wire Wire Line
	1300 7300 1300 7350
Connection ~ 1300 7350
Wire Wire Line
	1300 7350 1450 7350
Wire Wire Line
	1150 7300 1150 7350
Connection ~ 1150 7350
Wire Wire Line
	1150 7350 1300 7350
Wire Wire Line
	2200 7100 2200 7050
Wire Wire Line
	2200 7050 2050 7050
Wire Wire Line
	1000 7050 1000 6950
Wire Wire Line
	1000 7100 1000 7050
Connection ~ 1000 7050
Wire Wire Line
	1150 7100 1150 7050
Connection ~ 1150 7050
Wire Wire Line
	1150 7050 1000 7050
Wire Wire Line
	1300 7100 1300 7050
Connection ~ 1300 7050
Wire Wire Line
	1300 7050 1150 7050
Wire Wire Line
	1450 7100 1450 7050
Connection ~ 1450 7050
Wire Wire Line
	1450 7050 1300 7050
Wire Wire Line
	1600 7100 1600 7050
Connection ~ 1600 7050
Wire Wire Line
	1600 7050 1450 7050
Wire Wire Line
	1750 7100 1750 7050
Connection ~ 1750 7050
Wire Wire Line
	1750 7050 1600 7050
Wire Wire Line
	1900 7100 1900 7050
Connection ~ 1900 7050
Wire Wire Line
	1900 7050 1750 7050
Wire Wire Line
	2050 7100 2050 7050
Connection ~ 2050 7050
Wire Wire Line
	2050 7050 1900 7050
NoConn ~ 1150 1100
NoConn ~ 1150 1200
NoConn ~ 1150 1300
NoConn ~ 750  1500
Wire Wire Line
	1350 1600 2100 1600
Wire Wire Line
	2100 1400 2100 1600
Connection ~ 2100 1600
Wire Wire Line
	2100 1600 2300 1600
Wire Wire Line
	2300 1400 2300 1600
Connection ~ 2300 1600
Wire Wire Line
	2300 1600 3050 1600
Wire Wire Line
	1350 900  1600 900 
Wire Wire Line
	2800 900  3050 900 
$Comp
L Custom_Parts:SOT-23_Regulator PS1
U 1 1 60D9F945
P 2200 1000
F 0 "PS1" H 2200 1365 50  0000 C CNN
F 1 "3.3V LDO Regulator" H 2200 1274 50  0000 C CNN
F 2 "Custom_Parts:SOT230P700X190-4N" H 1470 1390 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/PAM3110.pdf" H 2650 1100 50  0001 L CNN
F 4 "LDO Voltage Regulators LDO High Current" H 1470 1300 50  0001 L CNN "Description"
	1    2200 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 60640C0C
P 9350 1200
F 0 "H1" H 9450 1200 50  0000 L CNN
F 1 "MountingHole" H 9450 1155 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9350 1200 50  0001 C CNN
F 3 "~" H 9350 1200 50  0001 C CNN
	1    9350 1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 606423EF
P 9350 1400
F 0 "H2" H 9450 1400 50  0000 L CNN
F 1 "MountingHole" H 9450 1355 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9350 1400 50  0001 C CNN
F 3 "~" H 9350 1400 50  0001 C CNN
	1    9350 1400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6064271F
P 9350 1600
F 0 "H3" H 9450 1600 50  0000 L CNN
F 1 "MountingHole" H 9450 1555 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9350 1600 50  0001 C CNN
F 3 "~" H 9350 1600 50  0001 C CNN
	1    9350 1600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 606429B0
P 9350 1800
F 0 "H4" H 9450 1800 50  0000 L CNN
F 1 "MountingHole" H 9450 1755 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9350 1800 50  0001 C CNN
F 3 "~" H 9350 1800 50  0001 C CNN
	1    9350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4650 3800 4650
Wire Wire Line
	3750 4750 3800 4750
$EndSCHEMATC
