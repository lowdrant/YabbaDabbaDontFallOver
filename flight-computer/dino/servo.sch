EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 5 14
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
L Connector:Screw_Terminal_01x03 J?
U 1 1 61C23A44
P 5750 4200
AR Path="/61C229AC/61C23A44" Ref="J?"  Part="1" 
AR Path="/61C267AB/61C23A44" Ref="J?"  Part="1" 
AR Path="/61C3727F/61C23A44" Ref="J?"  Part="1" 
AR Path="/61C37282/61C23A44" Ref="J?"  Part="1" 
AR Path="/61DB5304/61C23A44" Ref="J?"  Part="1" 
F 0 "J?" H 5830 4242 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 5830 4151 50  0000 L CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "~" H 5750 4200 50  0001 C CNN
	1    5750 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61C249E5
P 4500 4000
AR Path="/61C229AC/61C249E5" Ref="#PWR?"  Part="1" 
AR Path="/61C267AB/61C249E5" Ref="#PWR?"  Part="1" 
AR Path="/61C3727F/61C249E5" Ref="#PWR?"  Part="1" 
AR Path="/61C37282/61C249E5" Ref="#PWR?"  Part="1" 
AR Path="/61DB5304/61C249E5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4500 3850 50  0001 C CNN
F 1 "+BATT" H 4515 4173 50  0000 C CNN
F 2 "" H 4500 4000 50  0001 C CNN
F 3 "" H 4500 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4000 5450 4100
Wire Wire Line
	5450 4100 5550 4100
Wire Wire Line
	5550 4300 5450 4300
Wire Wire Line
	5450 4300 5450 4400
$Comp
L power:GND #PWR?
U 1 1 61C25305
P 5450 4400
AR Path="/61C229AC/61C25305" Ref="#PWR?"  Part="1" 
AR Path="/61C267AB/61C25305" Ref="#PWR?"  Part="1" 
AR Path="/61C3727F/61C25305" Ref="#PWR?"  Part="1" 
AR Path="/61C37282/61C25305" Ref="#PWR?"  Part="1" 
AR Path="/61DB5304/61C25305" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 4150 50  0001 C CNN
F 1 "GND" H 5455 4227 50  0000 C CNN
F 2 "" H 5450 4400 50  0001 C CNN
F 3 "" H 5450 4400 50  0001 C CNN
	1    5450 4400
	1    0    0    -1  
$EndComp
Text HLabel 5200 4200 0    50   Input ~ 0
pwm
Wire Wire Line
	5200 4200 5300 4200
$Comp
L power:GND #PWR?
U 1 1 61E3E147
P 4500 4400
AR Path="/61C229AC/61E3E147" Ref="#PWR?"  Part="1" 
AR Path="/61C267AB/61E3E147" Ref="#PWR?"  Part="1" 
AR Path="/61C3727F/61E3E147" Ref="#PWR?"  Part="1" 
AR Path="/61C37282/61E3E147" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4500 4150 50  0001 C CNN
F 1 "GND" H 4505 4227 50  0000 C CNN
F 2 "" H 4500 4400 50  0001 C CNN
F 3 "" H 4500 4400 50  0001 C CNN
	1    4500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4400 4500 4350
Wire Wire Line
	4500 4050 4500 4000
Text Notes 4250 4700 0    50   ~ 0
decoupling cap
$Comp
L power:+BATT #PWR?
U 1 1 61E78C45
P 5450 4000
AR Path="/61C229AC/61E78C45" Ref="#PWR?"  Part="1" 
AR Path="/61C267AB/61E78C45" Ref="#PWR?"  Part="1" 
AR Path="/61C3727F/61E78C45" Ref="#PWR?"  Part="1" 
AR Path="/61C37282/61E78C45" Ref="#PWR?"  Part="1" 
AR Path="/61DB5304/61E78C45" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 3850 50  0001 C CNN
F 1 "+BATT" H 5465 4173 50  0000 C CNN
F 2 "" H 5450 4000 50  0001 C CNN
F 3 "" H 5450 4000 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 61E79D90
P 5150 3950
AR Path="/61C229AC/61E79D90" Ref="TP?"  Part="1" 
AR Path="/61C3727F/61E79D90" Ref="TP?"  Part="1" 
AR Path="/61C267AB/61E79D90" Ref="TP?"  Part="1" 
AR Path="/61C37282/61E79D90" Ref="TP?"  Part="1" 
F 0 "TP?" H 5208 4068 50  0000 L CNN
F 1 "TestPoint" H 5208 3977 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5010-5014_Multipurpose" H 5350 3950 50  0001 C CNN
F 3 "~" H 5350 3950 50  0001 C CNN
	1    5150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4050 5300 4200
Wire Wire Line
	5550 4200 5300 4200
Connection ~ 5300 4200
Wire Wire Line
	5150 3950 5150 4050
Wire Wire Line
	5150 4050 5300 4050
$Comp
L Device:CP1 C?
U 1 1 61F15F74
P 4500 4200
AR Path="/61F15F74" Ref="C?"  Part="1" 
AR Path="/61C3727F/61F15F74" Ref="C?"  Part="1" 
AR Path="/61C229AC/61F15F74" Ref="C?"  Part="1" 
AR Path="/61C267AB/61F15F74" Ref="C?"  Part="1" 
AR Path="/61C37282/61F15F74" Ref="C?"  Part="1" 
F 0 "C?" H 4615 4246 50  0000 L CNN
F 1 "10u" H 4615 4155 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 4500 4200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811071223_AVX-TAJA106K016RNJ_C7171.pdf" H 4500 4200 50  0001 C CNN
F 4 "C7171" H 4500 4200 50  0001 C CNN "LCSC"
	1    4500 4200
	1    0    0    -1  
$EndComp
Text Notes 5550 4900 0    50   ~ 10
LAYOUT: cap must be near connector
$EndSCHEMATC
