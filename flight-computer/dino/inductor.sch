EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 9 14
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
L power:+BATT #PWR?
U 1 1 61C163F4
P 5250 3450
AR Path="/61C15AA8/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C229AC/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C27E7D/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61C27F52/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61D7382A/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61F91E79/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61F965DC/61C163F4" Ref="#PWR?"  Part="1" 
AR Path="/61F965E7/61C163F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 3300 50  0001 C CNN
F 1 "+BATT" H 5265 3623 50  0000 C CNN
F 2 "" H 5250 3450 50  0001 C CNN
F 3 "" H 5250 3450 50  0001 C CNN
	1    5250 3450
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
AR Path="/61F91E79/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61F965DC/61C16FAC" Ref="#PWR?"  Part="1" 
AR Path="/61F965E7/61C16FAC" Ref="#PWR?"  Part="1" 
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
AR Path="/61F91E79/61C18064" Ref="J?"  Part="1" 
AR Path="/61F965DC/61C18064" Ref="J?"  Part="1" 
AR Path="/61F965E7/61C18064" Ref="J?"  Part="1" 
F 0 "J?" H 5930 4092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5930 4001 50  0000 L CNN
F 2 "" H 5850 4100 50  0001 C CNN
F 3 "~" H 5850 4100 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
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
Text HLabel 4700 4550 0    50   Input ~ 0
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
	4250 4400 4300 4400
Text HLabel 4350 4400 2    50   Input ~ 0
v_sens_loside
$Comp
L Device:R_Small R?
U 1 1 61DCB57D
P 4900 4550
AR Path="/61C27E7D/61DCB57D" Ref="R?"  Part="1" 
AR Path="/61C27F52/61DCB57D" Ref="R?"  Part="1" 
AR Path="/61C15AA8/61DCB57D" Ref="R?"  Part="1" 
AR Path="/61F91E79/61DCB57D" Ref="R?"  Part="1" 
AR Path="/61F965DC/61DCB57D" Ref="R?"  Part="1" 
AR Path="/61F965E7/61DCB57D" Ref="R?"  Part="1" 
F 0 "R?" V 4800 4550 50  0000 C CNN
F 1 "1k" V 4900 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4900 4550 50  0001 C CNN
F 3 "~" H 4900 4550 50  0001 C CNN
F 4 "C21190" V 4900 4550 50  0001 C CNN "LCSC"
	1    4900 4550
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky_Small D?
U 1 1 61DCC192
P 5350 4150
AR Path="/61C27E7D/61DCC192" Ref="D?"  Part="1" 
AR Path="/61C27F52/61DCC192" Ref="D?"  Part="1" 
AR Path="/61C15AA8/61DCC192" Ref="D?"  Part="1" 
AR Path="/61F91E79/61DCC192" Ref="D?"  Part="1" 
AR Path="/61F965DC/61DCC192" Ref="D?"  Part="1" 
AR Path="/61F965E7/61DCC192" Ref="D?"  Part="1" 
F 0 "D?" V 5304 4082 50  0000 R CNN
F 1 "40V 5A 550mV" V 5395 4082 50  0000 R CNN
F 2 "Diode_SMD:D_SMA" V 5350 4150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810192041_MDD%EF%BC%88Microdiode-Electronics%EF%BC%89-SS54_C22452.pdf" V 5350 4150 50  0001 C CNN
F 4 "C22452" V 5350 4150 50  0001 C CNN "LCSC"
	1    5350 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 4100 5550 4000
Wire Wire Line
	4750 4550 4800 4550
Wire Wire Line
	5000 4550 5050 4550
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 61E3754D
P 5250 4550
AR Path="/61C27F52/61E3754D" Ref="Q?"  Part="1" 
AR Path="/61C15AA8/61E3754D" Ref="Q?"  Part="1" 
AR Path="/61C27E7D/61E3754D" Ref="Q?"  Part="1" 
AR Path="/61F91E79/61E3754D" Ref="Q?"  Part="1" 
AR Path="/61F965DC/61E3754D" Ref="Q?"  Part="1" 
AR Path="/61F965E7/61E3754D" Ref="Q?"  Part="1" 
F 0 "Q?" H 5455 4596 50  0000 L CNN
F 1 "AO3400A" H 5455 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5450 4650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811081213_Alpha-&-Omega-Semicon-AO3400A_C20917.pdf" H 5250 4550 50  0001 C CNN
	1    5250 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61E403DE
P 3900 5050
AR Path="/61C229AC/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61C267AB/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61C3727F/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61C37282/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61DB5304/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61C15AA8/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61C27F52/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61C27E7D/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61F91E79/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61F965DC/61E403DE" Ref="#PWR?"  Part="1" 
AR Path="/61F965E7/61E403DE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3900 4900 50  0001 C CNN
F 1 "+BATT" H 3915 5223 50  0000 C CNN
F 2 "" H 3900 5050 50  0001 C CNN
F 3 "" H 3900 5050 50  0001 C CNN
	1    3900 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E403EA
P 3900 5450
AR Path="/61C229AC/61E403EA" Ref="#PWR?"  Part="1" 
AR Path="/61C15AA8/61E403EA" Ref="#PWR?"  Part="1" 
AR Path="/61C27F52/61E403EA" Ref="#PWR?"  Part="1" 
AR Path="/61C27E7D/61E403EA" Ref="#PWR?"  Part="1" 
AR Path="/61F91E79/61E403EA" Ref="#PWR?"  Part="1" 
AR Path="/61F965DC/61E403EA" Ref="#PWR?"  Part="1" 
AR Path="/61F965E7/61E403EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3900 5200 50  0001 C CNN
F 1 "GND" H 3905 5277 50  0000 C CNN
F 2 "" H 3900 5450 50  0001 C CNN
F 3 "" H 3900 5450 50  0001 C CNN
	1    3900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5450 3900 5400
Wire Wire Line
	3900 5100 3900 5050
Text Notes 3650 5750 0    50   ~ 0
decoupling cap
$Comp
L Switch:SW_SPDT SW?
U 1 1 61E69DDA
P 5350 3700
AR Path="/61C27E7D/61E69DDA" Ref="SW?"  Part="1" 
AR Path="/61C27F52/61E69DDA" Ref="SW?"  Part="1" 
AR Path="/61F91E79/61E69DDA" Ref="SW?"  Part="1" 
AR Path="/61F965DC/61E69DDA" Ref="SW?"  Part="1" 
AR Path="/61F965E7/61E69DDA" Ref="SW?"  Part="1" 
F 0 "SW?" V 5396 3512 50  0000 R CNN
F 1 "SW_SPDT" V 5305 3512 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5350 3700 50  0001 C CNN
F 3 "~" H 5350 3700 50  0001 C CNN
	1    5350 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 3450 5250 3500
Text Notes 5650 3550 0    50   ~ 0
arming switch
Wire Wire Line
	5350 3900 5350 4000
Text HLabel 5200 4000 0    50   Input ~ 0
v_hiside
Wire Wire Line
	5200 4000 5350 4000
Text Notes 3750 3650 0    50   ~ 0
WARN: v_hiside can exceed 12V!
$Comp
L Connector:TestPoint TP?
U 1 1 61E7CEBE
P 4900 4800
AR Path="/61C229AC/61E7CEBE" Ref="TP?"  Part="1" 
AR Path="/61C27E7D/61E7CEBE" Ref="TP?"  Part="1" 
AR Path="/61C27F52/61E7CEBE" Ref="TP?"  Part="1" 
AR Path="/61F91E79/61E7CEBE" Ref="TP?"  Part="1" 
AR Path="/61F965DC/61E7CEBE" Ref="TP?"  Part="1" 
AR Path="/61F965E7/61E7CEBE" Ref="TP?"  Part="1" 
F 0 "TP?" H 4958 4918 50  0000 L CNN
F 1 "TestPoint" H 4958 4827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5010-5014_Multipurpose" H 5100 4800 50  0001 C CNN
F 3 "~" H 5100 4800 50  0001 C CNN
	1    4900 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 4800 4900 4700
Wire Wire Line
	4900 4700 4750 4700
Wire Wire Line
	4750 4700 4750 4550
Wire Wire Line
	4750 4550 4700 4550
Connection ~ 4750 4550
$Comp
L Connector:TestPoint TP?
U 1 1 61E7E697
P 4400 4800
AR Path="/61C229AC/61E7E697" Ref="TP?"  Part="1" 
AR Path="/61C27E7D/61E7E697" Ref="TP?"  Part="1" 
AR Path="/61C27F52/61E7E697" Ref="TP?"  Part="1" 
AR Path="/61F91E79/61E7E697" Ref="TP?"  Part="1" 
AR Path="/61F965DC/61E7E697" Ref="TP?"  Part="1" 
AR Path="/61F965E7/61E7E697" Ref="TP?"  Part="1" 
F 0 "TP?" H 4458 4918 50  0000 L CNN
F 1 "TestPoint" H 4458 4827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5010-5014_Multipurpose" H 4600 4800 50  0001 C CNN
F 3 "~" H 4600 4800 50  0001 C CNN
	1    4400 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 4800 4400 4550
Wire Wire Line
	4400 4550 4300 4550
Wire Wire Line
	4300 4550 4300 4400
Connection ~ 4300 4400
Wire Wire Line
	4300 4400 4350 4400
$Comp
L Device:CP1 C?
U 1 1 61F12425
P 3900 5250
AR Path="/61F12425" Ref="C?"  Part="1" 
AR Path="/61C27E7D/61F12425" Ref="C?"  Part="1" 
AR Path="/61F91E79/61F12425" Ref="C?"  Part="1" 
AR Path="/61F965DC/61F12425" Ref="C?"  Part="1" 
AR Path="/61F965E7/61F12425" Ref="C?"  Part="1" 
F 0 "C?" H 4015 5296 50  0000 L CNN
F 1 "10u" H 4015 5205 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 3900 5250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811071223_AVX-TAJA106K016RNJ_C7171.pdf" H 3900 5250 50  0001 C CNN
F 4 "C7171" H 3900 5250 50  0001 C CNN "LCSC"
	1    3900 5250
	1    0    0    -1  
$EndComp
Text Notes 5450 5700 0    50   ~ 10
LAYOUT: cap must be near connector
$EndSCHEMATC
