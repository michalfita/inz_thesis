EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,gal,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,microchip,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,.\Sterownik zasilania.cache
EELAYER 23  0
EELAYER END
$Descr A3 16535 11700
Sheet 2 2
Title "Peryferia"
Date "13 jul 2006"
Rev "2.0"
Comp "Wyzsza Szkola Zarzadzania i Bankowosci"
Comment1 "Autor: Michal Fita"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4150 9300
Wire Wire Line
	4150 7650 4150 9300
Connection ~ 3950 8800
Wire Wire Line
	3950 7650 3950 8800
Connection ~ 3950 7100
Wire Wire Line
	3950 7150 3950 7100
Connection ~ 3750 7100
Wire Wire Line
	4150 7150 4150 7100
Wire Wire Line
	4150 7100 3550 7100
$Comp
L R R28
U 1 1 44B5D780
P 4150 7400
F 0 "R28" V 4230 7400 50  0000 C C
F 1 "4,7" V 4150 7400 50  0000 C C
	1    4150 7400
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 44B5D778
P 3950 7400
F 0 "R27" V 4030 7400 50  0000 C C
F 1 "4,7" V 3950 7400 50  0000 C C
	1    3950 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 8800 1300 8800
Wire Wire Line
	2550 9300 1300 9300
Wire Wire Line
	3450 9300 5200 9300
Wire Wire Line
	3450 8800 5150 8800
Wire Wire Line
	5150 8250 3450 8250
Wire Wire Line
	5150 7700 3450 7700
$Comp
L 74HC14 U18
U 4 1 44B5D73A
P 3000 9300
F 0 "U18" H 3150 9400 40  0000 C C
F 1 "74HC14" H 3200 9200 40  0000 C C
	4    3000 9300
	-1   0    0    -1  
$EndComp
$Comp
L 74HC14 U18
U 3 1 44B5D730
P 3000 8800
F 0 "U18" H 3150 8900 40  0000 C C
F 1 "74HC14" H 3200 8700 40  0000 C C
	3    3000 8800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 3500 9750 5550
Connection ~ 9750 5450
Connection ~ 9350 6000
Wire Wire Line
	9750 5950 9750 6000
Wire Wire Line
	9750 6000 8150 6000
$Comp
L CAPAPOL C35
U 1 1 44B5D6BB
P 9750 5750
F 0 "C35" H 9500 5850 50  0000 L C
F 1 "100uF/25V" H 9250 5650 50  0000 L C
	1    9750 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 1600 1050 2100
Wire Wire Line
	1050 2100 1300 2100
Wire Wire Line
	1300 2100 1300 1950
$Comp
L +5V #PWR6
U 1 1 44B4AFA7
P 1050 1600
F 0 "#PWR6" H 1050 1690 20  0001 C C
F 1 "+5V" H 1050 1690 30  0000 C C
	1    1050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1950 1500 2900
Wire Wire Line
	1500 2900 1300 2900
$Comp
L CONN_2 B1
U 1 1 44B4AF6F
P 1400 1600
F 0 "B1" V 1350 1600 40  0000 C C
F 1 "BUZZ" V 1450 1600 40  0000 C C
	1    1400 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 2450 2400 3000
Wire Wire Line
	2400 3000 1300 3000
$Comp
L R R26
U 1 1 44B40D33
P 2650 2450
F 0 "R26" V 2730 2450 50  0000 C C
F 1 "R" V 2650 2450 50  0000 C C
	1    2650 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 2450 3600 2450
$Comp
L +5V #PWR5
U 1 1 44B40D26
P 3700 2450
F 0 "#PWR5" H 3700 2540 20  0001 C C
F 1 "+5V" H 3700 2540 30  0000 C C
	1    3700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2650 3200 2750
Wire Wire Line
	3200 2250 3200 2150
$Comp
L NPN Q1
U 1 1 44B40CEF
P 3100 2450
F 0 "Q1" H 3250 2450 50  0000 C C
F 1 "NPN" H 3002 2600 50  0000 C C
	1    3100 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR32
U 1 1 44B40CDC
P 3200 2750
F 0 "#PWR32" H 3200 2750 30  0001 C C
F 1 "GND" H 3200 2680 30  0001 C C
	1    3200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2450 3600 2150
$Comp
L LED D15
U 1 1 44B40C9F
P 3400 2150
F 0 "D15" H 3400 2250 50  0000 C C
F 1 "LED" H 3400 2050 50  0000 C C
	1    3400 2150
	1    0    0    1   
$EndComp
Connection ~ 3650 7100
Wire Wire Line
	3650 7050 3650 7100
$Comp
L +5V #PWR4
U 1 1 44AC208C
P 3650 7050
F 0 "#PWR4" H 3650 7140 20  0001 C C
F 1 "+5V" H 3650 7140 30  0000 C C
	1    3650 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 7100 3750 7150
Wire Wire Line
	3550 7100 3550 7150
Connection ~ 3750 8250
Wire Wire Line
	3750 7650 3750 8250
Connection ~ 3550 7700
Wire Wire Line
	3550 7650 3550 7700
$Comp
L R R25
U 1 1 44AC2027
P 3750 7400
F 0 "R25" V 3830 7400 50  0000 C C
F 1 "3k3" V 3750 7400 50  0000 C C
	1    3750 7400
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 44AC2021
P 3550 7400
F 0 "R24" V 3630 7400 50  0000 C C
F 1 "3k3" V 3550 7400 50  0000 C C
	1    3550 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7700 1300 7700
Wire Wire Line
	2550 8250 1300 8250
$Comp
L 74HC14 U18
U 2 1 44AC1F9E
P 3000 8250
F 0 "U18" H 3150 8350 40  0000 C C
F 1 "74HC14" H 3200 8150 40  0000 C C
	2    3000 8250
	-1   0    0    -1  
$EndComp
$Comp
L 74HC14 U18
U 1 1 44AC1F83
P 3000 7700
F 0 "U18" H 3150 7800 40  0000 C C
F 1 "74HC14" H 3200 7600 40  0000 C C
	1    3000 7700
	-1   0    0    -1  
$EndComp
Text Label 4500 8250 0    60   ~
PWR_FAIL_2
Text Label 4500 7700 0    60   ~
PWR_FAIL_1
Text Notes 9550 10200 0    60   ~
220V~
Text Notes 10800 10200 0    60   ~
220V~
Text Notes 10450 10500 0    60   ~
AC PWR Detector
Text Notes 9200 10500 0    60   ~
AC PWR Detector
Wire Notes Line
	11400 8300 10500 8300
Wire Notes Line
	11400 8300 11400 10400
Wire Notes Line
	11400 10400 10500 10400
Wire Notes Line
	10500 10400 10500 8300
Wire Notes Line
	9250 10400 10150 10400
Wire Notes Line
	9250 10400 9250 8300
Wire Notes Line
	9250 8300 10150 8300
Wire Notes Line
	10150 8300 10150 10400
Text Label 10750 8200 1    60   ~
PWR_FAIL_2
Text Label 9500 8200 1    60   ~
PWR_FAIL_1
Wire Wire Line
	10750 8550 10750 7500
Wire Wire Line
	9500 8550 9500 7500
Connection ~ 11150 8400
Wire Wire Line
	9900 8550 9900 8400
Wire Wire Line
	9900 8400 11750 8400
Wire Wire Line
	11150 8400 11150 8550
Wire Wire Line
	11750 8400 11750 8550
$Comp
L GND #PWR31
U 1 1 44AAAC97
P 11750 8550
F 0 "#PWR31" H 11750 8550 30  0001 C C
F 1 "GND" H 11750 8480 30  0001 C C
	1    11750 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 9700 9500 9650
Wire Wire Line
	9900 9700 9900 9650
Wire Wire Line
	11150 9700 11150 9650
Wire Wire Line
	10750 9700 10750 9650
$Comp
L R R23
U 1 1 44AAAC17
P 11150 9950
F 0 "R23" V 11230 9950 50  0000 C C
F 1 "1k8" V 11150 9950 50  0000 C C
	1    11150 9950
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 44AAAC13
P 9900 9950
F 0 "R22" V 9980 9950 50  0000 C C
F 1 "1k8" V 9900 9950 50  0000 C C
	1    9900 9950
	1    0    0    -1  
$EndComp
$Comp
L C C33
U 1 1 44AAAC0E
P 10750 9900
F 0 "C33" H 10800 10000 50  0000 L C
F 1 "220nF/400V" V 10550 9900 50  0000 L C
	1    10750 9900
	1    0    0    -1  
$EndComp
$Comp
L C C32
U 1 1 44AAAC0A
P 9500 9900
F 0 "C32" H 9550 10000 50  0000 L C
F 1 "220nF/400V" V 9300 9900 50  0000 L C
	1    9500 9900
	1    0    0    -1  
$EndComp
$Comp
L PHTRANS-AC U17
U 1 1 44AAABF1
P 10950 9100
F 0 "U17" H 10900 9450 70  0000 C C
F 1 "LTV814" H 10900 8750 70  0000 C C
	1    10950 9100
	0    -1   -1   0   
$EndComp
$Comp
L PHTRANS-AC U16
U 1 1 44AAABDC
P 9700 9100
F 0 "U16" H 9650 9450 70  0000 C C
F 1 "LTV814" H 9650 8750 70  0000 C C
	1    9700 9100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 9950 7950 8900
Wire Wire Line
	7950 8900 7500 8900
Wire Wire Line
	7500 8900 7500 9000
Wire Wire Line
	7500 9500 7500 9800
$Comp
L R R21
U 1 1 44A8EF7A
P 7500 9250
F 0 "R21" V 7580 9250 50  0000 C C
F 1 "470" V 7500 9250 50  0000 C C
	1    7500 9250
	1    0    0    -1  
$EndComp
Text Notes 9850 5500 1    60   ~
Additional powering for relays
Connection ~ 9750 3500
Connection ~ 10850 3500
Wire Wire Line
	10850 3500 9550 3500
Wire Wire Line
	8900 5750 8900 6100
Wire Wire Line
	7650 5350 7650 5450
Wire Wire Line
	7650 5450 7700 5450
Connection ~ 9350 5450
Wire Wire Line
	9350 5550 9350 5450
Wire Wire Line
	9750 5450 9300 5450
Connection ~ 8400 5450
Wire Wire Line
	8400 5550 8400 5450
Wire Wire Line
	8500 5450 8100 5450
Connection ~ 8150 5450
$Comp
L DIODE 1N4002
U 1 1 44A8EEA4
P 7900 5450
F 0 "1N4002" H 7900 5550 40  0000 C C
F 1 "DIODE" H 7900 5350 40  0000 C C
	1    7900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 6000 9350 5950
$Comp
L C C34
U 1 1 44A8EE64
P 9350 5750
F 0 "C34" H 9400 5850 50  0000 L C
F 1 "10nF" H 9400 5650 50  0000 L C
	1    9350 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 6000 8150 5950
Wire Wire Line
	8150 5550 8150 5450
$Comp
L C 10nF1
U 1 1 44A8EE2B
P 8400 5750
F 0 "10nF1" H 8450 5850 50  0000 L C
F 1 "C" H 8450 5650 50  0000 L C
	1    8400 5750
	1    0    0    -1  
$EndComp
Connection ~ 8400 6000
$Comp
L +12V #PWR3
U 1 1 44A8EE05
P 7650 5350
F 0 "#PWR3" H 7650 5300 20  0001 C C
F 1 "+12V" H 7650 5450 30  0000 C C
	1    7650 5350
	1    0    0    -1  
$EndComp
Connection ~ 8900 6000
Wire Wire Line
	8400 6000 8400 5950
$Comp
L CAPAPOL C31
U 1 1 44A8EDB4
P 8150 5750
F 0 "C31" H 8200 5850 50  0000 L C
F 1 "2.2uF/16V" H 8200 5650 50  0000 L C
	1    8150 5750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR30
U 1 1 44A8ED9D
P 8900 6100
F 0 "#PWR30" H 8900 6100 30  0001 C C
F 1 "GND" H 8900 6030 30  0001 C C
	1    8900 6100
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U15
U 1 1 44A8ED84
P 8900 5500
F 0 "U15" H 9050 5304 60  0000 C C
F 1 "LM7805" H 8900 5700 60  0000 C C
	1    8900 5500
	1    0    0    -1  
$EndComp
Connection ~ 6100 8850
Wire Wire Line
	6100 9000 6100 8450
$Comp
L GND #PWR29
U 1 1 447D9E97
P 6100 9000
F 0 "#PWR29" H 6100 9000 30  0001 C C
F 1 "GND" H 6100 8930 30  0001 C C
	1    6100 9000
	1    0    0    -1  
$EndComp
Connection ~ 6700 8850
Wire Wire Line
	6700 7500 6700 9000
Connection ~ 7200 8450
Wire Wire Line
	7200 7500 7200 9000
Wire Wire Line
	6100 8450 6200 8450
Wire Wire Line
	7200 8450 6600 8450
Wire Wire Line
	6100 8850 6200 8850
Wire Wire Line
	6700 8850 6600 8850
$Comp
L R R20
U 1 1 447D9DD1
P 7200 9250
F 0 "R20" V 7280 9250 50  0000 C C
F 1 "470" V 7200 9250 50  0000 C C
	1    7200 9250
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 447D9DCC
P 6700 9250
F 0 "R19" V 6780 9250 50  0000 C C
F 1 "470" V 6700 9250 50  0000 C C
	1    6700 9250
	1    0    0    -1  
$EndComp
$Comp
L C C30
U 1 1 447D9DAD
P 6400 8450
F 0 "C30" H 6450 8550 50  0000 L C
F 1 "100nF" H 6450 8350 50  0000 L C
	1    6400 8450
	0    -1   -1   0   
$EndComp
$Comp
L C C29
U 1 1 447D9D9C
P 6400 8850
F 0 "C29" H 6450 8950 50  0000 L C
F 1 "100nF" H 6450 8750 50  0000 L C
	1    6400 8850
	0    -1   -1   0   
$EndComp
Text Label 4300 3950 0    60   ~
/WR
Wire Wire Line
	4800 3950 4200 3950
Wire Wire Line
	6000 4750 6000 3950
Wire Wire Line
	6000 4750 6600 4750
Wire Wire Line
	6000 3950 5700 3950
$Comp
L 74HCT04 U13
U 2 1 447D9C92
P 5250 3950
F 0 "U13" H 5400 4050 40  0000 C C
F 1 "74HCT04" H 5450 3850 40  0000 C C
	2    5250 3950
	1    0    0    -1  
$EndComp
Text Label 1800 5800 0    60   ~
/WR
Wire Wire Line
	1300 5800 2100 5800
Text GLabel 1300 5800 0    60   Input
/WR
Wire Wire Line
	6600 4550 6100 4550
Wire Wire Line
	6100 4550 6100 3600
Wire Wire Line
	6100 3600 5700 3600
Wire Wire Line
	6200 4150 6200 3600
Wire Wire Line
	6200 4150 7950 4150
Wire Wire Line
	7950 4150 7950 4650
Wire Wire Line
	7950 4650 7800 4650
Wire Wire Line
	4250 3400 6550 3400
Wire Wire Line
	4250 3300 6550 3300
Wire Wire Line
	4250 3200 6550 3200
Wire Wire Line
	4250 3100 6550 3100
Wire Wire Line
	4250 3000 6550 3000
Wire Wire Line
	4250 2900 6550 2900
Wire Wire Line
	4250 2800 6550 2800
Wire Wire Line
	4250 2700 6550 2700
Wire Wire Line
	6200 3600 6550 3600
Wire Wire Line
	7950 3400 8100 3400
NoConn ~ 8100 3400
$Comp
L 74LS08 U14
U 1 1 447D9B4A
P 7200 4650
F 0 "U14" H 7200 4700 60  0000 C C
F 1 "74HCT08" H 7200 4600 60  0000 C C
	1    7200 4650
	1    0    0    -1  
$EndComp
NoConn ~ 2250 1050
Wire Wire Line
	2650 1050 2250 1050
Text GLabel 4250 3400 0    60   Input
D7
Text GLabel 4250 3300 0    60   Input
D6
Text GLabel 4250 3200 0    60   Input
D5
Text GLabel 4250 3100 0    60   Input
D4
Text GLabel 4250 3000 0    60   Input
D3
Text GLabel 4250 2900 0    60   Input
D2
Text GLabel 4250 2800 0    60   Input
D1
Text GLabel 4250 2700 0    60   Input
D0
Text Label 4300 3600 0    60   ~
/CS4
Wire Wire Line
	4800 3600 4200 3600
Text Label 1750 5550 0    60   ~
/CS3
Text Label 1750 5450 0    60   ~
/CS2
Text Label 1750 5350 0    60   ~
/CS3
Text Label 1750 5250 0    60   ~
/CS4
Wire Wire Line
	1300 5550 2100 5550
Wire Wire Line
	1300 5450 2100 5450
Wire Wire Line
	1300 5350 2100 5350
Wire Wire Line
	1300 5250 2100 5250
Text GLabel 1300 5550 0    60   Input
/Cs1
Text GLabel 1300 5450 0    60   Input
/CS2
Text GLabel 1300 5350 0    60   Input
/Cs3
Text GLabel 1300 5250 0    60   Input
/CS4
$Comp
L 74HCT04 U13
U 1 1 443231BE
P 5250 3600
F 0 "U13" H 5400 3700 40  0000 C C
F 1 "74HCT04" H 5450 3500 40  0000 C C
	1    5250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 6900 10950 6900
Wire Wire Line
	10950 6900 10950 6250
Wire Wire Line
	10950 6250 12250 6250
Wire Wire Line
	12250 6250 12250 6600
Wire Wire Line
	11100 6600 11100 6350
Wire Wire Line
	11100 6350 12350 6350
Wire Wire Line
	12350 6350 12350 6500
Wire Wire Line
	12350 6500 12450 6500
Wire Wire Line
	12250 6600 12450 6600
Wire Wire Line
	11900 6500 12150 6500
Wire Wire Line
	12150 6500 12150 6700
Wire Wire Line
	12150 6700 12450 6700
Wire Wire Line
	12450 6800 11900 6800
Wire Wire Line
	12000 6900 12000 6700
Wire Wire Line
	12000 6900 12450 6900
Wire Wire Line
	12000 6700 11900 6700
Wire Wire Line
	11900 7000 12450 7000
$Comp
L CONN_6 P21
U 1 1 44323076
P 12800 6750
F 0 "P21" V 12750 6750 60  0000 C C
F 1 "CONN_6" V 12850 6750 60  0000 C C
	1    12800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 7100 10450 7100
Wire Wire Line
	10450 7100 10450 3100
Wire Wire Line
	10450 3100 9550 3100
Wire Wire Line
	11100 7200 10850 7200
Connection ~ 10850 5950
Wire Wire Line
	10850 7200 10850 2100
$Comp
L RELAY_2RT K5
U 1 1 44323017
P 11500 6850
F 0 "K5" H 11450 7250 70  0000 C C
F 1 "RELAY_2RT" H 11650 6350 70  0000 C C
	1    11500 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3850 6450 3700
Wire Wire Line
	6450 3700 6550 3700
$Comp
L GND #PWR28
U 1 1 44322FD7
P 6450 3850
F 0 "#PWR28" H 6450 3850 30  0001 C C
F 1 "GND" H 6450 3780 30  0001 C C
	1    6450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3300 8250 3300
Wire Wire Line
	7950 3200 8250 3200
Wire Wire Line
	7950 3100 8250 3100
Wire Wire Line
	7950 3000 8250 3000
Wire Wire Line
	8250 2900 7950 2900
$Comp
L 74LS573 U12
U 1 1 44322E1F
P 7250 3200
F 0 "U12" H 7400 3800 60  0000 C C
F 1 "74HCT573" H 7100 2600 60  0000 C C
	1    7250 3200
	1    0    0    -1  
$EndComp
Text Label 7000 9550 1    60   ~
UPS_OFF
NoConn ~ 7000 9000
Wire Wire Line
	7000 9800 7000 9000
Text Label 4650 9300 0    60   ~
UPS_FAIL
Text Label 4650 8800 0    60   ~
UPS_BATT
Wire Wire Line
	6700 9800 6700 9500
Wire Wire Line
	7200 9800 7200 9500
Text Label 7200 8050 1    60   ~
UPS_FAIL
Text Label 6700 8050 1    60   ~
UPS_BATT
Wire Notes Line
	5900 550  5900 11100
Text Notes 6400 10550 0    60   ~
Podlacznie UPS (ARES)
Wire Wire Line
	10950 1050 10950 1800
Connection ~ 10850 4650
Text Notes 1300 1400 0    50   ~
Yellow
Text Notes 1350 1300 0    50   ~
Black
Text Notes 1350 1200 0    50   ~
Green
Wire Wire Line
	2650 1150 1700 1150
Wire Wire Line
	1700 1150 1700 2700
Wire Wire Line
	1700 2700 1300 2700
Wire Wire Line
	2650 1250 1750 1250
Wire Wire Line
	1750 1250 1750 2600
Wire Wire Line
	1750 2600 1300 2600
Wire Wire Line
	2650 1350 1800 1350
Wire Wire Line
	1800 1350 1800 2500
Wire Wire Line
	1800 2500 1300 2500
Wire Wire Line
	7400 9800 7400 9600
Wire Wire Line
	7100 9800 7100 9600
Wire Wire Line
	6900 9800 6900 9600
Wire Wire Line
	6800 9800 6800 9600
NoConn ~ 7400 9600
NoConn ~ 7100 9600
NoConn ~ 6900 9600
NoConn ~ 6800 9600
Text GLabel 1300 9300 0    60   BiDi
P1.3
Text GLabel 1300 8800 0    60   BiDi
P1.2
Text GLabel 1300 8250 0    60   BiDi
P1.1
Text GLabel 1300 7700 0    60   BiDi
P1.0
Wire Wire Line
	7300 9000 7300 9800
$Comp
L VCC #PWR51
U 1 1 442A895E
P 7300 9000
F 0 "#PWR51" H 7300 9100 30  0001 C C
F 1 "VCC" H 7300 9100 30  0000 C C
	1    7300 9000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR27
U 1 1 442A8947
P 7950 9950
F 0 "#PWR27" H 7950 9950 30  0001 C C
F 1 "GND" H 7950 9880 30  0001 C C
	1    7950 9950
	1    0    0    -1  
$EndComp
$Comp
L DB9 P20
U 1 1 442A8919
P 7100 10250
F 0 "P20" H 7100 10800 70  0000 C C
F 1 "DB9" H 7100 9700 70  0000 C C
	1    7100 10250
	0    1    1    0   
$EndComp
Text Notes 2450 6750 0    60   ~
Klawisze
Wire Notes Line
	2350 4650 5150 4650
Wire Notes Line
	2350 4650 2350 6850
Wire Notes Line
	2350 6850 5150 6850
Wire Notes Line
	5150 6850 5150 4650
Connection ~ 3000 6400
Wire Wire Line
	2600 6400 4600 6400
Wire Wire Line
	2600 6400 2600 2800
Wire Wire Line
	2600 2800 1300 2800
Wire Wire Line
	7950 2800 8250 2800
Wire Wire Line
	7950 2700 8250 2700
Wire Wire Line
	9700 3300 9550 3300
Wire Wire Line
	9700 3200 9550 3200
NoConn ~ 9700 3300
NoConn ~ 9700 3200
Wire Wire Line
	12450 5450 12150 5450
Wire Wire Line
	12150 5450 12150 5250
Wire Wire Line
	12150 5250 11900 5250
Wire Wire Line
	11100 5350 11100 5100
Wire Wire Line
	11100 5100 12350 5100
Wire Wire Line
	11900 5450 12000 5450
Wire Wire Line
	12000 5450 12000 5650
Wire Wire Line
	12000 5650 12450 5650
Wire Wire Line
	11900 5550 12450 5550
Wire Wire Line
	11900 5750 12450 5750
Wire Wire Line
	11100 5650 10950 5650
Wire Wire Line
	10950 5650 10950 5000
Wire Wire Line
	10950 5000 12250 5000
Wire Wire Line
	12250 5000 12250 5350
Wire Wire Line
	12350 5100 12350 5250
Wire Wire Line
	12250 5350 12450 5350
Wire Wire Line
	12350 3800 12350 3950
Wire Wire Line
	12350 3800 11100 3800
Wire Wire Line
	12250 3700 12250 4050
Wire Wire Line
	12350 5250 12450 5250
Wire Wire Line
	11900 4450 12450 4450
Wire Wire Line
	11900 4250 12450 4250
Wire Wire Line
	12450 4350 12000 4350
Wire Wire Line
	12000 4350 12000 4150
Wire Wire Line
	12000 4150 11900 4150
Wire Wire Line
	12450 4150 12150 4150
Wire Wire Line
	12150 4150 12150 3950
Wire Wire Line
	12150 3950 11900 3950
Wire Wire Line
	11100 4350 10950 4350
Wire Wire Line
	10950 4350 10950 3700
Wire Wire Line
	10950 3700 12250 3700
Wire Wire Line
	12350 3950 12450 3950
Wire Wire Line
	12250 4050 12450 4050
Wire Wire Line
	11100 3800 11100 4050
Wire Wire Line
	10650 4550 10650 2900
Wire Wire Line
	12450 3200 11900 3200
Wire Wire Line
	11900 3000 12450 3000
Wire Wire Line
	12450 3100 12000 3100
Wire Wire Line
	12000 3100 12000 2900
Wire Wire Line
	12000 2900 11900 2900
Wire Wire Line
	12450 2900 12150 2900
Wire Wire Line
	12150 2900 12150 2700
Wire Wire Line
	12150 2700 11900 2700
Wire Wire Line
	12450 2800 12250 2800
Wire Wire Line
	12250 2800 12250 2400
Wire Wire Line
	12250 2400 10950 2400
Wire Wire Line
	10950 2400 10950 3100
Wire Wire Line
	10950 3100 11100 3100
Wire Wire Line
	12450 2700 12350 2700
Wire Wire Line
	12350 2700 12350 2500
Wire Wire Line
	12350 2500 11100 2500
Wire Wire Line
	11100 2500 11100 2800
Wire Wire Line
	10650 4550 11100 4550
Wire Wire Line
	11100 3300 10750 3300
Wire Wire Line
	10750 3300 10750 2800
Wire Wire Line
	10850 3400 11100 3400
Wire Wire Line
	10550 5850 10550 3000
Wire Wire Line
	12450 1400 12350 1400
Wire Wire Line
	12350 1400 12350 1150
Wire Wire Line
	12350 1150 11100 1150
Wire Wire Line
	11100 1150 11100 1500
Wire Wire Line
	12450 1500 12250 1500
Wire Wire Line
	12250 1500 12250 1050
Wire Wire Line
	12250 1050 10950 1050
Wire Wire Line
	10950 1800 11100 1800
Wire Wire Line
	12450 1600 12150 1600
Wire Wire Line
	12150 1600 12150 1400
Wire Wire Line
	12050 1800 12050 1600
Wire Wire Line
	12050 1800 12450 1800
Wire Wire Line
	12050 1600 11900 1600
Wire Wire Line
	12150 1400 11900 1400
Wire Wire Line
	11900 1700 12450 1700
Wire Wire Line
	11900 1900 12450 1900
$Comp
L CONN_6 P14
U 1 1 4429465F
P 12800 5500
F 0 "P14" V 12750 5500 60  0000 C C
F 1 "CONN_6" V 12850 5500 60  0000 C C
	1    12800 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P13
U 1 1 4429465B
P 12800 4200
F 0 "P13" V 12750 4200 60  0000 C C
F 1 "CONN_6" V 12850 4200 60  0000 C C
	1    12800 4200
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P12
U 1 1 44294656
P 12800 2950
F 0 "P12" V 12750 2950 60  0000 C C
F 1 "CONN_6" V 12850 2950 60  0000 C C
	1    12800 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P11
U 1 1 4429464F
P 12800 1650
F 0 "P11" V 12750 1650 60  0000 C C
F 1 "CONN_6" V 12850 1650 60  0000 C C
	1    12800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 5850 11100 5850
Wire Wire Line
	10550 3000 9550 3000
Wire Wire Line
	10650 2900 9550 2900
Wire Wire Line
	10750 2800 9550 2800
Wire Wire Line
	11100 2000 10750 2000
Wire Wire Line
	10750 2000 10750 2700
Wire Wire Line
	10750 2700 9550 2700
Connection ~ 10850 3400
Wire Wire Line
	11100 4650 10850 4650
Wire Wire Line
	10850 5950 11100 5950
Wire Wire Line
	10850 2100 11100 2100
$Comp
L RELAY_2RT K4
U 1 1 44294575
P 11500 5600
F 0 "K4" H 11450 6000 70  0000 C C
F 1 "RELAY_2RT" H 11650 5100 70  0000 C C
	1    11500 5600
	1    0    0    -1  
$EndComp
$Comp
L RELAY_2RT K3
U 1 1 44294571
P 11500 4300
F 0 "K3" H 11450 4700 70  0000 C C
F 1 "RELAY_2RT" H 11650 3800 70  0000 C C
	1    11500 4300
	1    0    0    -1  
$EndComp
$Comp
L RELAY_2RT K2
U 1 1 4429456D
P 11500 3050
F 0 "K2" H 11450 3450 70  0000 C C
F 1 "RELAY_2RT" H 11650 2550 70  0000 C C
	1    11500 3050
	1    0    0    -1  
$EndComp
$Comp
L RELAY_2RT K1
U 1 1 4429454A
P 11500 1750
F 0 "K1" H 11450 2150 70  0000 C C
F 1 "RELAY_2RT" H 11650 1250 70  0000 C C
	1    11500 1750
	1    0    0    -1  
$EndComp
$Comp
L ULN2003A U11
U 1 1 442944A0
P 8900 3100
F 0 "U11" H 9150 3650 70  0000 C C
F 1 "ULN2003A" H 8850 2550 70  0000 C C
	1    8900 3100
	1    0    0    -1  
$EndComp
Connection ~ 2200 4150
Wire Wire Line
	4600 4800 4600 4150
Wire Wire Line
	4600 4150 1300 4150
Connection ~ 2150 4050
Wire Wire Line
	4200 4800 4200 4050
Wire Wire Line
	4200 4050 1300 4050
Connection ~ 2100 3950
Wire Wire Line
	3800 4800 3800 3950
Wire Wire Line
	3800 3950 1300 3950
Connection ~ 2050 3850
Wire Wire Line
	3400 4800 3400 3850
Wire Wire Line
	3400 3850 1300 3850
Connection ~ 2000 3750
Wire Wire Line
	3000 4800 3000 3750
Wire Wire Line
	3000 3750 1300 3750
Connection ~ 3400 6400
Wire Wire Line
	3400 6300 3400 6400
Connection ~ 3800 6400
Wire Wire Line
	3800 6300 3800 6400
Connection ~ 4200 6400
Wire Wire Line
	4200 6300 4200 6400
Wire Wire Line
	4600 6400 4600 6300
Wire Wire Line
	3000 6300 3000 6400
Wire Wire Line
	3000 5900 3000 5800
Wire Wire Line
	3400 5900 3400 5800
Wire Wire Line
	3800 5900 3800 5800
Wire Wire Line
	4200 5900 4200 5800
Wire Wire Line
	4600 5900 4600 5800
$Comp
L DIODE D14
U 1 1 4429384E
P 4600 6100
F 0 "D14" H 4600 6200 40  0000 C C
F 1 "DIODE" H 4600 6000 40  0000 C C
	1    4600 6100
	0    1    1    0   
$EndComp
$Comp
L DIODE D13
U 1 1 44293849
P 4200 6100
F 0 "D13" H 4200 6200 40  0000 C C
F 1 "DIODE" H 4200 6000 40  0000 C C
	1    4200 6100
	0    1    1    0   
$EndComp
$Comp
L DIODE D12
U 1 1 44293843
P 3800 6100
F 0 "D12" H 3800 6200 40  0000 C C
F 1 "DIODE" H 3800 6000 40  0000 C C
	1    3800 6100
	0    1    1    0   
$EndComp
$Comp
L DIODE D11
U 1 1 4429383D
P 3400 6100
F 0 "D11" H 3400 6200 40  0000 C C
F 1 "DIODE" H 3400 6000 40  0000 C C
	1    3400 6100
	0    1    1    0   
$EndComp
$Comp
L DIODE D10
U 1 1 44292393
P 3000 6100
F 0 "D10" H 3000 6200 40  0000 C C
F 1 "DIODE" H 3000 6000 40  0000 C C
	1    3000 6100
	0    1    1    0   
$EndComp
$Comp
L SPST SW14
U 1 1 44292330
P 4600 5300
F 0 "SW14" H 4600 5400 70  0000 C C
F 1 "SPST" H 4600 5200 70  0000 C C
	1    4600 5300
	0    -1   -1   0   
$EndComp
$Comp
L SPST SW13
U 1 1 44292328
P 4200 5300
F 0 "SW13" H 4200 5400 70  0000 C C
F 1 "SPST" H 4200 5200 70  0000 C C
	1    4200 5300
	0    -1   -1   0   
$EndComp
$Comp
L SPST SW12
U 1 1 44292315
P 3800 5300
F 0 "SW12" H 3800 5400 70  0000 C C
F 1 "SPST" H 3800 5200 70  0000 C C
	1    3800 5300
	0    -1   -1   0   
$EndComp
$Comp
L SPST SW11
U 1 1 4429230C
P 3400 5300
F 0 "SW11" H 3400 5400 70  0000 C C
F 1 "SPST" H 3400 5200 70  0000 C C
	1    3400 5300
	0    -1   -1   0   
$EndComp
$Comp
L SPST SW10
U 1 1 442922FB
P 3000 5300
F 0 "SW10" H 3000 5400 70  0000 C C
F 1 "SPST" H 3000 5200 70  0000 C C
	1    3000 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 850  2150 850 
Wire Wire Line
	2150 850  2150 750 
Wire Wire Line
	2150 750  2000 750 
Wire Wire Line
	2000 750  2000 850 
$Comp
L GND #PWR26
U 1 1 44292272
P 2000 850
F 0 "#PWR26" H 2000 850 30  0001 C C
F 1 "GND" H 2000 780 30  0001 C C
	1    2000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 950  2650 950 
$Comp
L VCC #PWR50
U 1 1 44292266
P 2000 950
F 0 "#PWR50" H 2000 1050 30  0001 C C
F 1 "VCC" H 2000 1050 30  0000 C C
	1    2000 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 2150 2350 2150
Wire Wire Line
	2350 2150 2350 4450
Wire Wire Line
	2350 4450 1300 4450
Wire Wire Line
	1300 4350 2300 4350
Wire Wire Line
	2300 4350 2300 2050
Wire Wire Line
	2300 2050 2650 2050
Wire Wire Line
	2650 1950 2250 1950
Wire Wire Line
	2250 1950 2250 4250
Wire Wire Line
	2250 4250 1300 4250
Wire Wire Line
	2200 4150 2200 1850
Wire Wire Line
	2200 1850 2650 1850
Wire Wire Line
	2150 4050 2150 1750
Wire Wire Line
	2150 1750 2650 1750
Wire Wire Line
	2650 1650 2100 1650
Wire Wire Line
	2100 1650 2100 3950
Wire Wire Line
	2050 3850 2050 1550
Wire Wire Line
	2050 1550 2650 1550
Wire Wire Line
	2650 1450 2000 1450
Wire Wire Line
	2000 1450 2000 3750
$Comp
L DISPLAY S1
U 1 1 44292218
P 4450 1500
F 0 "S1" H 3400 2250 60  0000 C C
F 1 "DISPLAY" H 4700 750 60  0000 C C
	1    4450 1500
	1    0    0    -1  
$EndComp
Text GLabel 1300 4250 0    60   BiDi
P5.5
Text GLabel 1300 4150 0    60   BiDi
P5.4
Text GLabel 1300 4450 0    60   BiDi
P5.7
Text GLabel 1300 4350 0    60   BiDi
P5.6
Text GLabel 1300 4050 0    60   BiDi
P5.3
Text GLabel 1300 3950 0    60   BiDi
P5.2
Text GLabel 1300 3850 0    60   BiDi
P5.1
Text GLabel 1300 3750 0    60   BiDi
P5.0
Text GLabel 1300 3000 0    60   BiDi
P4.7
Text GLabel 1300 2900 0    60   BiDi
P4.6
Text GLabel 1300 2800 0    60   BiDi
P4.5
Text GLabel 1300 2700 0    60   BiDi
P4.4
Text GLabel 1300 2600 0    60   BiDi
P4.3
Text GLabel 1300 2500 0    60   BiDi
P4.2
Text GLabel 1300 2400 0    60   BiDi
P4.1
Text GLabel 1300 2300 0    60   BiDi
P4.0
$EndSCHEMATC
