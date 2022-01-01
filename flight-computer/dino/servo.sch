EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 8 14
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
P 5450 4000
AR Path="/61C229AC/61C249E5" Ref="#PWR?"  Part="1" 
AR Path="/61C267AB/61C249E5" Ref="#PWR?"  Part="1" 
AR Path="/61C3727F/61C249E5" Ref="#PWR?"  Part="1" 
AR Path="/61C37282/61C249E5" Ref="#PWR?"  Part="1" 
AR Path="/61DB5304/61C249E5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 3850 50  0001 C CNN
F 1 "+BATT" H 5465 4173 50  0000 C CNN
F 2 "" H 5450 4000 50  0001 C CNN
F 3 "" H 5450 4000 50  0001 C CNN
	1    5450 4000
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
Text HLabel 5450 4200 0    50   Input ~ 0
pwm
Wire Wire Line
	5450 4200 5550 4200
$EndSCHEMATC
