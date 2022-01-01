EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 10 14
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
L Device:Q_NMOS_DGS Q?
U 1 1 61C15CF4
P 5250 4550
AR Path="/61C15AA8/61C15CF4" Ref="Q?"  Part="1" 
AR Path="/61C229AC/61C15CF4" Ref="Q?"  Part="1" 
AR Path="/61C27E7D/61C15CF4" Ref="Q?"  Part="1" 
AR Path="/61C27F52/61C15CF4" Ref="Q?"  Part="1" 
AR Path="/61D7382A/61C15CF4" Ref="Q?"  Part="1" 
F 0 "Q?" H 5454 4596 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 5454 4505 50  0000 L CNN
F 2 "" H 5450 4650 50  0001 C CNN
F 3 "~" H 5250 4550 50  0001 C CNN
	1    5250 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61C163F4
P 5350 3900
AR Path="/61C15AA8/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C229AC/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C27E7D/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C27F52/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61D7382A/61C163F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 3750 50  0001 C CNN
F 1 "+BATT" H 5365 4073 50  0000 C CNN
F 2 "" H 5350 3900 50  0001 C CNN
F 3 "" H 5350 3900 50  0001 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C16FAC
P 5350 4850
AR Path="/61C15AA8/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61C229AC/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61C27E7D/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61C27F52/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61D7382A/61C16FAC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 4600 50  0001 C CNN
F 1 "GND" H 5355 4677 50  0000 C CNN
F 2 "" H 5350 4850 50  0001 C CNN
F 3 "" H 5350 4850 50  0001 C CNN
	1    5350 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61C18064
P 5850 4100
AR Path="/61C15AA8/61C18064" Ref="J?"  Part="1" 
AR Path="/61C229AC/61C18064" Ref="J?"  Part="1" 
AR Path="/61C27E7D/61C18064" Ref="J?"  Part="1" 
AR Path="/61C27F52/61C18064" Ref="J?"  Part="1" 
AR Path="/61D7382A/61C18064" Ref="J?"  Part="1" 
F 0 "J?" H 5930 4092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5930 4001 50  0000 L CNN
F 2 "" H 5850 4100 50  0001 C CNN
F 3 "~" H 5850 4100 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3900 5350 4000
Wire Wire Line
	5650 4100 5550 4100
Wire Wire Line
	5550 4000 5350 4000
Connection ~ 5350 4000
Wire Wire Line
	5350 4000 5350 4050
Wire Wire Line
	5350 4250 5350 4300
Wire Wire Line
	5350 4300 5550 4300
Wire Wire Line
	5550 4300 5550 4200
Wire Wire Line
	5550 4200 5650 4200
Connection ~ 5350 4300
Wire Wire Line
	5350 4300 5350 4350
Wire Wire Line
	5350 4750 5350 4850
Text HLabel 4750 4550 0    50   Input ~ 0
sig
$Sheet
S 3600 4100 650  450 
U 61DC5AA2
F0 "sheet61DC5A9E" 50
F1 "batt-div.sch" 50
F2 "vo" O R 4250 4400 50 
F3 "vi" I R 4250 4300 50 
$EndSheet
Wire Wire Line
	5350 4300 4250 4300
Wire Wire Line
	4250 4400 4350 4400
Text HLabel 4350 4400 2    50   Input ~ 0
v_loside
$Comp
L Device:R_Small R?
U 1 1 61DCB57D
P 4900 4550
AR Path="/61C27E7D/61DCB57D" Ref="R?"  Part="1" 
AR Path="/61C27F52/61DCB57D" Ref="R?"  Part="1" 
F 0 "R?" V 4800 4550 50  0000 C CNN
F 1 "1k" V 4900 4550 50  0000 C CNN
F 2 "" H 4900 4550 50  0001 C CNN
F 3 "~" H 4900 4550 50  0001 C CNN
	1    4900 4550
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky_Small D?
U 1 1 61DCC192
P 5350 4150
AR Path="/61C27E7D/61DCC192" Ref="D?"  Part="1" 
AR Path="/61C27F52/61DCC192" Ref="D?"  Part="1" 
F 0 "D?" V 5304 4082 50  0000 R CNN
F 1 "D_Schottky_Small" V 5395 4082 50  0000 R CNN
F 2 "" V 5350 4150 50  0001 C CNN
F 3 "~" V 5350 4150 50  0001 C CNN
	1    5350 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 4100 5550 4000
Wire Wire Line
	4750 4550 4800 4550
Wire Wire Line
	5000 4550 5050 4550
Text Notes 6200 5100 0    50   ~ 0
asdfasdf
$EndSCHEMATC
