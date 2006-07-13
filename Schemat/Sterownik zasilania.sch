EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,gal,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,microchip,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,.\Sterownik zasilania.cache
EELAYER 23  0
EELAYER END
$Descr A3 16535 11700
Sheet 1 2
Title "Sterownik zasilania - plyta glowna"
Date "13 jul 2006"
Rev "2.0"
Comp "Wyzsza Szkola Zarzadzania i Bankowosci"
Comment1 "Autor: Michal Fita"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 14000 3900 0    60   ~
D7
Text Label 14000 3800 0    60   ~
D6
Text Label 14000 3700 0    60   ~
D5
Text Label 14000 3600 0    60   ~
D4
Text Label 14000 3500 0    60   ~
D3
Text Label 14000 3400 0    60   ~
D2
Text Label 14000 3300 0    60   ~
D1
Text Label 14000 3200 0    60   ~
D0
Wire Wire Line
	13600 3200 14300 3200
Wire Wire Line
	13600 3300 14300 3300
Wire Wire Line
	13600 3400 14300 3400
Wire Wire Line
	13600 3500 14300 3500
Wire Wire Line
	13600 3600 14300 3600
Wire Wire Line
	13600 3700 14300 3700
Wire Wire Line
	13600 3800 14300 3800
Wire Wire Line
	13600 3900 14300 3900
Wire Wire Line
	13600 4900 14300 4900
Wire Wire Line
	14300 5400 13600 5400
Wire Wire Line
	13600 5300 14300 5300
Wire Wire Line
	14300 5200 13600 5200
Wire Wire Line
	13600 5100 14300 5100
Wire Wire Line
	14300 5000 13600 5000
Wire Wire Line
	13600 4800 14300 4800
Wire Wire Line
	14300 4700 13600 4700
Wire Wire Line
	13600 4600 14300 4600
Wire Wire Line
	14300 4500 13600 4500
Wire Wire Line
	13600 4400 14300 4400
Text Label 13800 5400 0    60   ~
/WR
Text Label 13800 5300 0    60   ~
/RD
Text Label 13800 5200 0    60   ~
/OEROM
Text Label 13800 5100 0    60   ~
/OERAM
Text Label 13800 5000 0    60   ~
/CSRAM
Text Label 13800 4900 0    60   ~
BANK0/1
Text Label 13800 4800 0    60   ~
/CS1
Text Label 13800 4700 0    60   ~
/CS2
Text Label 13800 4600 0    60   ~
/CS3
Text Label 13800 4500 0    60   ~
/CS4
Text Label 13800 4400 0    60   ~
/PSEND
Text GLabel 14300 5400 2    60   Input
/WR
Text GLabel 14300 5300 2    60   Input
/RD
Text GLabel 14300 5200 2    60   Input
/OEROM
Text GLabel 14300 5100 2    60   Input
/OERAM
Text GLabel 14300 5000 2    60   Input
/CSRAM
Text GLabel 14300 4900 2    60   Input
BANK0/1
Text GLabel 14300 4800 2    60   Input
/CS1
Text GLabel 14300 4700 2    60   Input
/CS2
Text GLabel 14300 4600 2    60   Input
/CS3
Text GLabel 14300 4500 2    60   Input
/CS4
Text GLabel 14300 4400 2    60   Input
/PSEND
Text Label 11350 5100 0    60   ~
P1.2
Text Label 11350 5200 0    60   ~
P1.3
Text Label 11350 5000 0    60   ~
P1.1
Text Label 11350 4900 0    60   ~
P1.0
Wire Wire Line
	12250 5200 11300 5200
Wire Wire Line
	12250 5100 11300 5100
Wire Wire Line
	12250 5000 11300 5000
Wire Wire Line
	12250 4900 11300 4900
Text Label 2900 4250 0    60   ~
INT0
Text Label 2900 4350 0    60   ~
INT1
Text Label 2900 4450 0    60   ~
T0
Text Label 2900 4550 0    60   ~
T1
Text Label 2900 4650 0    60   ~
P1.4
Text Label 2900 4750 0    60   ~
P1.7
Text Label 2900 4850 0    60   ~
P1.5
Text Label 2900 4950 0    60   ~
P1.6
Text Label 2900 5050 0    60   ~
P1.3
Text Label 2900 5150 0    60   ~
P1.2
Text Label 2900 5250 0    60   ~
P1.1
Text Label 2900 5350 0    60   ~
P1.0
Wire Wire Line
	3300 4250 2850 4250
Wire Wire Line
	3300 4350 2850 4350
Wire Wire Line
	3300 4450 2850 4450
Wire Wire Line
	3300 4550 2850 4550
Wire Wire Line
	3300 4650 2850 4650
Wire Wire Line
	3300 4750 2850 4750
Wire Wire Line
	3300 4850 2850 4850
Wire Wire Line
	3300 4950 2850 4950
Wire Wire Line
	3300 5050 2850 5050
Wire Wire Line
	3300 5150 2850 5150
Wire Wire Line
	3300 5250 2850 5250
Wire Wire Line
	2850 5350 3300 5350
Text Label 11350 4050 0    60   ~
P5.0
Wire Wire Line
	12250 4050 11300 4050
Wire Wire Line
	12250 4450 11300 4450
Wire Wire Line
	15000 9650 14750 9650
Wire Wire Line
	3700 8900 3700 9000
Wire Wire Line
	3700 9000 3550 9000
Wire Wire Line
	3550 9000 3550 8900
$Comp
L +12V #PWR2
U 1 1 44291605
P 3550 8900
F 0 "#PWR2" H 3550 8850 20  0001 C C
F 1 "+12V" H 3550 9000 30  0000 C C
	1    3550 8900
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 442915F4
P 3700 8900
F 0 "#FLG2" H 3700 9170 30  0001 C C
F 1 "PWR_FLAG" H 3700 9130 30  0000 C C
	1    3700 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7450 3450 7450
Wire Wire Line
	3450 7450 3450 7500
$Comp
L GND #PWR25
U 1 1 442915B3
P 3450 7500
F 0 "#PWR25" H 3450 7500 30  0001 C C
F 1 "GND" H 3450 7430 30  0001 C C
	1    3450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 8050 3450 8050
Wire Wire Line
	3450 8050 3450 7900
$Comp
L VCC #PWR49
U 1 1 442915A5
P 3450 7900
F 0 "#PWR49" H 3450 8000 30  0001 C C
F 1 "VCC" H 3450 8000 30  0000 C C
	1    3450 7900
	1    0    0    -1  
$EndComp
Connection ~ 12200 8350
Wire Wire Line
	12200 8750 12200 7650
Wire Wire Line
	12250 8350 12200 8350
Text Notes 15150 2900 1    60   ~
Szyna adresowa
Text Notes 15150 1500 1    60   ~
Szyna danych
Text Label 15350 3200 0    60   ~
A15
Wire Wire Line
	15650 3200 15300 3200
$Comp
L CONN_1 PA15
U 1 1 44291323
P 15800 3200
F 0 "PA15" H 15950 3200 40  0000 C C
F 1 "CONN_1" H 15750 3240 30  0001 C C
	1    15800 3200
	1    0    0    -1  
$EndComp
Text Label 15350 3100 0    60   ~
A14
Text Label 15350 3000 0    60   ~
A13
Text Label 15350 2900 0    60   ~
A12
Text Label 15350 2800 0    60   ~
A11
Text Label 15350 2700 0    60   ~
A10
Text Label 15350 2600 0    60   ~
A9
Text Label 15350 2500 0    60   ~
A8
Text Label 15350 2400 0    60   ~
A7
Text Label 15350 2300 0    60   ~
A6
Text Label 15350 2200 0    60   ~
A5
Text Label 15350 2100 0    60   ~
A4
Text Label 15350 2000 0    60   ~
A3
Text Label 15350 1900 0    60   ~
A2
Text Label 15350 1800 0    60   ~
A1
Text Label 15350 1700 0    60   ~
A0
Wire Wire Line
	15650 3100 15300 3100
Wire Wire Line
	15650 3000 15300 3000
Wire Wire Line
	15650 2900 15300 2900
Wire Wire Line
	15650 2800 15300 2800
Wire Wire Line
	15650 2700 15300 2700
Wire Wire Line
	15650 2600 15300 2600
Wire Wire Line
	15650 2500 15300 2500
Wire Wire Line
	15650 2400 15300 2400
Wire Wire Line
	15650 2300 15300 2300
Wire Wire Line
	15650 2200 15300 2200
Wire Wire Line
	15650 2100 15300 2100
Wire Wire Line
	15650 2000 15300 2000
Wire Wire Line
	15650 1900 15300 1900
Wire Wire Line
	15650 1800 15300 1800
Wire Wire Line
	15650 1700 15300 1700
Text Label 15350 1500 0    60   ~
D7
Text Label 15350 1400 0    60   ~
D6
Text Label 15350 1300 0    60   ~
D5
Text Label 15350 1200 0    60   ~
D4
Text Label 15350 1100 0    60   ~
D3
Text Label 15350 1000 0    60   ~
D2
Text Label 15350 900  0    60   ~
D1
Text Label 15350 800  0    60   ~
D0
Wire Wire Line
	15650 1500 15300 1500
Wire Wire Line
	15650 1400 15300 1400
Wire Wire Line
	15650 1300 15300 1300
Wire Wire Line
	15650 1200 15300 1200
Wire Wire Line
	15650 1100 15300 1100
Wire Wire Line
	15650 1000 15300 1000
Wire Wire Line
	15650 900  15300 900 
Wire Wire Line
	15650 800  15300 800 
$Comp
L CONN_1 PA14
U 1 1 442911E9
P 15800 3100
F 0 "PA14" H 15950 3100 40  0000 C C
F 1 "CONN_1" H 15750 3140 30  0001 C C
	1    15800 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA13
U 1 1 442911E6
P 15800 3000
F 0 "PA13" H 15950 3000 40  0000 C C
F 1 "CONN_1" H 15750 3040 30  0001 C C
	1    15800 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA12
U 1 1 442911E2
P 15800 2900
F 0 "PA12" H 15950 2900 40  0000 C C
F 1 "CONN_1" H 15750 2940 30  0001 C C
	1    15800 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA11
U 1 1 442911DF
P 15800 2800
F 0 "PA11" H 15950 2800 40  0000 C C
F 1 "CONN_1" H 15750 2840 30  0001 C C
	1    15800 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA10
U 1 1 442911DD
P 15800 2700
F 0 "PA10" H 15950 2700 40  0000 C C
F 1 "CONN_1" H 15750 2740 30  0001 C C
	1    15800 2700
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA9
U 1 1 442911DB
P 15800 2600
F 0 "PA9" H 15950 2600 40  0000 C C
F 1 "CONN_1" H 15750 2640 30  0001 C C
	1    15800 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA8
U 1 1 442911D8
P 15800 2500
F 0 "PA8" H 15950 2500 40  0000 C C
F 1 "CONN_1" H 15750 2540 30  0001 C C
	1    15800 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA7
U 1 1 442911D4
P 15800 2400
F 0 "PA7" H 15950 2400 40  0000 C C
F 1 "CONN_1" H 15750 2440 30  0001 C C
	1    15800 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA6
U 1 1 442911D1
P 15800 2300
F 0 "PA6" H 15950 2300 40  0000 C C
F 1 "CONN_1" H 15750 2340 30  0001 C C
	1    15800 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA5
U 1 1 442911CF
P 15800 2200
F 0 "PA5" H 15950 2200 40  0000 C C
F 1 "CONN_1" H 15750 2240 30  0001 C C
	1    15800 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA4
U 1 1 442911CA
P 15800 2100
F 0 "PA4" H 15950 2100 40  0000 C C
F 1 "CONN_1" H 15750 2140 30  0001 C C
	1    15800 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA3
U 1 1 442911C8
P 15800 2000
F 0 "PA3" H 15950 2000 40  0000 C C
F 1 "CONN_1" H 15750 2040 30  0001 C C
	1    15800 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA2
U 1 1 442911C6
P 15800 1900
F 0 "PA2" H 15950 1900 40  0000 C C
F 1 "CONN_1" H 15750 1940 30  0001 C C
	1    15800 1900
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA1
U 1 1 442911C3
P 15800 1800
F 0 "PA1" H 15950 1800 40  0000 C C
F 1 "CONN_1" H 15750 1840 30  0001 C C
	1    15800 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PA0
U 1 1 442911BF
P 15800 1700
F 0 "PA0" H 15950 1700 40  0000 C C
F 1 "CONN_1" H 15750 1740 30  0001 C C
	1    15800 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PD7
U 1 1 442911B5
P 15800 1500
F 0 "PD7" H 15950 1500 40  0000 C C
F 1 "CONN_1" H 15750 1540 30  0001 C C
	1    15800 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PD6
U 1 1 442911B2
P 15800 1400
F 0 "PD6" H 15950 1400 40  0000 C C
F 1 "CONN_1" H 15750 1440 30  0001 C C
	1    15800 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PD5
U 1 1 442911B0
P 15800 1300
F 0 "PD5" H 15950 1300 40  0000 C C
F 1 "CONN_1" H 15750 1340 30  0001 C C
	1    15800 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PD4
U 1 1 442911AB
P 15800 1200
F 0 "PD4" H 15950 1200 40  0000 C C
F 1 "CONN_1" H 15750 1240 30  0001 C C
	1    15800 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PD3
U 1 1 442911A8
P 15800 1100
F 0 "PD3" H 15950 1100 40  0000 C C
F 1 "CONN_1" H 15750 1140 30  0001 C C
	1    15800 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PD2
U 1 1 442911A5
P 15800 1000
F 0 "PD2" H 15950 1000 40  0000 C C
F 1 "CONN_1" H 15750 1040 30  0001 C C
	1    15800 1000
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PD1
U 1 1 4429119E
P 15800 900
F 0 "PD1" H 15950 900 40  0000 C C
F 1 "CONN_1" H 15750 940 30  0001 C C
	1    15800 900 
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PD0
U 1 1 44291193
P 15800 800
F 0 "PD0" H 15950 800 40  0000 C C
F 1 "CONN_1" H 15750 840 30  0001 C C
	1    15800 800 
	1    0    0    -1  
$EndComp
Text Label 12650 1550 0    60   ~
A8
Wire Wire Line
	12350 1550 12850 1550
Text Label 10200 1450 0    60   ~
A8
Text Label 10200 1350 0    60   ~
A7
Wire Wire Line
	10850 1350 10000 1350
Wire Wire Line
	10850 1450 10000 1450
Wire Wire Line
	10200 1550 10850 1550
Text GLabel 10200 1550 0    60   Input
/PSEN
Text Label 5800 6950 0    60   ~
Tx
Text Label 5800 6750 0    60   ~
Rx
Wire Wire Line
	5200 6950 6000 6950
Wire Wire Line
	5200 6750 6000 6750
Text Label 6000 4150 0    60   ~
Tx
Text Label 6000 4050 0    60   ~
Rx
Wire Wire Line
	5800 4150 6200 4150
Wire Wire Line
	5800 4050 6200 4050
Wire Wire Line
	10850 2450 10700 2450
Wire Wire Line
	10700 2350 10850 2350
Text GLabel 10700 2450 0    60   Input
/WR
Text GLabel 10700 2350 0    60   Input
/RD
Text Label 7150 6050 1    60   ~
DATA BUS
Wire Wire Line
	7600 3850 7600 3750
$Comp
L GND #PWR24
U 1 1 44290BBB
P 7600 3850
F 0 "#PWR24" H 7600 3850 30  0001 C C
F 1 "GND" H 7600 3780 30  0001 C C
	1    7600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3650 7550 3650
Wire Wire Line
	7600 3750 7800 3750
Text GLabel 7550 3650 0    60   Input
ALE
Wire Wire Line
	12650 1850 12350 1850
Wire Wire Line
	9800 5650 9800 5950
Wire Wire Line
	9800 5650 9200 5650
Connection ~ 9250 5850
Wire Wire Line
	9300 5850 9200 5850
Text GLabel 9300 5850 2    60   Input
/OEROM
Wire Wire Line
	9250 5850 9250 5950
Wire Wire Line
	9250 5950 9200 5950
Text Label 7350 3450 0    60   ~
D7
Text Label 7350 3350 0    60   ~
D6
Text Label 7350 3250 0    60   ~
D5
Text Label 7350 3150 0    60   ~
D4
Text Label 7350 3050 0    60   ~
D3
Text Label 7350 2950 0    60   ~
D2
Text Label 7350 2850 0    60   ~
D1
Text Label 7350 2750 0    60   ~
D0
Text Label 7350 4850 0    60   ~
D7
Text Label 7350 4750 0    60   ~
D6
Text Label 7350 4650 0    60   ~
D5
Text Label 7350 4550 0    60   ~
D4
Text Label 7350 4450 0    60   ~
D3
Text Label 7350 4350 0    60   ~
D2
Text Label 7350 4250 0    60   ~
D1
Text Label 7350 4150 0    60   ~
D0
Wire Wire Line
	3500 9550 4000 9550
Wire Wire Line
	4000 9050 4000 8900
$Comp
L GND #PWR23
U 1 1 4428FAE3
P 4000 9050
F 0 "#PWR23" H 4000 9050 30  0001 C C
F 1 "GND" H 4000 8980 30  0001 C C
	1    4000 9050
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4428FADC
P 4000 8900
F 0 "#FLG1" H 4000 9170 30  0001 C C
F 1 "PWR_FLAG" H 4000 9130 30  0000 C C
	1    4000 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 7650 12250 7650
$Comp
L GND #PWR22
U 1 1 4428FAAD
P 12200 8750
F 0 "#PWR22" H 12200 8750 30  0001 C C
F 1 "GND" H 12200 8680 30  0001 C C
	1    12200 8750
	1    0    0    -1  
$EndComp
$Comp
L JUMPER_2 J4
U 1 1 4428FA60
P 6400 4300
F 0 "J4" H 6525 4400 50  0000 R C
F 1 "JUMPER_2" H 6400 4200 50  0001 C C
	1    6400 4300
	0    -1   -1   0   
$EndComp
Text Label 11350 4750 0    60   ~
P5.7
Text Label 11350 4650 0    60   ~
P5.6
Text Label 11350 4550 0    60   ~
P5.5
Text Label 11350 4450 0    60   ~
P5.4
Text Label 11350 4350 0    60   ~
P5.3
Text Label 11350 4250 0    60   ~
P5.2
Text Label 11350 4150 0    60   ~
P5.1
Text Label 11350 3900 0    60   ~
P4.7
Text Label 11350 3800 0    60   ~
P4.6
Text Label 11350 3700 0    60   ~
P4.5
Text Label 11350 3600 0    60   ~
P4.4
Text Label 11350 3500 0    60   ~
P4.3
Text Label 11350 3400 0    60   ~
P4.2
Text Label 11350 3300 0    60   ~
P4.1
Text Label 11350 3200 0    60   ~
P4.0
Text Label 2900 4050 0    60   ~
P4.0
Text Label 2900 3950 0    60   ~
P4.1
Text Label 2900 3850 0    60   ~
P4.2
Text Label 2900 3750 0    60   ~
P4.3
Text Label 2900 3650 0    60   ~
P4.4
Text Label 2900 3550 0    60   ~
P4.5
Text Label 2900 3450 0    60   ~
P4.6
Text Label 2900 3350 0    60   ~
P4.7
Text Label 2900 3150 0    60   ~
P5.0
Text Label 2900 3050 0    60   ~
P5.1
Text Label 2900 2950 0    60   ~
P5.2
Text Label 2900 2850 0    60   ~
P5.3
Text Label 2900 2750 0    60   ~
P5.4
Text Label 2900 2650 0    60   ~
P5.5
Text Label 2900 2550 0    60   ~
P5.6
Text Label 2900 2450 0    60   ~
P5.7
Wire Wire Line
	3300 4050 2850 4050
Wire Wire Line
	3300 3950 2850 3950
Wire Wire Line
	3300 3850 2850 3850
Wire Wire Line
	3300 3750 2850 3750
Wire Wire Line
	3300 3650 2850 3650
Wire Wire Line
	3300 3550 2850 3550
Wire Wire Line
	3300 3450 2850 3450
Wire Wire Line
	3300 3350 2850 3350
Wire Wire Line
	3300 3150 2850 3150
Wire Wire Line
	3300 3050 2850 3050
Wire Wire Line
	3300 2950 2850 2950
Wire Wire Line
	3300 2850 2850 2850
Wire Wire Line
	3300 2750 2850 2750
Wire Wire Line
	3300 2650 2850 2650
Wire Wire Line
	3300 2550 2850 2550
Wire Wire Line
	3300 2450 2850 2450
Wire Wire Line
	12250 4750 11300 4750
Wire Wire Line
	12250 4650 11300 4650
Wire Wire Line
	12250 4550 11300 4550
Wire Wire Line
	12250 4350 11300 4350
Wire Wire Line
	12250 4250 11300 4250
Wire Wire Line
	12250 4150 11300 4150
Wire Wire Line
	12250 3900 11300 3900
Wire Wire Line
	12250 3800 11300 3800
Wire Wire Line
	12250 3700 11300 3700
Wire Wire Line
	12250 3600 11300 3600
Wire Wire Line
	12250 3500 11300 3500
Wire Wire Line
	12250 3400 11300 3400
Wire Wire Line
	12250 3300 11300 3300
Wire Wire Line
	11300 3200 12250 3200
Wire Wire Line
	14600 9150 15500 9150
Text Label 15100 9150 0    60   ~
AVREF1
Connection ~ 15000 9150
Wire Wire Line
	14600 9100 14600 9450
Connection ~ 14600 9150
Wire Wire Line
	14600 10250 14600 9850
Connection ~ 14600 10150
Wire Wire Line
	15000 10150 14600 10150
$Comp
L R R17
U 1 1 4423FF10
P 15000 9400
F 0 "R17" V 15080 9400 50  0000 C C
F 1 "2k" V 15000 9400 50  0000 C C
	1    15000 9400
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 4423FF09
P 15000 9900
F 0 "R18" V 15080 9900 50  0000 C C
F 1 "2k" V 15000 9900 50  0000 C C
	1    15000 9900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR48
U 1 1 4423FEFF
P 14600 9100
F 0 "#PWR48" H 14600 9200 30  0001 C C
F 1 "VCC" H 14600 9200 30  0000 C C
	1    14600 9100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 4423FEFA
P 14600 10250
F 0 "#PWR21" H 14600 10250 30  0001 C C
F 1 "GND" H 14600 10180 30  0001 C C
	1    14600 10250
	1    0    0    -1  
$EndComp
$Comp
L TL431 D9
U 1 1 4423FEE5
P 14600 9650
F 0 "D9" H 14600 9750 40  0000 C C
F 1 "TL431" H 14750 9550 40  0000 C C
	1    14600 9650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13600 9100 13600 9300
Wire Wire Line
	13600 9000 13600 8850
$Comp
L VCC #PWR47
U 1 1 4423FB43
P 13600 8850
F 0 "#PWR47" H 13600 8950 30  0001 C C
F 1 "VCC" H 13600 8950 30  0000 C C
	1    13600 8850
	1    0    0    -1  
$EndComp
Connection ~ 13600 9200
Connection ~ 13600 9100
$Comp
L JUMPER_2 J7
U 1 1 4423FB15
P 13600 9050
F 0 "J7" H 13700 9150 40  0000 C C
F 1 "LED" H 13600 8950 40  0000 C C
	1    13600 9050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13300 9300 13300 9200
Wire Wire Line
	13300 9200 13600 9200
Text Label 13600 10450 1    60   ~
P4.1
Text Label 13300 10450 1    60   ~
P4.0
Wire Wire Line
	13300 10200 13300 10500
Wire Wire Line
	13600 10200 13600 10500
$Comp
L R R14
U 1 1 4423FAAF
P 13600 9950
F 0 "R14" V 13680 9950 50  0000 C C
F 1 "1k" V 13600 9950 50  0000 C C
	1    13600 9950
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 4423FAAA
P 13300 9950
F 0 "R15" V 13380 9950 50  0000 C C
F 1 "1k" V 13300 9950 50  0000 C C
	1    13300 9950
	1    0    0    -1  
$EndComp
$Comp
L LED D8
U 1 1 4423FA84
P 13600 9500
F 0 "D8" H 13600 9600 50  0000 C C
F 1 "LED" H 13600 9400 50  0000 C C
	1    13600 9500
	0    1    1    0   
$EndComp
$Comp
L LED D7
U 1 1 4423FA7F
P 13300 9500
F 0 "D7" H 13300 9600 50  0000 C C
F 1 "LED" H 13300 9400 50  0000 C C
	1    13300 9500
	0    1    1    0   
$EndComp
Wire Wire Line
	10650 10300 11900 10300
$Comp
L CONN_1 GND1
U 1 1 4423FA43
P 10500 10300
F 0 "GND1" H 10600 10300 40  0000 C C
F 1 "CONN_1" H 10450 10340 30  0001 C C
	1    10500 10300
	-1   0    0    1   
$EndComp
Connection ~ 10800 10300
Wire Wire Line
	10800 10200 10800 10500
Connection ~ 10800 9700
Wire Wire Line
	10800 9800 10800 9500
$Comp
L GND #PWR20
U 1 1 4423F9C3
P 10800 10500
F 0 "#PWR20" H 10800 10500 30  0001 C C
F 1 "GND" H 10800 10430 30  0001 C C
	1    10800 10500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR46
U 1 1 4423F9BE
P 10800 9500
F 0 "#PWR46" H 10800 9600 30  0001 C C
F 1 "VCC" H 10800 9600 30  0000 C C
	1    10800 9500
	1    0    0    -1  
$EndComp
Connection ~ 11150 9700
Wire Wire Line
	11150 9800 11150 9700
Connection ~ 11500 9700
Wire Wire Line
	11500 9800 11500 9700
Wire Wire Line
	11900 9800 11900 9700
Wire Wire Line
	11900 9700 10800 9700
Connection ~ 11150 10300
Wire Wire Line
	11150 10200 11150 10300
Connection ~ 11500 10300
Wire Wire Line
	11500 10200 11500 10300
Wire Wire Line
	11900 10300 11900 10200
$Comp
L CP C28
U 1 1 4423F9A0
P 11900 10000
F 0 "C28" H 11950 10100 50  0000 L C
F 1 "100uF/10V" H 11950 9900 50  0000 L C
	1    11900 10000
	1    0    0    1   
$EndComp
$Comp
L C C13
U 1 1 4423F993
P 11500 10000
F 0 "C13" H 11550 10100 50  0000 L C
F 1 "0.1uF" H 11550 9900 50  0000 L C
	1    11500 10000
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 4423F990
P 11150 10000
F 0 "C14" H 11200 10100 50  0000 L C
F 1 "0.1uF" H 11200 9900 50  0000 L C
	1    11150 10000
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 4423F98B
P 10800 10000
F 0 "C8" H 10850 10100 50  0000 L C
F 1 "0.1uF" H 10850 9900 50  0000 L C
	1    10800 10000
	1    0    0    -1  
$EndComp
$Sheet
S 12250 3100 1350 2600
F0 "Peryferia" 60
F1 "Peryferia.sch" 60
F2 "P4.0" B L 12250 3200 60 
F3 "P4.1" B L 12250 3300 60 
F4 "P4.2" B L 12250 3400 60 
F5 "P4.3" B L 12250 3500 60 
F6 "P4.4" B L 12250 3600 60 
F7 "P4.5" B L 12250 3700 60 
F8 "P4.6" B L 12250 3800 60 
F9 "P4.7" B L 12250 3900 60 
F10 "P5.1" B L 12250 4150 60 
F11 "P5.2" B L 12250 4250 60 
F12 "P5.3" B L 12250 4350 60 
F13 "P5.4" B L 12250 4450 60 
F14 "P5.5" B L 12250 4550 60 
F15 "P5.6" B L 12250 4650 60 
F16 "P5.7" B L 12250 4750 60 
F17 "P5.0" B L 12250 4050 60 
F18 "P1.0" B L 12250 4900 60 
F19 "P1.1" B L 12250 5000 60 
F20 "P1.2" B L 12250 5100 60 
F21 "P1.3" B L 12250 5200 60 
F22 "/OEROM" I R 13600 5200 60 
F23 "/OERAM" I R 13600 5100 60 
F24 "/CSRAM" I R 13600 5000 60 
F25 "BANK0/1" I R 13600 4900 60 
F26 "/CS1" I R 13600 4800 60 
F27 "/CS2" I R 13600 4700 60 
F28 "/CS3" I R 13600 4600 60 
F29 "/CS4" I R 13600 4500 60 
F30 "/RD" I R 13600 5300 60 
F31 "/WR" I R 13600 5400 60 
F32 "/PSEND" I R 13600 4400 60 
F33 "D0" B R 13600 3200 60 
F34 "D1" B R 13600 3300 60 
F35 "D2" B R 13600 3400 60 
F36 "D3" B R 13600 3500 60 
F37 "D4" B R 13600 3600 60 
F38 "D5" B R 13600 3700 60 
F39 "D6" B R 13600 3800 60 
F40 "D7" B R 13600 3900 60 
$EndSheet
Wire Wire Line
	11850 8600 11850 8000
Wire Wire Line
	11700 8600 11700 8200
Text Label 11700 8550 1    60   ~
P4.1
Text Label 11850 8550 1    60   ~
P4.0
Wire Wire Line
	11550 8000 12000 8000
Connection ~ 12000 8000
Connection ~ 11700 8200
Connection ~ 11850 8000
Connection ~ 12100 8200
Wire Wire Line
	11550 8200 12100 8200
$Comp
L CONN_2 P3
U 1 1 4423E953
P 11200 8100
F 0 "P3" V 11150 8100 40  0000 C C
F 1 "I2C" V 11250 8100 40  0000 C C
	1    11200 8100
	-1   0    0    -1  
$EndComp
$Comp
L CONN_1 SCL1
U 1 1 4423E8A6
P 11850 8750
F 0 "SCL1" H 11930 8750 40  0000 C C
F 1 "CONN_1" H 11800 8790 30  0001 C C
	1    11850 8750
	0    1    1    0   
$EndComp
$Comp
L CONN_1 SDA1
U 1 1 4423E8A2
P 11700 8750
F 0 "SDA1" H 11780 8750 40  0000 C C
F 1 "CONN_1" H 11650 8790 30  0001 C C
	1    11700 8750
	0    1    1    0   
$EndComp
Wire Wire Line
	12900 6900 12100 6900
Wire Wire Line
	12100 6900 12100 7150
Connection ~ 11450 7100
Wire Wire Line
	11450 7250 11450 6750
$Comp
L VCC #PWR45
U 1 1 4423E7F4
P 11450 6750
F 0 "#PWR45" H 11450 6850 30  0001 C C
F 1 "VCC" H 11450 6850 30  0000 C C
	1    11450 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11600 7250 11600 7100
Wire Wire Line
	11600 7100 11450 7100
Connection ~ 12100 7900
Wire Wire Line
	12100 7900 11450 7900
Wire Wire Line
	11450 7900 11450 7750
Wire Wire Line
	11600 7750 11600 7800
Connection ~ 12000 7800
Wire Wire Line
	11600 7800 12000 7800
$Comp
L R R12
U 1 1 4423E7DE
P 11450 7500
F 0 "R12" V 11530 7500 50  0000 C C
F 1 "10k" V 11450 7500 50  0000 C C
	1    11450 7500
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 4423E7DA
P 11600 7500
F 0 "R11" V 11680 7500 50  0000 C C
F 1 "10k" V 11600 7500 50  0000 C C
	1    11600 7500
	1    0    0    -1  
$EndComp
Text Label 12400 6900 0    60   ~
INT-RTC
Wire Wire Line
	12100 7150 12250 7150
Wire Wire Line
	11800 7400 11800 7300
$Comp
L GND #PWR19
U 1 1 4423E789
P 11800 7400
F 0 "#PWR19" H 11800 7400 30  0001 C C
F 1 "GND" H 11800 7330 30  0001 C C
	1    11800 7400
	1    0    0    -1  
$EndComp
Connection ~ 13600 6750
Wire Wire Line
	11800 6900 11800 6750
Wire Wire Line
	11800 6750 14000 6750
$Comp
L C C12
U 1 1 4423E767
P 11800 7100
F 0 "C12" H 11850 7200 50  0000 L C
F 1 "0.1uF" H 11850 7000 50  0000 L C
	1    11800 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 6950 14900 6750
Wire Wire Line
	14900 6750 14750 6750
$Comp
L GND #PWR18
U 1 1 4423E717
P 14900 6950
F 0 "#PWR18" H 14900 6950 30  0001 C C
F 1 "GND" H 14900 6880 30  0001 C C
	1    14900 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 6750 14650 6750
$Comp
L JUMPER_2 P10
U 1 1 4423E701
P 14700 6750
F 0 "P10" H 14800 6850 40  0000 C C
F 1 "BAT" H 14700 6650 40  0000 C C
	1    14700 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 6200 14700 6450
Wire Wire Line
	14700 6450 14400 6450
$Comp
L VCC #PWR44
U 1 1 4423E6EF
P 14700 6200
F 0 "#PWR44" H 14700 6300 30  0001 C C
F 1 "VCC" H 14700 6300 30  0000 C C
	1    14700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 6800 13800 6450
Wire Wire Line
	13800 6450 14000 6450
Connection ~ 13800 6750
$Comp
L DIODE D5
U 1 1 4423E6CE
P 14200 6450
F 0 "D5" H 14200 6550 40  0000 C C
F 1 "DIODE" H 14200 6350 40  0000 C C
	1    14200 6450
	-1   0    0    1   
$EndComp
$Comp
L DIODE D6
U 1 1 4423E6C5
P 14200 6750
F 0 "D6" H 14200 6850 40  0000 C C
F 1 "DIODE" H 14200 6650 40  0000 C C
	1    14200 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	13600 6750 13600 7150
Wire Wire Line
	13600 7150 13550 7150
Connection ~ 13800 7300
Wire Wire Line
	13800 7300 13800 7200
$Comp
L C C16
U 1 1 4423E693
P 13800 7000
F 0 "C16" H 13850 7100 50  0000 L C
F 1 "10pF" H 13850 6900 50  0000 L C
	1    13800 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 7650 14450 7650
Wire Wire Line
	14450 7650 14450 7300
Wire Wire Line
	14450 7300 13550 7300
Wire Wire Line
	13550 7650 13700 7650
$Comp
L CRYSTAL X2
U 1 1 4423E646
P 14000 7650
F 0 "X2" H 14000 7800 60  0000 C C
F 1 "32.768kHz" H 14000 7500 60  0000 C C
	1    14000 7650
	1    0    0    -1  
$EndComp
Connection ~ 13750 8250
Wire Wire Line
	13750 8050 13750 8450
$Comp
L VCC #PWR43
U 1 1 4423E245
P 13750 8050
F 0 "#PWR43" H 13750 8150 30  0001 C C
F 1 "VCC" H 13750 8150 30  0000 C C
	1    13750 8050
	1    0    0    -1  
$EndComp
Connection ~ 13750 8350
Wire Wire Line
	13650 8250 13750 8250
Wire Wire Line
	13750 8350 13650 8350
Wire Wire Line
	13750 8450 13650 8450
Wire Wire Line
	12250 8650 12100 8650
Wire Wire Line
	12100 8650 12100 7400
Wire Wire Line
	12100 7400 12250 7400
Wire Wire Line
	12250 7300 12000 7300
Wire Wire Line
	12000 7300 12000 8550
Wire Wire Line
	12000 8550 12250 8550
$Comp
L 24C16 U4
U 1 1 4423E1D2
P 12950 8450
F 0 "U4" H 13100 8800 60  0000 C C
F 1 "24C16" H 13150 8100 60  0000 C C
	1    12950 8450
	-1   0    0    -1  
$EndComp
$Comp
L PCF8563 U9
U 1 1 4423E17C
P 12900 7400
F 0 "U9" H 12900 7001 60  0000 C C
F 1 "PCF8583" H 12900 7800 60  0000 C C
	1    12900 7400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 1650 5800 1650
Wire Wire Line
	5800 1550 6250 1550
Text GLabel 6250 1650 2    60   Output
/RD
Text GLabel 6250 1550 2    60   Output
/WR
Wire Wire Line
	2800 750  2800 1450
Wire Wire Line
	2800 1450 3300 1450
Wire Wire Line
	3200 1350 3200 950 
Connection ~ 2800 1000
Wire Wire Line
	3200 1350 3300 1350
Connection ~ 3200 1000
Wire Wire Line
	2700 750  2700 950 
Wire Wire Line
	4350 850  2900 850 
Wire Wire Line
	2900 850  2900 750 
Wire Notes Line
	2550 500  500  500 
Wire Notes Line
	2550 2250 500  2250
Wire Notes Line
	2550 2250 2550 500 
Wire Wire Line
	1400 1950 2100 1950
Wire Wire Line
	2100 700  1400 700 
Wire Wire Line
	3200 950  3600 950 
$Comp
L C C11
U 1 1 4423DCA2
P 3000 1000
F 0 "C11" H 3050 1100 50  0000 L C
F 1 "0.1uF" H 3050 900 50  0000 L C
	1    3000 1000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR17
U 1 1 4423DC79
P 2700 950
F 0 "#PWR17" H 2700 950 30  0001 C C
F 1 "GND" H 2700 880 30  0001 C C
	1    2700 950 
	1    0    0    -1  
$EndComp
Text Label 3900 850  0    60   ~
AVGND1
Wire Wire Line
	3700 750  4350 750 
Text Label 3900 750  0    60   ~
AVREF1
Wire Wire Line
	3350 650  3350 750 
Wire Wire Line
	3350 750  3500 750 
$Comp
L VCC #PWR42
U 1 1 4423DC35
P 3350 650
F 0 "#PWR42" H 3350 750 30  0001 C C
F 1 "VCC" H 3350 750 30  0000 C C
	1    3350 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 950  3600 750 
$Comp
L JUMPER_3 J6
U 1 1 4423DBFB
P 3600 750
F 0 "J6" H 3725 850 40  0000 C C
F 1 "JUMPER_3" H 3600 650 40  0001 C C
	1    3600 750 
	1    0    0    -1  
$EndComp
$Comp
L JUMPER_3 J5
U 1 1 4423DBDD
P 2800 750
F 0 "J5" H 2925 850 40  0000 C C
F 1 "JUMPER_3" H 2800 650 40  0001 C C
	1    2800 750 
	1    0    0    -1  
$EndComp
Text Label 6800 10250 0    60   ~
AVGND1
Text Label 6800 10150 0    60   ~
AVREF1
Wire Wire Line
	6700 10650 6700 9950
Connection ~ 9100 10550
Wire Wire Line
	9350 10350 9350 10550
Wire Wire Line
	9350 10550 6700 10550
Connection ~ 8850 10550
Wire Wire Line
	9100 10550 9100 10350
Connection ~ 8600 10550
Wire Wire Line
	8850 10550 8850 10350
Connection ~ 8350 10550
Wire Wire Line
	8600 10550 8600 10350
Connection ~ 8100 10550
Wire Wire Line
	8350 10550 8350 10350
Connection ~ 7850 10550
Wire Wire Line
	8100 10550 8100 10350
Connection ~ 7600 10550
Wire Wire Line
	7850 10550 7850 10350
Connection ~ 6700 10550
Wire Wire Line
	7600 10550 7600 10350
Text Label 9500 9850 0    60   ~
P6.7
Text Label 9500 9750 0    60   ~
P6.6
Text Label 9500 9650 0    60   ~
P6.5
Text Label 9500 9550 0    60   ~
P6.4
Text Label 9500 9450 0    60   ~
P6.3
Text Label 9500 9350 0    60   ~
P6.2
Text Label 9500 9250 0    60   ~
P6.1
Text Label 9500 9150 0    60   ~
P6.0
Connection ~ 7600 9850
Wire Wire Line
	7200 9850 9850 9850
Connection ~ 7850 9750
Wire Wire Line
	7200 9750 9850 9750
Connection ~ 8100 9650
Wire Wire Line
	7200 9650 9850 9650
Connection ~ 8350 9550
Wire Wire Line
	7200 9550 9850 9550
Connection ~ 8600 9450
Wire Wire Line
	7200 9450 9850 9450
Connection ~ 8850 9350
Wire Wire Line
	7200 9350 9850 9350
Connection ~ 9100 9250
Wire Wire Line
	7200 9250 9850 9250
Connection ~ 9350 9150
Wire Wire Line
	7200 9150 9850 9150
Wire Wire Line
	3300 2250 2850 2250
Wire Wire Line
	3300 2150 2850 2150
Wire Wire Line
	3300 2050 2850 2050
Wire Wire Line
	3300 1950 2850 1950
Wire Wire Line
	3300 1850 2850 1850
Wire Wire Line
	3300 1750 2850 1750
Wire Wire Line
	3300 1650 2850 1650
Wire Wire Line
	3300 1550 2850 1550
Text Label 2900 1950 0    60   ~
P6.3
Text Label 2900 2050 0    60   ~
P6.2
Text Label 2900 2150 0    60   ~
P6.1
Text Label 2900 2250 0    60   ~
P6.0
Text Label 2900 1850 0    60   ~
P6.4
Text Label 2900 1750 0    60   ~
P6.5
Text Label 2900 1650 0    60   ~
P6.6
Text Label 2900 1550 0    60   ~
P6.7
Wire Wire Line
	9350 9150 9350 9950
Wire Wire Line
	9100 9950 9100 9250
Wire Wire Line
	8850 9350 8850 9950
Wire Wire Line
	8600 9950 8600 9450
Wire Wire Line
	8350 9550 8350 9950
Wire Wire Line
	8100 9650 8100 9950
Wire Wire Line
	7850 9750 7850 9950
Wire Wire Line
	7600 9850 7600 9950
$Comp
L C C25
U 1 1 4423D863
P 9350 10150
F 0 "C25" H 9400 10250 50  0000 L C
F 1 "C" H 9400 10050 50  0000 L C
	1    9350 10150
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 4423D85E
P 9100 10150
F 0 "C24" H 9150 10250 50  0000 L C
F 1 "C" H 9150 10050 50  0000 L C
	1    9100 10150
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 4423D85A
P 8850 10150
F 0 "C23" H 8900 10250 50  0000 L C
F 1 "C" H 8900 10050 50  0000 L C
	1    8850 10150
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 4423D856
P 8600 10150
F 0 "C22" H 8650 10250 50  0000 L C
F 1 "C" H 8650 10050 50  0000 L C
	1    8600 10150
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 4423D84C
P 8350 10150
F 0 "C21" H 8400 10250 50  0000 L C
F 1 "C" H 8400 10050 50  0000 L C
	1    8350 10150
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 4423D847
P 8100 10150
F 0 "C20" H 8150 10250 50  0000 L C
F 1 "C" H 8150 10050 50  0000 L C
	1    8100 10150
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 4423D843
P 7850 10150
F 0 "C19" H 7900 10250 50  0000 L C
F 1 "C" H 7900 10050 50  0000 L C
	1    7850 10150
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 4423D811
P 7600 10150
F 0 "C18" H 7650 10250 50  0000 L C
F 1 "C" H 7650 10050 50  0000 L C
	1    7600 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 10250 7200 10250
Wire Wire Line
	6500 10150 7200 10150
Connection ~ 6700 10350
$Comp
L GND #PWR16
U 1 1 441836C2
P 6700 10650
F 0 "#PWR16" H 6700 10650 30  0001 C C
F 1 "GND" H 6700 10580 30  0001 C C
	1    6700 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 10450 6500 10450
$Comp
L VCC #PWR41
U 1 1 44183697
P 6850 10450
F 0 "#PWR41" H 6850 10550 30  0001 C C
F 1 "VCC" V 6850 10600 30  0000 C C
	1    6850 10450
	0    1    1    0   
$EndComp
Connection ~ 6700 10050
Wire Wire Line
	6500 10350 6700 10350
Wire Wire Line
	6700 10050 6500 10050
Wire Wire Line
	6700 9950 6500 9950
Wire Wire Line
	6500 9850 6700 9850
Wire Wire Line
	6700 9750 6500 9750
Wire Wire Line
	6500 9650 6700 9650
Wire Wire Line
	6700 9550 6500 9550
Wire Wire Line
	6500 9450 6700 9450
Wire Wire Line
	6700 9350 6500 9350
Wire Wire Line
	6500 9250 6700 9250
Wire Wire Line
	6500 9150 6700 9150
$Comp
L R R10
U 1 1 441835CE
P 6950 9850
F 0 "R10" V 7000 10100 50  0000 C C
F 1 "R" V 6900 9650 50  0000 C C
	1    6950 9850
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 441835C8
P 6950 9750
F 0 "R9" V 7000 10000 50  0000 C C
F 1 "R" V 6900 9550 50  0000 C C
	1    6950 9750
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 441835C4
P 6950 9650
F 0 "R8" V 7000 9900 50  0000 C C
F 1 "R" V 6900 9450 50  0000 C C
	1    6950 9650
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 441835BE
P 6950 9550
F 0 "R7" V 7000 9800 50  0000 C C
F 1 "R" V 6900 9350 50  0000 C C
	1    6950 9550
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 441835B5
P 6950 9450
F 0 "R6" V 7000 9700 50  0000 C C
F 1 "R" V 6900 9250 50  0000 C C
	1    6950 9450
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 441835AD
P 6950 9350
F 0 "R5" V 7000 9600 50  0000 C C
F 1 "R" V 6900 9150 50  0000 C C
	1    6950 9350
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 441835A7
P 6950 9250
F 0 "R4" V 7000 9500 50  0000 C C
F 1 "R" V 6900 9050 50  0000 C C
	1    6950 9250
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 4418359F
P 6950 9150
F 0 "R3" V 7000 9400 50  0000 C C
F 1 "R" V 6900 8950 50  0000 C C
	1    6950 9150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_14 P4
U 1 1 44183569
P 6150 9800
F 0 "P4" V 6120 9800 60  0000 C C
F 1 "CONN_14" V 6230 9800 60  0000 C C
	1    6150 9800
	-1   0    0    -1  
$EndComp
Text Notes 550  600  0    60   ~
Uklad zerowania
Wire Notes Line
	500  2250 500  500 
Connection ~ 2100 700 
Wire Wire Line
	2100 650  2100 800 
Wire Wire Line
	1400 700  1400 1150
Wire Wire Line
	1400 1150 1300 1150
Wire Wire Line
	1950 1950 1950 2100
Connection ~ 1650 1950
Wire Wire Line
	1400 1950 1400 1350
Wire Wire Line
	1400 1350 1300 1350
Connection ~ 1650 1250
Wire Wire Line
	3300 1250 1300 1250
$Comp
L DS1813 U10
U 1 1 4418322D
P 900 1250
F 0 "U10" H 1110 1500 50  0000 R C
F 1 "DS1813" H 900 1000 50  0000 C C
	1    900  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6400 3200 6200
Wire Wire Line
	3200 6200 4050 6200
$Comp
L GND #PWR15
U 1 1 44159AC6
P 3200 6400
F 0 "#PWR15" H 3200 6400 30  0001 C C
F 1 "GND" H 3200 6330 30  0001 C C
	1    3200 6400
	1    0    0    -1  
$EndComp
Text Label 3650 6300 0    60   ~
+Vp
Wire Wire Line
	3600 6300 4150 6300
Wire Wire Line
	4150 6300 4150 6200
Text Label 3650 6400 0    60   ~
-Vp
Wire Wire Line
	3600 6400 4250 6400
Wire Wire Line
	4250 6400 4250 6200
Text Label 3350 7650 0    60   ~
+Vp
Text Label 3350 7150 0    60   ~
-Vp
Wire Wire Line
	4450 6450 3450 6450
Wire Wire Line
	4450 6450 4450 6200
Wire Wire Line
	4650 6500 3500 6500
Wire Wire Line
	4650 6500 4650 6200
Text GLabel 9350 8150 2    60   Input
/CSRAM
Connection ~ 9300 8250
Wire Wire Line
	9300 8250 9300 8150
Wire Wire Line
	9300 8150 9350 8150
Wire Wire Line
	9350 8550 9200 8550
Wire Wire Line
	9350 8450 9200 8450
Text GLabel 9350 8550 2    60   Input
/WR
Text GLabel 9350 8450 2    60   Input
/OERAM
Connection ~ 10000 8800
Wire Wire Line
	9850 8800 10250 8800
Wire Wire Line
	9850 8800 9850 8350
Wire Wire Line
	9850 8350 9200 8350
Wire Wire Line
	10000 8800 10000 8750
Wire Wire Line
	10000 8250 9200 8250
$Comp
L R R13
U 1 1 44159885
P 10000 8500
F 0 "R13" V 10080 8500 50  0000 C C
F 1 "R" V 9925 8500 50  0000 C C
	1    10000 8500
	1    0    0    -1  
$EndComp
Connection ~ 10150 8800
Wire Wire Line
	10150 8950 10150 8800
$Comp
L VCC #PWR40
U 1 1 44159840
P 10150 8950
F 0 "#PWR40" H 10150 9050 30  0001 C C
F 1 "VCC" H 10150 9050 30  0000 C C
	1    10150 8950
	1    0    0    1   
$EndComp
Wire Wire Line
	10250 8800 10250 8600
Connection ~ 10250 8050
Wire Wire Line
	10250 8100 10250 8050
$Comp
L R R1
U 1 1 441597F4
P 10250 8350
F 0 "R1" V 10330 8350 50  0000 C C
F 1 "3k" V 10175 8350 50  0000 C C
	1    10250 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 8150 10450 8350
Wire Wire Line
	10450 8350 10600 8350
$Comp
L CONN_1 B1
U 1 1 4415977A
P 10750 8350
F 0 "B1" H 10850 8350 40  0000 C C
F 1 "P6" H 10850 8250 60  0000 C C
	1    10750 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 7950 10450 7750
Wire Wire Line
	10450 7750 10600 7750
Text GLabel 10600 7750 2    60   Input
BANK0/1
Wire Wire Line
	9200 8050 10450 8050
$Comp
L JUMPER_3 J8
U 1 1 44159728
P 10450 8050
F 0 "J8" H 10575 8150 40  0000 C C
F 1 "JUMPER_3" H 10450 7950 40  0001 C C
	1    10450 8050
	0    -1   -1   0   
$EndComp
Connection ~ 10350 5650
Wire Wire Line
	10350 5300 10350 6050
$Comp
L VCC #PWR39
U 1 1 441596C1
P 10350 5300
F 0 "#PWR39" H 10350 5400 30  0001 C C
F 1 "VCC" H 10350 5400 30  0000 C C
	1    10350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5650 10450 5650
Wire Wire Line
	10350 6050 10450 6050
Wire Wire Line
	10450 5850 10000 5850
Entry Wire Line
	9900 5750 10000 5850
Text Label 10100 5850 0    60   ~
A15
Text Label 10100 5450 0    60   ~
A14
Wire Wire Line
	10000 5450 10450 5450
Entry Wire Line
	9900 5350 10000 5450
Wire Wire Line
	9800 5950 10450 5950
Wire Wire Line
	9200 5550 10450 5550
$Comp
L JUMPER_3 J3
U 1 1 4415961F
P 10450 5950
F 0 "J3" V 10650 5850 40  0000 C C
F 1 "JUMPER_3" H 10450 5850 40  0001 C C
	1    10450 5950
	0    -1   -1   0   
$EndComp
$Comp
L JUMPER_3 J2
U 1 1 441595F0
P 10450 5550
F 0 "J2" V 10650 5450 40  0000 C C
F 1 "JUMPER_3" H 10450 5450 40  0001 C C
	1    10450 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 6950 3600 6950
Wire Wire Line
	3450 6450 3450 6850
Wire Wire Line
	4550 6200 4550 6400
Wire Wire Line
	4550 6400 5300 6400
Wire Wire Line
	3450 6850 3600 6850
Wire Wire Line
	3500 6500 3500 6650
Wire Wire Line
	3500 6650 3600 6650
Wire Wire Line
	4350 6200 4350 6350
Wire Wire Line
	4350 6350 5350 6350
Wire Wire Line
	5350 6350 5350 6850
Wire Wire Line
	5350 6850 5200 6850
Wire Wire Line
	5300 6400 5300 6650
Wire Wire Line
	5300 6650 5200 6650
$Comp
L CONN_7 P6
U 1 1 44158B23
P 4350 5850
F 0 "P6" V 4320 5850 60  0000 C C
F 1 "CONN_7" V 4420 5850 60  0000 C C
	1    4350 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 8050 5750 8050
Wire Wire Line
	5200 7650 5750 7650
$Comp
L CAPAPOL C5
U 1 1 44158AC8
P 5750 7850
F 0 "C5" H 5800 7950 50  0000 L C
F 1 "2.2uF/16V" H 5800 7750 50  0000 L C
	1    5750 7850
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 7550 5750 7550
Wire Wire Line
	5750 7150 5200 7150
$Comp
L CAPAPOL C4
U 1 1 44158A72
P 5750 7350
F 0 "C4" H 5800 7450 50  0000 L C
F 1 "2.2uF/16V" H 5800 7250 50  0000 L C
	1    5750 7350
	1    0    0    1   
$EndComp
Wire Wire Line
	2800 7850 2800 7650
Wire Wire Line
	2800 7650 2900 7650
Wire Wire Line
	2900 7150 2600 7150
Wire Wire Line
	2600 7150 2600 7850
$Comp
L GND #PWR14
U 1 1 44158A0B
P 2600 7850
F 0 "#PWR14" H 2600 7850 30  0001 C C
F 1 "GND" H 2600 7780 30  0001 C C
	1    2600 7850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR38
U 1 1 44158A06
P 2800 7850
F 0 "#PWR38" H 2800 7950 30  0001 C C
F 1 "VCC" H 2800 7950 30  0000 C C
	1    2800 7850
	1    0    0    1   
$EndComp
Wire Wire Line
	3300 7650 3600 7650
Wire Wire Line
	3300 7150 3600 7150
$Comp
L CAPAPOL C6
U 1 1 441589D7
P 3100 7150
F 0 "C6" H 3150 7250 50  0000 L C
F 1 "2.2uF/16V" H 2750 7050 50  0000 L C
	1    3100 7150
	0    1    -1   0   
$EndComp
$Comp
L CAPAPOL C7
U 1 1 441589BE
P 3100 7650
F 0 "C7" H 2950 7750 50  0000 L C
F 1 "2.2uF/16V" H 2550 7550 50  0000 L C
	1    3100 7650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 6750 1400 6750
Connection ~ 1700 7350
Wire Wire Line
	1700 7550 1700 7350
Connection ~ 2500 7350
Wire Wire Line
	1400 7350 2500 7350
Wire Wire Line
	2400 6150 2400 7250
Connection ~ 2400 7250
Wire Wire Line
	2400 7250 1400 7250
Connection ~ 2300 7150
Wire Wire Line
	1400 7150 2300 7150
Connection ~ 2200 7050
Wire Wire Line
	1400 7050 2200 7050
Connection ~ 2100 6950
Connection ~ 2000 6850
Wire Wire Line
	1400 6850 2000 6850
Connection ~ 1900 6750
Connection ~ 1800 6650
Wire Wire Line
	1400 6650 1800 6650
Connection ~ 1700 6550
Wire Wire Line
	1400 6550 1700 6550
$Comp
L MAX232 U5
U 1 1 441588B3
P 4400 7350
F 0 "U5" H 3950 6500 70  0000 C C
F 1 "MAX232" H 4650 8200 70  0000 C C
	1    4400 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 6450 2600 6150
NoConn ~ 2600 6450
$Comp
L GND #PWR13
U 1 1 4415887A
P 1700 7550
F 0 "#PWR13" H 1700 7550 30  0001 C C
F 1 "GND" H 1700 7480 30  0001 C C
	1    1700 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7350 2500 6150
Wire Wire Line
	2300 7150 2300 6150
Wire Wire Line
	2200 7050 2200 6150
Wire Wire Line
	2100 6950 2100 6150
Wire Wire Line
	2000 6850 2000 6150
Wire Wire Line
	1900 6150 1900 6750
Wire Wire Line
	1800 6650 1800 6150
Wire Wire Line
	1700 6550 1700 6150
$Comp
L CONN_10 P5
U 1 1 44158855
P 2150 5800
F 0 "P5" V 2100 5800 60  0000 C C
F 1 "CONN_10" V 2200 5800 60  0000 C C
	1    2150 5800
	0    -1   -1   0   
$EndComp
$Comp
L DB9 P2
U 1 1 4415881F
P 950 6950
F 0 "P2" H 950 7500 70  0000 C C
F 1 "DB9" H 950 6400 70  0000 C C
	1    950  6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 4350 6750 4150
$Comp
L VCC #PWR37
U 1 1 441587C4
P 6750 4150
F 0 "#PWR37" H 6750 4250 30  0001 C C
F 1 "VCC" H 6750 4250 30  0000 C C
	1    6750 4150
	1    0    0    -1  
$EndComp
Connection ~ 6750 4650
Wire Wire Line
	6750 4700 6750 4650
$Comp
L GND #PWR12
U 1 1 441587B7
P 6750 4700
F 0 "#PWR12" H 6750 4700 30  0001 C C
F 1 "GND" H 6750 4630 30  0001 C C
	1    6750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4550 6900 4550
Wire Wire Line
	6900 4550 6900 4650
Wire Wire Line
	6900 4650 6550 4650
Wire Wire Line
	6550 4650 6550 4250
Wire Wire Line
	6550 4250 6400 4250
Wire Wire Line
	5800 4450 6750 4450
Wire Wire Line
	5800 4350 6400 4350
$Comp
L JUMPER_3 J1
U 1 1 44158724
P 6750 4450
F 0 "J1" H 6875 4550 40  0000 C C
F 1 "JUMPER_3" H 6750 4350 40  0001 C C
	1    6750 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 10700 3100 9850
$Comp
L GND #PWR11
U 1 1 441585DE
P 3100 10700
F 0 "#PWR11" H 3100 10700 30  0001 C C
F 1 "GND" H 3100 10630 30  0001 C C
	1    3100 10700
	1    0    0    -1  
$EndComp
Connection ~ 3100 10600
Wire Wire Line
	1700 10600 4000 10600
Wire Wire Line
	1700 10600 1700 9650
Wire Wire Line
	1700 9650 1550 9650
Connection ~ 1750 9450
Wire Wire Line
	1550 9450 1750 9450
Wire Wire Line
	1550 9550 1750 9550
$Comp
L JUMPER_2 J9
U 1 1 44158549
P 2700 9250
F 0 "J9" H 2800 9350 40  0000 R C
F 1 "JUMPER_2" H 2700 9175 40  0001 C C
	1    2700 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 9250 2650 9250
Wire Wire Line
	2750 9250 3600 9250
$Comp
L CONN_3 P1
U 1 1 44130730
P 1200 9550
F 0 "P1" V 1150 9550 50  0000 C C
F 1 "ZAS" V 1250 9550 40  0000 C C
	1    1200 9550
	-1   0    0    -1  
$EndComp
Connection ~ 1750 9250
Wire Wire Line
	1750 9550 1750 9050
$Comp
L +12V #PWR1
U 1 1 441306C3
P 1750 9050
F 0 "#PWR1" H 1750 9000 20  0001 C C
F 1 "+12V" H 1750 9150 30  0000 C C
	1    1750 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 9250 3600 9650
Wire Notes Line
	700  8600 700  10900
Wire Notes Line
	700  8600 4650 8600
Wire Notes Line
	4650 8600 4650 10900
Text Notes 750  8750 0    60   ~
Uklad zasilania
Wire Notes Line
	4650 10900 700  10900
Connection ~ 4000 9550
Wire Wire Line
	4000 9600 4000 9450
$Comp
L VCC #PWR36
U 1 1 441305C6
P 4000 9450
F 0 "#PWR36" H 4000 9550 30  0001 C C
F 1 "VCC" H 4000 9550 30  0000 C C
	1    4000 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 10600 4000 10550
Wire Wire Line
	4000 10150 4000 10100
$Comp
L LED D4
U 1 1 4413053B
P 4000 10350
F 0 "D4" H 4000 10450 50  0000 C C
F 1 "+5V" H 4000 10250 50  0000 C C
	1    4000 10350
	0    -1   1    0   
$EndComp
Connection ~ 3600 9550
$Comp
L R R2
U 1 1 44130513
P 4000 9850
F 0 "R2" V 4080 9850 50  0000 C C
F 1 "750" V 3900 9850 50  0000 C C
	1    4000 9850
	1    0    0    -1  
$EndComp
Connection ~ 3100 10100
Connection ~ 3100 10200
Wire Wire Line
	3600 10050 3600 10200
Wire Wire Line
	3600 10200 2250 10200
Wire Wire Line
	2250 10200 2250 10050
$Comp
L ZENER D3
U 1 1 441304D3
P 3600 9850
F 0 "D3" H 3600 10000 50  0000 C C
F 1 "5.6V" H 3600 9700 40  0000 C C
	1    3600 9850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 10050 2550 10100
Wire Wire Line
	2550 10100 3100 10100
Connection ~ 2550 9550
Wire Wire Line
	2550 9650 2550 9550
Connection ~ 2250 9550
Wire Wire Line
	2150 9550 2700 9550
Wire Wire Line
	2250 9650 2250 9550
$Comp
L CAPAPOL C27
U 1 1 4413045F
P 2250 9850
F 0 "C27" H 1950 9850 50  0000 L C
F 1 "100uF/16V" H 1750 9950 50  0000 L C
	1    2250 9850
	1    0    0    1   
$EndComp
$Comp
L DIODE D2
U 1 1 44130446
P 1950 9550
F 0 "D2" H 1950 9650 40  0000 C C
F 1 "1N4001" H 1950 9450 40  0000 C C
	1    1950 9550
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 4413043E
P 2550 9850
F 0 "C15" H 2600 9950 50  0000 L C
F 1 "0.1uF" H 2600 9750 50  0000 L C
	1    2550 9850
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U8
U 1 1 44130430
P 3100 9600
F 0 "U8" H 3250 9404 60  0000 C C
F 1 "LM7805" H 3100 9800 60  0000 C C
	1    3100 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3850 5800 3850
Wire Wire Line
	5800 3750 6300 3750
$Comp
L VCC #PWR35
U 1 1 441303C1
P 2100 650
F 0 "#PWR35" H 2100 750 30  0001 C C
F 1 "VCC" H 2100 750 30  0000 C C
	1    2100 650 
	1    0    0    -1  
$EndComp
Connection ~ 1950 1950
$Comp
L GND #PWR10
U 1 1 441303AC
P 1950 2100
F 0 "#PWR10" H 1950 2100 30  0001 C C
F 1 "GND" H 1950 2030 30  0001 C C
	1    1950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1950 2100 1700
Wire Wire Line
	1650 1900 1650 1950
Wire Wire Line
	1650 1300 1650 1250
Connection ~ 2100 1250
Wire Wire Line
	2100 1300 2100 1200
$Comp
L SW_PUSH SW1
U 1 1 44130244
P 1650 1600
F 0 "SW1" H 1800 1710 50  0000 C C
F 1 "SW_PUSH" H 1650 1520 50  0000 C C
	1    1650 1600
	0    -1   -1   0   
$EndComp
$Comp
L CAPAPOL C3
U 1 1 4413020F
P 2100 1500
F 0 "C3" H 2150 1600 50  0000 L C
F 1 "1uF/10V" H 2150 1400 50  0000 L C
	1    2100 1500
	1    0    0    1   
$EndComp
$Comp
L DIODE D1
U 1 1 44130205
P 2100 1000
F 0 "D1" H 2100 1100 40  0000 C C
F 1 "1N4148" H 2100 900 40  0000 C C
	1    2100 1000
	0    1    -1   0   
$EndComp
Text GLabel 6300 3850 2    60   Output
/PSEN
Text GLabel 6300 3750 2    60   Output
ALE
Connection ~ 6400 5350
Wire Wire Line
	6400 5350 6400 5500
Connection ~ 6400 4950
Wire Wire Line
	6400 4950 6400 4850
$Comp
L VCC #PWR34
U 1 1 441300AF
P 6400 4850
F 0 "#PWR34" H 6400 4950 30  0001 C C
F 1 "VCC" H 6400 4950 30  0000 C C
	1    6400 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 441300A7
P 6400 5500
F 0 "#PWR9" H 6400 5500 30  0001 C C
F 1 "GND" H 6400 5430 30  0001 C C
	1    6400 5500
	1    0    0    -1  
$EndComp
Connection ~ 6100 5350
Wire Wire Line
	6750 5350 5800 5350
Connection ~ 6100 4950
Connection ~ 5900 4950
Wire Wire Line
	6750 4950 5800 4950
$Comp
L CAPAPOL C26
U 1 1 4412FE30
P 6100 5150
F 0 "C26" H 6150 5250 50  0000 L C
F 1 "470uF/10V" H 6150 5050 50  0000 L C
	1    6100 5150
	1    0    0    1   
$EndComp
$Comp
L C C10
U 1 1 4412FE11
P 6750 5150
F 0 "C10" H 6800 5250 50  0000 L C
F 1 "0.1uF" H 6800 5050 50  0000 L C
	1    6750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4950 5900 5150
Wire Wire Line
	5900 5150 5800 5150
Wire Wire Line
	7550 850  7700 850 
Wire Wire Line
	7700 850  7700 1000
$Comp
L GND #PWR8
U 1 1 4412FDCC
P 7700 1000
F 0 "#PWR8" H 7700 1000 30  0001 C C
F 1 "GND" H 7700 930 30  0001 C C
	1    7700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1000 5800 850 
Wire Wire Line
	5800 850  5950 850 
$Comp
L GND #PWR7
U 1 1 4412FD94
P 5800 1000
F 0 "#PWR7" H 5800 1000 30  0001 C C
F 1 "GND" H 5800 930 30  0001 C C
	1    5800 1000
	1    0    0    -1  
$EndComp
Connection ~ 7100 850 
Wire Wire Line
	7100 850  7100 1350
Wire Wire Line
	7100 1350 5800 1350
Connection ~ 6400 850 
Wire Wire Line
	6400 850  6400 1250
Wire Wire Line
	6400 1250 5800 1250
Wire Wire Line
	6450 850  6350 850 
Wire Wire Line
	7150 850  7050 850 
$Comp
L C C1
U 1 1 4412FD32
P 6150 850
F 0 "C1" H 6200 950 50  0000 L C
F 1 "24pF" H 6200 750 50  0000 L C
	1    6150 850 
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 4412FD26
P 7350 850
F 0 "C2" H 7400 950 50  0000 L C
F 1 "24pF" H 7400 750 50  0000 L C
	1    7350 850 
	0    -1   -1   0   
$EndComp
$Comp
L CRYSTAL X1
U 1 1 4412FCEE
P 6750 850
F 0 "X1" H 6750 1000 60  0000 C C
F 1 "12MHz" H 6750 700 60  0000 C C
	1    6750 850 
	1    0    0    -1  
$EndComp
Text Label 9400 5450 0    60   ~
A13
Text Label 9400 5350 0    60   ~
A12
Text Label 9400 5250 0    60   ~
A11
Text Label 9400 5150 0    60   ~
A10
Text Label 9400 5050 0    60   ~
A9
Text Label 9400 4950 0    60   ~
A8
Text Label 9400 4850 0    60   ~
A7
Text Label 9400 4750 0    60   ~
A6
Text Label 9400 4650 0    60   ~
A5
Text Label 9400 4550 0    60   ~
A4
Text Label 9400 4450 0    60   ~
A3
Text Label 9400 4350 0    60   ~
A2
Text Label 9400 4250 0    60   ~
A1
Text Label 9400 4150 0    60   ~
A0
Text Label 9400 2550 0    60   ~
A15
Text Label 9400 2450 0    60   ~
A14
Text Label 9400 2350 0    60   ~
A13
Text Label 9400 2250 0    60   ~
A12
Text Label 9400 2150 0    60   ~
A11
Text Label 9400 2050 0    60   ~
A10
Text Label 9400 1950 0    60   ~
A9
Text Label 9400 1850 0    60   ~
A8
Text Label 6700 2750 0    60   ~
D7
Text Label 6700 2850 0    60   ~
D6
Text Label 6700 2950 0    60   ~
D5
Text Label 6700 3050 0    60   ~
D4
Text Label 6700 3150 0    60   ~
D3
Text Label 6700 3250 0    60   ~
D2
Text Label 6700 3350 0    60   ~
D1
Text Label 6700 3450 0    60   ~
D0
Wire Wire Line
	13000 1650 12350 1650
$Comp
L VCC #PWR33
U 1 1 4410909A
P 13000 1650
F 0 "#PWR33" H 13000 1750 30  0001 C C
F 1 "VCC" V 13000 1800 30  0000 C C
	1    13000 1650
	0    1    -1   0   
$EndComp
Wire Wire Line
	12650 2450 12350 2450
Wire Wire Line
	12350 2350 12650 2350
Wire Wire Line
	12650 2250 12350 2250
Wire Wire Line
	12350 2150 12650 2150
Wire Wire Line
	12650 2050 12350 2050
Wire Wire Line
	12350 1950 12650 1950
Wire Wire Line
	12350 1750 12650 1750
Text GLabel 12650 1750 2    60   Output
BANK0/1
Text GLabel 12650 1850 2    60   Output
/CS3
Text GLabel 12650 2050 2    60   Output
/OEROM
Text GLabel 12650 1950 2    60   Output
/OERAM
Text GLabel 12650 2150 2    60   Output
/CSRAM
Text GLabel 12650 2250 2    60   Output
/CS2
Text GLabel 12650 2350 2    60   Output
/CS1
Text GLabel 12650 2450 2    60   Output
/CS4
Text Label 10200 2250 0    60   ~
A15
Text Label 10200 2150 0    60   ~
A14
Text Label 10200 2050 0    60   ~
A13
Text Label 10200 1950 0    60   ~
A12
Text Label 10200 1850 0    60   ~
A11
Text Label 10200 1750 0    60   ~
A10
Text Label 10200 1650 0    60   ~
A9
Wire Wire Line
	10000 2250 10850 2250
Wire Wire Line
	10850 2150 10000 2150
Wire Wire Line
	10000 2050 10850 2050
Wire Wire Line
	10850 1950 10000 1950
Wire Wire Line
	10000 1850 10850 1850
Wire Wire Line
	10850 1750 10000 1750
Wire Wire Line
	10000 1650 10850 1650
Entry Wire Line
	9900 2350 10000 2250
Entry Wire Line
	9900 2250 10000 2150
Entry Wire Line
	9900 2150 10000 2050
Entry Wire Line
	9900 1850 10000 1750
Entry Wire Line
	9900 2050 10000 1950
Entry Wire Line
	9900 1950 10000 1850
Entry Wire Line
	9900 1750 10000 1650
$Comp
L GAL22V10C U7
U 1 1 441049B2
P 11600 1900
F 0 "U7" H 11850 2700 50  0000 C C
F 1 "GAL22V10C" H 11400 1100 50  0000 C C
	1    11600 1900
	1    0    0    -1  
$EndComp
Text Label 9450 7950 0    60   ~
A15
Text Label 9450 7850 0    60   ~
A14
Text Label 9450 7750 0    60   ~
A13
Text Label 9450 7650 0    60   ~
A12
Text Label 9450 7550 0    60   ~
A11
Text Label 9450 7450 0    60   ~
A10
Text Label 9450 7350 0    60   ~
A9
Text Label 9450 7250 0    60   ~
A8
Text Label 9450 7150 0    60   ~
A7
Text Label 9450 7050 0    60   ~
A6
Text Label 9450 6950 0    60   ~
A5
Text Label 9450 6850 0    60   ~
A4
Text Label 9450 6750 0    60   ~
A3
Text Label 9450 6650 0    60   ~
A2
Text Label 9450 6550 0    60   ~
A1
Text Label 9450 6450 0    60   ~
A0
Entry Wire Line
	9800 6450 9900 6350
Entry Wire Line
	9800 6550 9900 6450
Entry Wire Line
	9800 6650 9900 6550
Entry Wire Line
	9800 6750 9900 6650
Entry Wire Line
	9800 6850 9900 6750
Entry Wire Line
	9800 7150 9900 7050
Entry Wire Line
	9800 6950 9900 6850
Entry Wire Line
	9800 7050 9900 6950
Entry Wire Line
	9800 7250 9900 7150
Entry Wire Line
	9800 7350 9900 7250
Entry Wire Line
	9800 7450 9900 7350
Entry Wire Line
	9800 7550 9900 7450
Entry Wire Line
	9800 7650 9900 7550
Entry Wire Line
	9800 7750 9900 7650
Entry Wire Line
	9800 7850 9900 7750
Entry Wire Line
	9800 7950 9900 7850
Wire Wire Line
	9800 7950 9200 7950
Wire Wire Line
	9800 7850 9200 7850
Wire Wire Line
	9800 7750 9200 7750
Wire Wire Line
	9800 7650 9200 7650
Wire Wire Line
	9800 7550 9200 7550
Wire Wire Line
	9800 7450 9200 7450
Wire Wire Line
	9800 7350 9200 7350
Wire Wire Line
	9800 7250 9200 7250
Wire Wire Line
	9800 7150 9200 7150
Wire Wire Line
	9800 7050 9200 7050
Wire Wire Line
	9800 6950 9200 6950
Wire Wire Line
	9800 6850 9200 6850
Wire Wire Line
	9800 6750 9200 6750
Wire Wire Line
	9800 6650 9200 6650
Wire Wire Line
	9200 6550 9800 6550
Wire Wire Line
	9800 6450 9200 6450
Wire Bus Line
	9900 1750 9900 7850
Text Label 7500 7150 0    60   ~
D7
Text Label 7500 7050 0    60   ~
D6
Text Label 7500 6950 0    60   ~
D5
Text Label 7500 6850 0    60   ~
D4
Text Label 7500 6750 0    60   ~
D3
Text Label 7500 6650 0    60   ~
D2
Text Label 7500 6550 0    60   ~
D1
Text Label 7500 6450 0    60   ~
D0
Wire Wire Line
	7250 6950 7800 6950
Wire Wire Line
	7800 6850 7250 6850
Wire Wire Line
	7250 6750 7800 6750
Wire Wire Line
	7800 6650 7250 6650
Wire Wire Line
	7250 6550 7800 6550
Wire Wire Line
	7800 6450 7250 6450
Wire Wire Line
	7250 7050 7800 7050
Wire Wire Line
	7800 7150 7250 7150
Entry Wire Line
	7150 6350 7250 6450
Entry Wire Line
	7150 6450 7250 6550
Entry Wire Line
	7150 6550 7250 6650
Entry Wire Line
	7150 6650 7250 6750
Entry Wire Line
	7150 6750 7250 6850
Entry Wire Line
	7150 6850 7250 6950
Entry Wire Line
	7150 6950 7250 7050
Entry Wire Line
	7150 7050 7250 7150
Wire Bus Line
	7150 7150 7150 2600
$Comp
L 628128 U3
U 1 1 44103E2D
P 8500 7500
F 0 "U3" H 8200 8650 70  0000 C C
F 1 "628128" H 8700 6350 70  0000 C C
	1    8500 7500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 4850 7800 4850
Wire Wire Line
	7250 4750 7800 4750
Wire Wire Line
	7250 4650 7800 4650
Wire Wire Line
	7250 4550 7800 4550
Wire Wire Line
	7800 4450 7250 4450
Wire Wire Line
	7250 4350 7800 4350
Wire Wire Line
	7800 4250 7250 4250
Wire Wire Line
	7250 4150 7800 4150
Wire Wire Line
	9800 5450 9200 5450
Wire Wire Line
	9200 5350 9800 5350
Wire Wire Line
	9800 5250 9200 5250
Wire Wire Line
	9200 5150 9800 5150
Wire Wire Line
	9800 5050 9200 5050
Wire Wire Line
	9200 4950 9800 4950
Wire Wire Line
	9800 4850 9200 4850
Wire Wire Line
	9200 4750 9800 4750
Wire Wire Line
	9800 4650 9200 4650
Wire Wire Line
	9200 4550 9800 4550
Wire Wire Line
	9800 4450 9200 4450
Wire Wire Line
	9200 4350 9800 4350
Wire Wire Line
	9800 4250 9200 4250
Wire Wire Line
	9200 4150 9800 4150
Text Label 9400 3450 0    60   ~
A7
Text Label 9400 3350 0    60   ~
A6
Text Label 9400 3250 0    60   ~
A5
Text Label 9400 3150 0    60   ~
A4
Text Label 9400 3050 0    60   ~
A3
Text Label 9400 2950 0    60   ~
A2
Text Label 9400 2850 0    60   ~
A1
Text Label 9400 2750 0    60   ~
A0
Entry Wire Line
	7150 4750 7250 4850
Entry Wire Line
	7150 4650 7250 4750
Entry Wire Line
	7150 4550 7250 4650
Entry Wire Line
	7150 4450 7250 4550
Entry Wire Line
	7150 4350 7250 4450
Entry Wire Line
	7150 4250 7250 4350
Entry Wire Line
	7150 4150 7250 4250
Entry Wire Line
	7150 4050 7250 4150
Wire Wire Line
	9800 2750 9200 2750
Wire Wire Line
	9200 2850 9800 2850
Wire Wire Line
	9800 2950 9200 2950
Wire Wire Line
	9200 3050 9800 3050
Wire Wire Line
	9800 3150 9200 3150
Wire Wire Line
	9200 3250 9800 3250
Wire Wire Line
	9800 3350 9200 3350
Wire Wire Line
	9200 3450 9800 3450
Entry Wire Line
	9800 5450 9900 5350
Entry Wire Line
	9800 5350 9900 5250
Entry Wire Line
	9800 5250 9900 5150
Entry Wire Line
	9800 5150 9900 5050
Entry Wire Line
	9800 5050 9900 4950
Entry Wire Line
	9800 4950 9900 4850
Entry Wire Line
	9800 4850 9900 4750
Entry Wire Line
	9800 4750 9900 4650
Entry Wire Line
	9800 4650 9900 4550
Entry Wire Line
	9800 4550 9900 4450
Entry Wire Line
	9800 4450 9900 4350
Entry Wire Line
	9800 4350 9900 4250
Entry Wire Line
	9800 4250 9900 4150
Entry Wire Line
	9800 4150 9900 4050
Entry Wire Line
	9800 3450 9900 3350
Entry Wire Line
	9800 3350 9900 3250
Entry Wire Line
	9800 3250 9900 3150
Entry Wire Line
	9800 3150 9900 3050
Entry Wire Line
	9800 3050 9900 2950
Entry Wire Line
	9800 2950 9900 2850
Entry Wire Line
	9800 2850 9900 2750
Entry Wire Line
	9800 2750 9900 2650
$Comp
L 27C512 U2
U 1 1 441035AE
P 8500 5050
F 0 "U2" H 8200 6050 70  0000 C C
F 1 "27C512" H 8650 4050 70  0000 C C
	1    8500 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 1850 5800 1850
Wire Wire Line
	5800 2350 9800 2350
Wire Wire Line
	5800 1950 9800 1950
Wire Wire Line
	9800 2150 5800 2150
Wire Wire Line
	5800 2050 9800 2050
Wire Wire Line
	9800 2250 5800 2250
Wire Wire Line
	5800 2450 9800 2450
Wire Wire Line
	9800 2550 5800 2550
Entry Wire Line
	9800 1850 9900 1750
Entry Wire Line
	9800 1950 9900 1850
Entry Wire Line
	9800 2050 9900 1950
Entry Wire Line
	9800 2150 9900 2050
Entry Wire Line
	9800 2250 9900 2150
Entry Wire Line
	9800 2350 9900 2250
Entry Wire Line
	9800 2450 9900 2350
Entry Wire Line
	9800 2550 9900 2450
Wire Wire Line
	7800 3450 7250 3450
Wire Wire Line
	7250 3350 7800 3350
Wire Wire Line
	7800 3250 7250 3250
Wire Wire Line
	7800 3150 7250 3150
Wire Wire Line
	7800 3050 7250 3050
Wire Wire Line
	7800 2950 7250 2950
Wire Wire Line
	7800 2850 7250 2850
Wire Wire Line
	7800 2750 7250 2750
Entry Wire Line
	7150 3550 7250 3450
Entry Wire Line
	7150 3450 7250 3350
Entry Wire Line
	7150 2950 7250 2850
Entry Wire Line
	7150 3150 7250 3050
Entry Wire Line
	7150 3350 7250 3250
Entry Wire Line
	7150 3250 7250 3150
Entry Wire Line
	7150 3050 7250 2950
Entry Wire Line
	7150 2850 7250 2750
$Comp
L 74LS573 U6
U 1 1 44103052
P 8500 3250
F 0 "U6" H 8650 3850 60  0000 C C
F 1 "74HCT573" H 8350 2650 60  0000 C C
	1    8500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2750 5800 2750
Wire Wire Line
	7050 3450 5800 3450
Entry Wire Line
	7050 3450 7150 3350
Wire Wire Line
	5800 3350 7050 3350
Wire Wire Line
	7050 3250 5800 3250
Wire Wire Line
	5800 3150 7050 3150
Wire Wire Line
	7050 3050 5800 3050
Wire Wire Line
	5800 2950 7050 2950
Wire Wire Line
	7050 2850 5800 2850
Entry Wire Line
	7050 3350 7150 3250
Entry Wire Line
	7050 3250 7150 3150
Entry Wire Line
	7050 3150 7150 3050
Entry Wire Line
	7050 3050 7150 2950
Entry Wire Line
	7050 2950 7150 2850
Entry Wire Line
	7050 2850 7150 2750
Entry Wire Line
	7050 2750 7150 2650
$Comp
L 80C535 U1
U 1 1 44102BED
P 4550 3300
F 0 "U1" H 4550 3400 70  0000 C C
F 1 "80C535" H 4550 3200 70  0000 C C
	1    4550 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
