EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 6
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
P 5250 4600
AR Path="/61C15AA8/61C15CF4" Ref="Q?"  Part="1" 
AR Path="/61C229AC/61C15CF4" Ref="Q?"  Part="1" 
AR Path="/61C27E7D/61C15CF4" Ref="Q?"  Part="1" 
AR Path="/61C27F52/61C15CF4" Ref="Q?"  Part="1" 
F 0 "Q?" H 5454 4646 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 5454 4555 50  0000 L CNN
F 2 "" H 5450 4700 50  0001 C CNN
F 3 "~" H 5250 4600 50  0001 C CNN
	1    5250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61C163F4
P 5350 3850
AR Path="/61C15AA8/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C229AC/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C27E7D/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C27F52/61C163F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 3700 50  0001 C CNN
F 1 "+BATT" H 5365 4023 50  0000 C CNN
F 2 "" H 5350 3850 50  0001 C CNN
F 3 "" H 5350 3850 50  0001 C CNN
	1    5350 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C16FAC
P 5350 4900
AR Path="/61C15AA8/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61C229AC/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61C27E7D/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61C27F52/61C16FAC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 4650 50  0001 C CNN
F 1 "GND" H 5355 4727 50  0000 C CNN
F 2 "" H 5350 4900 50  0001 C CNN
F 3 "" H 5350 4900 50  0001 C CNN
	1    5350 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 61C1778E
P 5350 4150
AR Path="/61C15AA8/61C1778E" Ref="D?"  Part="1" 
AR Path="/61C229AC/61C1778E" Ref="D?"  Part="1" 
AR Path="/61C27E7D/61C1778E" Ref="D?"  Part="1" 
AR Path="/61C27F52/61C1778E" Ref="D?"  Part="1" 
F 0 "D?" V 5304 4071 50  0000 R CNN
F 1 "D_Schottky" V 5395 4071 50  0000 R CNN
F 2 "" H 5350 4150 50  0001 C CNN
F 3 "~" H 5350 4150 50  0001 C CNN
	1    5350 4150
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61C18064
P 5850 4100
AR Path="/61C15AA8/61C18064" Ref="J?"  Part="1" 
AR Path="/61C229AC/61C18064" Ref="J?"  Part="1" 
AR Path="/61C27E7D/61C18064" Ref="J?"  Part="1" 
AR Path="/61C27F52/61C18064" Ref="J?"  Part="1" 
F 0 "J?" H 5930 4092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5930 4001 50  0000 L CNN
F 2 "" H 5850 4100 50  0001 C CNN
F 3 "~" H 5850 4100 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3850 5350 3950
Wire Wire Line
	5650 4100 5550 4100
Wire Wire Line
	5550 4100 5550 3950
Wire Wire Line
	5550 3950 5350 3950
Connection ~ 5350 3950
Wire Wire Line
	5350 3950 5350 4000
Wire Wire Line
	5350 4300 5350 4350
Wire Wire Line
	5350 4350 5550 4350
Wire Wire Line
	5550 4350 5550 4200
Wire Wire Line
	5550 4200 5650 4200
Connection ~ 5350 4350
Wire Wire Line
	5350 4350 5350 4400
Wire Wire Line
	5350 4800 5350 4900
Wire Wire Line
	5050 4600 4900 4600
Text HLabel 4900 4600 0    50   Input ~ 0
sig
$EndSCHEMATC
