EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 7 14
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
L Device:R R?
U 1 1 61DB7284
P 5050 3950
AR Path="/61DB7284" Ref="R?"  Part="1" 
AR Path="/61DB5304/61DB7284" Ref="R?"  Part="1" 
AR Path="/61C15AA8/61DC5AA2/61DB7284" Ref="R?"  Part="1" 
AR Path="/61C27F52/61DC5AA2/61DB7284" Ref="R?"  Part="1" 
AR Path="/61C27E7D/61DC5AA2/61DB7284" Ref="R?"  Part="1" 
AR Path="/61D7382A/61DC5AA2/61DB7284" Ref="R?"  Part="1" 
F 0 "R?" H 5120 3996 50  0000 L CNN
F 1 "5k6" H 5120 3905 50  0000 L CNN
F 2 "" V 4980 3950 50  0001 C CNN
F 3 "~" H 5050 3950 50  0001 C CNN
	1    5050 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61DB728A
P 5050 4350
AR Path="/61DB728A" Ref="R?"  Part="1" 
AR Path="/61DB5304/61DB728A" Ref="R?"  Part="1" 
AR Path="/61C15AA8/61DC5AA2/61DB728A" Ref="R?"  Part="1" 
AR Path="/61C27F52/61DC5AA2/61DB728A" Ref="R?"  Part="1" 
AR Path="/61C27E7D/61DC5AA2/61DB728A" Ref="R?"  Part="1" 
AR Path="/61D7382A/61DC5AA2/61DB728A" Ref="R?"  Part="1" 
F 0 "R?" H 5120 4396 50  0000 L CNN
F 1 "1k" H 5120 4305 50  0000 L CNN
F 2 "" V 4980 4350 50  0001 C CNN
F 3 "~" H 5050 4350 50  0001 C CNN
	1    5050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4100 5050 4150
$Comp
L power:GND #PWR?
U 1 1 61DB7291
P 5050 4600
AR Path="/61DB7291" Ref="#PWR?"  Part="1" 
AR Path="/61DB5304/61DB7291" Ref="#PWR?"  Part="1" 
AR Path="/61C15AA8/61DC5AA2/61DB7291" Ref="#PWR?"  Part="1" 
AR Path="/61C27F52/61DC5AA2/61DB7291" Ref="#PWR?"  Part="1" 
AR Path="/61C27E7D/61DC5AA2/61DB7291" Ref="#PWR?"  Part="1" 
AR Path="/61D7382A/61DC5AA2/61DB7291" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 4350 50  0001 C CNN
F 1 "GND" H 5055 4427 50  0000 C CNN
F 2 "" H 5050 4600 50  0001 C CNN
F 3 "" H 5050 4600 50  0001 C CNN
	1    5050 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4550 5050 4500
Connection ~ 5050 4150
Wire Wire Line
	5050 4150 5050 4200
$Comp
L Device:D_Zener D?
U 1 1 61DB72A2
P 5400 4350
AR Path="/61DB72A2" Ref="D?"  Part="1" 
AR Path="/61DB5304/61DB72A2" Ref="D?"  Part="1" 
AR Path="/61C15AA8/61DC5AA2/61DB72A2" Ref="D?"  Part="1" 
AR Path="/61C27F52/61DC5AA2/61DB72A2" Ref="D?"  Part="1" 
AR Path="/61C27E7D/61DC5AA2/61DB72A2" Ref="D?"  Part="1" 
AR Path="/61D7382A/61DC5AA2/61DB72A2" Ref="D?"  Part="1" 
F 0 "D?" V 5354 4429 50  0000 L CNN
F 1 "Zener 3V3, 5%" V 5445 4429 50  0000 L CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "~" H 5400 4350 50  0001 C CNN
	1    5400 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 4150 5400 4150
Wire Wire Line
	5400 4500 5400 4550
Wire Wire Line
	5400 4550 5050 4550
Connection ~ 5050 4550
Wire Wire Line
	5050 4600 5050 4550
Wire Wire Line
	5400 4200 5400 4150
Connection ~ 5400 4150
Wire Wire Line
	5400 4150 5500 4150
Text HLabel 5500 4150 2    50   Output ~ 0
vo
Text HLabel 5500 3700 2    50   Input ~ 0
vi
Wire Wire Line
	5050 3700 5050 3800
Wire Wire Line
	5050 3700 5500 3700
Text Notes 6150 3850 0    50   ~ 0
vo must not exceed 3v3 with vi up to 20v
$EndSCHEMATC
