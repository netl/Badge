EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:netl
LIBS:badge-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L CONN_02X07 P1
U 1 1 55AE7941
P 7650 3850
F 0 "P1" H 7650 4250 50  0000 C CNN
F 1 "CONN_02X07" V 7650 3850 50  0000 C CNN
F 2 "netl:8x2_backlight" H 7650 2650 60  0001 C CNN
F 3 "" H 7650 2650 60  0000 C CNN
	1    7650 3850
	-1   0    0    1   
$EndComp
Text GLabel 8000 4150 2    60   Input ~ 0
VSS
Text GLabel 7300 4150 0    60   Input ~ 0
VDD
Text GLabel 8000 4050 2    60   Input ~ 0
V0
Text GLabel 7300 4050 0    60   Input ~ 0
RS
Text GLabel 8000 3950 2    60   Input ~ 0
R/W
Text GLabel 7300 3950 0    60   Input ~ 0
E
Text GLabel 8000 3650 2    60   Input ~ 0
DB4
Text GLabel 7300 3650 0    60   Input ~ 0
DB5
Text GLabel 8000 3550 2    60   Input ~ 0
DB6
Text GLabel 7300 3550 0    60   Input ~ 0
DB7
Wire Wire Line
	8000 4150 7900 4150
Wire Wire Line
	8000 4050 7900 4050
Wire Wire Line
	7900 3950 8000 3950
Wire Wire Line
	7400 3950 7300 3950
Wire Wire Line
	7300 4050 7400 4050
Wire Wire Line
	7400 4150 7300 4150
Wire Wire Line
	7400 3650 7300 3650
Wire Wire Line
	7300 3550 7400 3550
Wire Wire Line
	7900 3550 8000 3550
Wire Wire Line
	8000 3650 7900 3650
Text GLabel 4450 4550 2    60   Output ~ 0
DB7
Text GLabel 4450 4450 2    60   Output ~ 0
DB6
Text GLabel 4450 4350 2    60   Output ~ 0
DB5
Text GLabel 4450 4250 2    60   Output ~ 0
DB4
Text GLabel 4450 3700 2    60   Output ~ 0
E
Text GLabel 4450 3600 2    60   Output ~ 0
R/W
Text GLabel 4450 3500 2    60   Output ~ 0
RS
$Comp
L D D1
U 1 1 55AE7C80
P 5600 5750
F 0 "D1" H 5600 5850 50  0000 C CNN
F 1 "D" H 5600 5650 50  0000 C CNN
F 2 "netl:SMD_0603" H 5600 5750 60  0001 C CNN
F 3 "" H 5600 5750 60  0000 C CNN
	1    5600 5750
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 55AE7D58
P 5600 5350
F 0 "R1" V 5680 5350 50  0000 C CNN
F 1 "R" V 5600 5350 50  0000 C CNN
F 2 "netl:SMD_0603" V 5530 5350 30  0001 C CNN
F 3 "" H 5600 5350 30  0000 C CNN
	1    5600 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 55AE7E11
P 5600 5950
F 0 "#PWR01" H 5600 5700 50  0001 C CNN
F 1 "GND" H 5600 5800 50  0000 C CNN
F 2 "" H 5600 5950 60  0000 C CNN
F 3 "" H 5600 5950 60  0000 C CNN
	1    5600 5950
	1    0    0    -1  
$EndComp
Text GLabel 5600 5100 1    60   Input ~ 0
VDD
Wire Wire Line
	5600 5100 5600 5200
Wire Wire Line
	5600 5500 5600 5600
Wire Wire Line
	5600 5900 5600 5950
Text GLabel 5700 5550 2    60   Input ~ 0
V0
Wire Wire Line
	5700 5550 5600 5550
Connection ~ 5600 5550
Text GLabel 6100 5850 1    60   Input ~ 0
VSS
$Comp
L GND #PWR02
U 1 1 55AE7EE8
P 6100 5950
F 0 "#PWR02" H 6100 5700 50  0001 C CNN
F 1 "GND" H 6100 5800 50  0000 C CNN
F 2 "" H 6100 5950 60  0000 C CNN
F 3 "" H 6100 5950 60  0000 C CNN
	1    6100 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5850 6100 5950
$Comp
L GND #PWR03
U 1 1 55AE7F4C
P 2400 4950
F 0 "#PWR03" H 2400 4700 50  0001 C CNN
F 1 "GND" H 2400 4800 50  0000 C CNN
F 2 "" H 2400 4950 60  0000 C CNN
F 3 "" H 2400 4950 60  0000 C CNN
	1    2400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2100 2450 2100
Wire Wire Line
	2450 4950 2400 4950
Wire Wire Line
	2450 4850 2400 4850
Wire Wire Line
	2400 4850 2400 4950
$Comp
L C C1
U 1 1 55AE8005
P 2050 2250
F 0 "C1" H 2075 2350 50  0000 L CNN
F 1 "C" H 2075 2150 50  0000 L CNN
F 2 "netl:SMD_0603" H 2088 2100 30  0001 C CNN
F 3 "" H 2050 2250 60  0000 C CNN
	1    2050 2250
	1    0    0    -1  
$EndComp
Connection ~ 2050 2100
$Comp
L GND #PWR04
U 1 1 55AE8125
P 2050 2450
F 0 "#PWR04" H 2050 2200 50  0001 C CNN
F 1 "GND" H 2050 2300 50  0000 C CNN
F 2 "" H 2050 2450 60  0000 C CNN
F 3 "" H 2050 2450 60  0000 C CNN
	1    2050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2400 2050 2450
$Comp
L ATTINY48-A IC1
U 1 1 55AE8F66
P 3400 3500
F 0 "IC1" H 2650 5050 40  0000 C CNN
F 1 "ATTINY48-A" H 4000 1900 40  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 3400 3500 35  0000 C CIN
F 3 "" H 3400 3500 60  0000 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
Text GLabel 1750 2100 0    60   Input ~ 0
VDD
Text GLabel 4450 2850 2    60   Input ~ 0
MOSI
Text GLabel 4450 2950 2    60   Input ~ 0
MISO
Text GLabel 4450 3050 2    60   Input ~ 0
SCK
Text GLabel 4450 4000 2    60   Input ~ 0
~RESET
Wire Wire Line
	4450 4250 4350 4250
Wire Wire Line
	4350 4350 4450 4350
Wire Wire Line
	4450 4450 4350 4450
Wire Wire Line
	4450 4000 4350 4000
Wire Wire Line
	4350 3700 4450 3700
Wire Wire Line
	4450 3600 4350 3600
Wire Wire Line
	4450 2850 4350 2850
Wire Wire Line
	4350 2950 4450 2950
Wire Wire Line
	4450 3050 4350 3050
$Comp
L CONN_01X06 P2
U 1 1 55AEA1E8
P 6000 3100
F 0 "P2" H 6000 3450 50  0000 C CNN
F 1 "CONN_01X06" V 6100 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 6000 3100 60  0001 C CNN
F 3 "" H 6000 3100 60  0000 C CNN
	1    6000 3100
	1    0    0    -1  
$EndComp
Text GLabel 5700 3050 0    60   Input ~ 0
MOSI
Text GLabel 5700 3150 0    60   Input ~ 0
MISO
Text GLabel 5700 2950 0    60   Input ~ 0
~RESET
Text GLabel 5700 3250 0    60   Input ~ 0
SCK
Text GLabel 5700 2850 0    60   Input ~ 0
VDD
$Comp
L GND #PWR05
U 1 1 55AEA323
P 5700 3350
F 0 "#PWR05" H 5700 3100 50  0001 C CNN
F 1 "GND" H 5700 3200 50  0000 C CNN
F 2 "" H 5700 3350 60  0000 C CNN
F 3 "" H 5700 3350 60  0000 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3350 5700 3350
Wire Wire Line
	5700 3250 5800 3250
Wire Wire Line
	5800 3150 5700 3150
Wire Wire Line
	5700 3050 5800 3050
Wire Wire Line
	5800 2950 5700 2950
Wire Wire Line
	5700 2850 5800 2850
Wire Wire Line
	4450 3500 4350 3500
Wire Wire Line
	4450 4550 4350 4550
Text GLabel 4450 4950 2    60   Input ~ 0
~RESET
Wire Wire Line
	4450 4950 4350 4950
$Comp
L AAT3681A IC2
U 1 1 55AEB36A
P 7600 4900
F 0 "IC2" H 7600 5150 60  0000 C CNN
F 1 "AAT3681A" H 7600 4900 60  0000 C CNN
F 2 "netl:SC70JW-8" H 7600 4900 60  0001 C CNN
F 3 "" H 7600 4900 60  0000 C CNN
	1    7600 4900
	1    0    0    -1  
$EndComp
Text GLabel 8150 4800 2    60   Input ~ 0
VDD
$Comp
L GND #PWR06
U 1 1 55AEB6A5
P 8150 5200
F 0 "#PWR06" H 8150 4950 50  0001 C CNN
F 1 "GND" H 8150 5050 50  0000 C CNN
F 2 "" H 8150 5200 60  0000 C CNN
F 3 "" H 8150 5200 60  0000 C CNN
	1    8150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5200 8050 5200
Wire Wire Line
	8050 5000 8150 5000
Wire Wire Line
	8150 5000 8150 5200
Wire Wire Line
	8050 5100 8150 5100
Connection ~ 8150 5100
Wire Wire Line
	8050 4800 8150 4800
$Comp
L LED D2
U 1 1 55AEB80C
P 6850 5000
F 0 "D2" H 6850 5100 50  0000 C CNN
F 1 "LED" H 6850 4900 50  0000 C CNN
F 2 "netl:SMD_0603" H 6850 5000 60  0001 C CNN
F 3 "" H 6850 5000 60  0000 C CNN
	1    6850 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 5000 7050 5000
Wire Wire Line
	6650 4800 6650 5100
Text GLabel 6500 4800 0    60   Input ~ 0
V_USB
Connection ~ 6650 4800
$Comp
L R R2
U 1 1 55AEB9B3
P 7050 5350
F 0 "R2" V 7130 5350 50  0000 C CNN
F 1 "R" V 7050 5350 50  0000 C CNN
F 2 "netl:SMD_0603" V 6980 5350 30  0001 C CNN
F 3 "" H 7050 5350 30  0000 C CNN
	1    7050 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 55AEBA13
P 7050 5550
F 0 "#PWR07" H 7050 5300 50  0001 C CNN
F 1 "GND" H 7050 5400 50  0000 C CNN
F 2 "" H 7050 5550 60  0000 C CNN
F 3 "" H 7050 5550 60  0000 C CNN
	1    7050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5500 7050 5550
Wire Wire Line
	7150 5200 7050 5200
Connection ~ 6650 5000
$Comp
L CONN_01X02 P3
U 1 1 55AEBC12
P 9100 4900
F 0 "P3" H 9100 5050 50  0000 C CNN
F 1 "CONN_01X02" V 9200 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 9100 4900 60  0001 C CNN
F 3 "" H 9100 4900 60  0000 C CNN
	1    9100 4900
	1    0    0    -1  
$EndComp
Text GLabel 8850 4850 0    60   Input ~ 0
VDD
$Comp
L GND #PWR08
U 1 1 55AEBCB6
P 8850 4950
F 0 "#PWR08" H 8850 4700 50  0001 C CNN
F 1 "GND" H 8850 4800 50  0000 C CNN
F 2 "" H 8850 4950 60  0000 C CNN
F 3 "" H 8850 4950 60  0000 C CNN
	1    8850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4950 8850 4950
Wire Wire Line
	8850 4850 8900 4850
$Comp
L USB_OTG P4
U 1 1 55AEBD84
P 9100 5550
F 0 "P4" H 9425 5425 50  0000 C CNN
F 1 "USB_OTG" H 9100 5750 50  0000 C CNN
F 2 "Connect:USB_Micro-B" V 9050 5450 60  0001 C CNN
F 3 "" V 9050 5450 60  0000 C CNN
	1    9100 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5950 8800 5950
Wire Wire Line
	8800 5950 8800 5750
Text GLabel 8700 5350 0    60   Input ~ 0
V_USB
Wire Wire Line
	8800 5350 8700 5350
$Comp
L GND #PWR09
U 1 1 55AEBF75
P 8800 5950
F 0 "#PWR09" H 8800 5700 50  0001 C CNN
F 1 "GND" H 8800 5800 50  0000 C CNN
F 2 "" H 8800 5950 60  0000 C CNN
F 3 "" H 8800 5950 60  0000 C CNN
	1    8800 5950
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55AECAD7
P 6850 4800
F 0 "R3" V 6930 4800 50  0000 C CNN
F 1 "0R" V 6850 4800 50  0000 C CNN
F 2 "" V 6780 4800 30  0000 C CNN
F 3 "" H 6850 4800 30  0000 C CNN
	1    6850 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 5100 7150 5100
Wire Wire Line
	7150 4800 7000 4800
Wire Wire Line
	6500 4800 6700 4800
$EndSCHEMATC
