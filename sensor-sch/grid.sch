EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:hall_encoder-cache
LIBS:arduino
LIBS:grid-cache
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
L US1881 HALL1
U 1 1 5B3561FF
P 6050 2900
F 0 "HALL1" H 6050 3150 60  0000 C CNN
F 1 "US1881" H 6050 3000 60  0000 C CNN
F 2 "Hall-Effect_Transducers_LEM:HTFS-Series_LEM-HallEffektCurrentTransducer" H 4050 4000 60  0001 C CNN
F 3 "" H 4050 4000 60  0001 C CNN
	1    6050 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5B356276
P 5600 2800
F 0 "#PWR01" H 5600 2650 50  0001 C CNN
F 1 "+5V" H 5600 2940 50  0000 C CNN
F 2 "" H 5600 2800 50  0001 C CNN
F 3 "" H 5600 2800 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B3562D9
P 6550 4400
F 0 "#PWR02" H 6550 4150 50  0001 C CNN
F 1 "GND" H 6550 4250 50  0000 C CNN
F 2 "" H 6550 4400 50  0001 C CNN
F 3 "" H 6550 4400 50  0001 C CNN
	1    6550 4400
	1    0    0    -1  
$EndComp
$Comp
L LM311 U2
U 1 1 5B356301
P 7300 2350
F 0 "U2" H 7450 2600 50  0000 L CNN
F 1 "LM311" H 7450 2500 50  0000 L CNN
F 2 "Housings_SSOP:VSSOP-8_2.3x2mm_Pitch0.5mm" H 7300 2350 50  0001 C CNN
F 3 "" H 7300 2350 50  0001 C CNN
	1    7300 2350
	1    0    0    -1  
$EndComp
$Comp
L AD5290 U1
U 1 1 5B356467
P 4350 3500
F 0 "U1" H 3900 3900 50  0000 L CNN
F 1 "AD5290" H 4550 3900 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 4350 3500 50  0001 C CNN
F 3 "" H 4350 3500 50  0001 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 5600 3300
Wire Wire Line
	7300 4200 4250 4200
Wire Wire Line
	6050 3300 6050 4200
Wire Wire Line
	4450 4000 4450 4200
Connection ~ 4450 4200
Wire Wire Line
	4250 4200 4250 4000
Wire Wire Line
	4950 3700 4950 4200
Connection ~ 4950 4200
$Comp
L +5V #PWR03
U 1 1 5B3567A4
P 4350 2750
F 0 "#PWR03" H 4350 2600 50  0001 C CNN
F 1 "+5V" H 4350 2890 50  0000 C CNN
F 2 "" H 4350 2750 50  0001 C CNN
F 3 "" H 4350 2750 50  0001 C CNN
	1    4350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2750 4350 3000
$Comp
L +5V #PWR04
U 1 1 5B3567DD
P 7200 1850
F 0 "#PWR04" H 7200 1700 50  0001 C CNN
F 1 "+5V" H 7200 1990 50  0000 C CNN
F 2 "" H 7200 1850 50  0001 C CNN
F 3 "" H 7200 1850 50  0001 C CNN
	1    7200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1850 7200 2050
NoConn ~ 7300 2050
NoConn ~ 7400 2050
Wire Wire Line
	4950 3300 4950 2900
Wire Wire Line
	4950 2900 4350 2900
Connection ~ 4350 2900
Wire Wire Line
	7000 3500 6250 3500
Wire Wire Line
	7000 2450 7000 3500
Wire Wire Line
	6250 3500 6250 3300
Wire Wire Line
	7200 2650 7200 4200
Connection ~ 6550 4200
Wire Wire Line
	7300 2650 7300 4200
Connection ~ 7200 4200
Connection ~ 6050 4200
Wire Wire Line
	7000 2250 5450 2250
Wire Wire Line
	5450 2250 5450 3500
Wire Wire Line
	5450 3500 4950 3500
$Comp
L R R1
U 1 1 5B356DF3
P 7900 2150
F 0 "R1" V 7980 2150 50  0000 C CNN
F 1 "R" V 7900 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0201" V 7830 2150 50  0001 C CNN
F 3 "" H 7900 2150 50  0001 C CNN
	1    7900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2350 8350 2350
Wire Wire Line
	7900 2350 7900 2300
Wire Wire Line
	7900 2000 7900 1900
Wire Wire Line
	7900 1900 7200 1900
Connection ~ 7200 1900
Wire Wire Line
	5600 3300 5850 3300
Text GLabel 3550 3300 0    60   Input ~ 0
SDI
Text GLabel 3100 3400 0    60   Input ~ 0
SDO
Text GLabel 3550 3500 0    60   Input ~ 0
CLK
Text GLabel 3500 3700 0    60   Input ~ 0
CS
Wire Wire Line
	3500 3700 3750 3700
Wire Wire Line
	3550 3500 3750 3500
Wire Wire Line
	3100 3400 3750 3400
Wire Wire Line
	3550 3300 3750 3300
Text GLabel 8350 2350 2    60   Input ~ 0
HALLOUT
Connection ~ 7900 2350
Wire Wire Line
	6550 4400 6550 4200
$EndSCHEMATC
