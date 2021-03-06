EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Synthead BOSS DR-110 MIDI retrofit"
Date "2019-03-30"
Rev "1"
Comp "Synthead"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GNDREF #PWR02
U 1 1 5C9FFAA0
P 5400 4100
F 0 "#PWR02" H 5400 3850 50  0001 C CNN
F 1 "GNDREF" H 5405 3927 50  0000 C CNN
F 2 "" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4050 5200 4100
Wire Wire Line
	5200 4100 5300 4100
Wire Wire Line
	5300 4050 5300 4100
Connection ~ 5300 4100
Wire Wire Line
	5300 4100 5400 4100
Wire Wire Line
	5400 4050 5400 4100
Text GLabel 5350 1900 2    50   Input ~ 0
VCC
Wire Wire Line
	5350 1900 5300 1900
Wire Wire Line
	5300 1900 5300 1950
Connection ~ 5400 4100
Text GLabel 4850 2350 0    50   Input ~ 0
START
Text GLabel 4850 2450 0    50   Input ~ 0
STOP
$Comp
L Isolator:6N138 U1
U 1 1 5CA34638
P 3600 1650
F 0 "U1" H 3600 2117 50  0000 C CNN
F 1 "6N138" H 3600 2026 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 3890 1350 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 3890 1350 50  0001 C CNN
	1    3600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5CA3622B
P 4100 1600
F 0 "R10" H 4170 1646 50  0000 L CNN
F 1 "220" H 4170 1555 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4030 1600 50  0001 C CNN
F 3 "~" H 4100 1600 50  0001 C CNN
	1    4100 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5CA36F26
P 3100 1600
F 0 "D1" V 3054 1679 50  0000 L CNN
F 1 "D" V 3145 1679 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P5.08mm_Vertical_KathodeUp" H 3100 1600 50  0001 C CNN
F 3 "~" H 3100 1600 50  0001 C CNN
	1    3100 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 1450 3300 1450
Wire Wire Line
	3300 1450 3300 1550
Wire Wire Line
	3100 1750 3300 1750
Connection ~ 3100 1750
Wire Wire Line
	3900 1450 4100 1450
Text GLabel 4150 1400 2    50   Input ~ 0
VCC
Wire Wire Line
	4150 1400 4100 1400
Wire Wire Line
	4100 1400 4100 1450
Connection ~ 4100 1450
Wire Wire Line
	3900 1550 4000 1550
Wire Wire Line
	3900 1850 3900 2100
Wire Wire Line
	4100 1750 3900 1750
Connection ~ 4000 2100
$Comp
L power:GNDREF #PWR01
U 1 1 5CA51D2F
P 4000 2100
F 0 "#PWR01" H 4000 1850 50  0001 C CNN
F 1 "GNDREF" H 4005 1927 50  0000 C CNN
F 2 "" H 4000 2100 50  0001 C CNN
F 3 "" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2100 4000 2100
Wire Wire Line
	4000 1550 4000 1800
$Comp
L Device:R R9
U 1 1 5CA366A4
P 4000 1950
F 0 "R9" H 4070 1996 50  0000 L CNN
F 1 "4.7K" H 4070 1905 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3930 1950 50  0001 C CNN
F 3 "~" H 4000 1950 50  0001 C CNN
	1    4000 1950
	1    0    0    -1  
$EndComp
$Comp
L dr110-midi:ProMicro U2
U 1 1 5CA6A9F1
P 5150 2600
F 0 "U2" H 5744 2253 60  0000 L CNN
F 1 "ProMicro" H 5744 2147 60  0000 L CNN
F 2 "dr110-midi:ProMicro" H 5150 3300 60  0001 C CNN
F 3 "" H 5150 3300 60  0001 C CNN
	1    5150 2600
	1    0    0    -1  
$EndComp
Wire Notes Line
	4400 2350 2350 2350
Wire Notes Line
	4400 1100 4400 2350
Wire Wire Line
	4100 1750 4750 1750
Wire Wire Line
	4750 1750 4750 2250
Wire Wire Line
	4750 2250 4850 2250
Connection ~ 4100 1750
Text Notes 2350 2500 0    50   ~ 0
Clock switch
Text GLabel 5350 1800 2    50   Input ~ 0
+6VDC
Wire Wire Line
	5200 1800 5200 1950
Wire Wire Line
	5200 1800 5350 1800
Text GLabel 2900 3150 2    50   Input ~ 0
CLOCK_OUT
Wire Wire Line
	2900 3150 2850 3150
Connection ~ 2850 3050
Wire Wire Line
	2850 3150 2850 3050
Wire Wire Line
	2450 2550 4850 2550
Wire Notes Line
	2350 2500 2350 3250
Wire Wire Line
	2950 2650 2850 2650
Text Notes 2800 3050 2    50   ~ 0
Clock
Wire Wire Line
	2550 2850 2450 2850
$Comp
L Device:R R1
U 1 1 5CA94512
P 2450 2700
F 0 "R1" H 2380 2654 50  0000 R CNN
F 1 "2.2K" H 2380 2745 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2380 2700 50  0001 C CNN
F 3 "~" H 2450 2700 50  0001 C CNN
	1    2450 2700
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5CA9450C
P 2750 2850
F 0 "Q1" H 2941 2896 50  0000 L CNN
F 1 "BC547" H 2941 2805 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 2950 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2750 2850 50  0001 L CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
Text GLabel 2950 2650 2    50   Input ~ 0
CLOCK_IN
Wire Wire Line
	4850 3250 4750 3250
Wire Wire Line
	4750 3250 4750 6450
Wire Wire Line
	4850 3150 4650 3150
Wire Wire Line
	4650 3150 4650 5850
Wire Wire Line
	4850 3050 4550 3050
Wire Wire Line
	4550 3050 4550 5250
Wire Wire Line
	4850 2950 4450 2950
Wire Wire Line
	4450 2950 4450 4650
Wire Wire Line
	4350 2850 4350 4050
Wire Wire Line
	4350 2850 4850 2850
Wire Wire Line
	4850 2750 4250 2750
Wire Wire Line
	4250 2750 4250 3450
Text GLabel 2800 1750 0    50   Input ~ 0
MIDI_IN_5
Wire Wire Line
	2800 1750 3100 1750
$Comp
L Device:R R8
U 1 1 5CA39841
P 2950 1450
F 0 "R8" V 2743 1450 50  0000 C CNN
F 1 "220" V 2834 1450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2880 1450 50  0001 C CNN
F 3 "~" H 2950 1450 50  0001 C CNN
	1    2950 1450
	0    1    1    0   
$EndComp
Connection ~ 3100 1450
Text GLabel 2800 1450 0    50   Input ~ 0
MIDI_IN_4
Text GLabel 5400 5750 2    50   Input ~ 0
+6VDC
$Comp
L power:GNDREF #PWR03
U 1 1 5CB45F62
P 5400 5850
F 0 "#PWR03" H 5400 5600 50  0001 C CNN
F 1 "GNDREF" H 5405 5677 50  0000 C CNN
F 2 "" H 5400 5850 50  0001 C CNN
F 3 "" H 5400 5850 50  0001 C CNN
	1    5400 5850
	1    0    0    -1  
$EndComp
Text GLabel 5400 4750 2    50   Input ~ 0
CLOCK_IN
Text GLabel 5400 4850 2    50   Input ~ 0
CLOCK_OUT
Text GLabel 5400 4950 2    50   Input ~ 0
START
Text GLabel 5400 5050 2    50   Input ~ 0
STOP
Text GLabel 5400 5150 2    50   Input ~ 0
MATRIX_1
Text GLabel 5400 5250 2    50   Input ~ 0
MATRIX_2
Text GLabel 5400 5350 2    50   Input ~ 0
MATRIX_3
Text GLabel 5400 5450 2    50   Input ~ 0
MATRIX_4
Text GLabel 5400 5550 2    50   Input ~ 0
MATRIX_5
Text GLabel 5400 5650 2    50   Input ~ 0
MATRIX_6
Text GLabel 5400 6550 2    50   Input ~ 0
MIDI_IN_4
Text GLabel 5400 6650 2    50   Input ~ 0
MIDI_IN_5
Wire Notes Line
	5900 6100 4950 6100
Wire Notes Line
	4950 6100 4950 4500
Wire Notes Line
	4950 4500 5900 4500
Wire Notes Line
	5900 4500 5900 6100
Text Notes 4950 4500 0    50   ~ 0
DR-110 connections
Wire Notes Line
	2350 1100 4400 1100
Text Notes 2350 1100 0    50   ~ 0
MIDI in
Wire Notes Line
	2350 2350 2350 1100
Wire Wire Line
	3400 2650 4850 2650
Wire Wire Line
	2850 3050 3400 3050
Wire Wire Line
	3400 3050 3400 2650
Wire Notes Line
	3500 3250 2350 3250
Wire Notes Line
	2350 2500 3500 2500
Wire Notes Line
	3500 2500 3500 3250
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5CA91CE6
P 5200 6550
F 0 "J2" H 5308 6731 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5308 6640 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 5200 6550 50  0001 C CNN
F 3 "~" H 5200 6550 50  0001 C CNN
	1    5200 6550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Male J1
U 1 1 5CA94401
P 5200 5250
F 0 "J1" H 5308 5931 50  0000 C CNN
F 1 "Conn_01x12_Male" H 5308 5840 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x12_Pitch2.54mm" H 5200 5250 50  0001 C CNN
F 3 "~" H 5200 5250 50  0001 C CNN
	1    5200 5250
	1    0    0    -1  
$EndComp
Wire Notes Line
	5850 6750 4950 6750
Wire Notes Line
	4950 6750 4950 6300
Wire Notes Line
	4950 6300 5850 6300
Wire Notes Line
	5850 6300 5850 6750
Text Notes 4950 6300 0    50   ~ 0
MIDI in connections
Text GLabel 3500 5950 2    50   Input ~ 0
MATRIX_6
Text GLabel 3500 5750 2    50   Input ~ 0
MATRIX_5
Text GLabel 3500 5150 2    50   Input ~ 0
MATRIX_4
Text GLabel 3500 4550 2    50   Input ~ 0
MATRIX_3
Text GLabel 3500 3950 2    50   Input ~ 0
MATRIX_2
Text GLabel 3500 3550 2    50   Input ~ 0
MATRIX_1
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5CA63A41
P 2750 4350
F 0 "Q3" H 2941 4396 50  0000 L CNN
F 1 "BC547" H 2941 4305 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 2950 4275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2750 4350 50  0001 L CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CA63A4B
P 2450 4200
F 0 "R3" H 2380 4154 50  0000 R CNN
F 1 "2.2K" H 2380 4245 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2380 4200 50  0001 C CNN
F 3 "~" H 2450 4200 50  0001 C CNN
	1    2450 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 4350 2450 4350
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 5CA63A56
P 2750 4950
F 0 "Q4" H 2941 4996 50  0000 L CNN
F 1 "BC547" H 2941 4905 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 2950 4875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2750 4950 50  0001 L CNN
	1    2750 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5CA63A60
P 2450 4800
F 0 "R4" H 2380 4754 50  0000 R CNN
F 1 "2.2K" H 2380 4845 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2380 4800 50  0001 C CNN
F 3 "~" H 2450 4800 50  0001 C CNN
	1    2450 4800
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 5CA63A6A
P 2750 5550
F 0 "Q5" H 2941 5596 50  0000 L CNN
F 1 "BC547" H 2941 5505 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 2950 5475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2750 5550 50  0001 L CNN
	1    2750 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CA63A74
P 2450 5400
F 0 "R5" H 2380 5354 50  0000 R CNN
F 1 "2.2K" H 2380 5445 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2380 5400 50  0001 C CNN
F 3 "~" H 2450 5400 50  0001 C CNN
	1    2450 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 4950 2450 4950
Wire Wire Line
	2550 5550 2450 5550
$Comp
L Transistor_BJT:BC547 Q6
U 1 1 5CA63A80
P 2750 6150
F 0 "Q6" H 2941 6196 50  0000 L CNN
F 1 "BC547" H 2941 6105 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 2950 6075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2750 6150 50  0001 L CNN
	1    2750 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5CA63A8A
P 2450 6000
F 0 "R6" H 2380 5954 50  0000 R CNN
F 1 "2.2K" H 2380 6045 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2380 6000 50  0001 C CNN
F 3 "~" H 2450 6000 50  0001 C CNN
	1    2450 6000
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q7
U 1 1 5CA63A94
P 2750 6750
F 0 "Q7" H 2941 6796 50  0000 L CNN
F 1 "BC547" H 2941 6705 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 2950 6675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2750 6750 50  0001 L CNN
	1    2750 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5CA63A9E
P 2450 6600
F 0 "R7" H 2380 6554 50  0000 R CNN
F 1 "2.2K" H 2380 6645 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2380 6600 50  0001 C CNN
F 3 "~" H 2450 6600 50  0001 C CNN
	1    2450 6600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 6150 2450 6150
Wire Wire Line
	2550 6750 2450 6750
Text Notes 2800 4550 2    50   ~ 0
SD
Text Notes 2800 5150 2    50   ~ 0
OH
Text Notes 2800 5750 2    50   ~ 0
CH
Text Notes 2800 6350 2    50   ~ 0
CY
Text Notes 2800 6950 2    50   ~ 0
HCP
Wire Notes Line
	2350 7050 3950 7050
Wire Notes Line
	3950 7050 3950 3400
Wire Notes Line
	2350 3400 2350 7050
Text Notes 2350 3400 0    50   ~ 0
Key matrix interface
Wire Notes Line
	3950 3400 2350 3400
Text Notes 2800 3950 2    50   ~ 0
BD
Wire Wire Line
	2550 3750 2450 3750
$Comp
L Device:R R2
U 1 1 5CA63AB6
P 2450 3600
F 0 "R2" H 2380 3554 50  0000 R CNN
F 1 "2.2K" H 2380 3645 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2380 3600 50  0001 C CNN
F 3 "~" H 2450 3600 50  0001 C CNN
	1    2450 3600
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5CA63AC0
P 2750 3750
F 0 "Q2" H 2941 3796 50  0000 L CNN
F 1 "BC547" H 2941 3705 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 2950 3675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2750 3750 50  0001 L CNN
	1    2750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5950 3250 5950
Wire Wire Line
	3250 5950 3250 6550
Wire Wire Line
	3250 6550 2850 6550
Wire Wire Line
	2850 6350 3350 6350
Wire Wire Line
	3350 6350 3350 5150
Wire Wire Line
	3350 5150 2850 5150
Wire Wire Line
	2850 4150 3250 4150
Wire Wire Line
	3250 4150 3250 3550
Wire Wire Line
	3250 3550 2850 3550
Wire Wire Line
	3250 4150 3250 4750
Wire Wire Line
	3250 4750 2850 4750
Connection ~ 3250 4150
Wire Wire Line
	3250 4750 3250 5350
Wire Wire Line
	3250 5350 2850 5350
Connection ~ 3250 4750
Wire Wire Line
	2850 4550 3450 4550
Wire Wire Line
	3450 4550 3450 6950
Wire Wire Line
	3450 6950 2850 6950
Wire Wire Line
	3250 3550 3500 3550
Connection ~ 3250 3550
Wire Wire Line
	2850 3950 3500 3950
Wire Wire Line
	3450 4550 3500 4550
Connection ~ 3450 4550
Wire Wire Line
	3350 5150 3500 5150
Connection ~ 3350 5150
Wire Wire Line
	2850 5750 3500 5750
Wire Wire Line
	3250 5950 3500 5950
Connection ~ 3250 5950
Wire Wire Line
	2450 3450 4250 3450
Wire Wire Line
	2450 4050 4350 4050
Wire Wire Line
	2450 4650 4450 4650
Wire Wire Line
	2450 5250 4550 5250
Wire Wire Line
	2450 5850 4650 5850
Wire Wire Line
	2450 6450 4750 6450
$EndSCHEMATC
