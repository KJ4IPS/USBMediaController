EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:ti_msp430
LIBS:valves
LIBS:switches
LIBS:passives
LIBS:USBMediaController-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Usb Media Controller"
Date "2016-06-13"
Rev ""
Comp "Aaron Haun"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 575EDCA1
P 2525 4600
F 0 "#PWR01" H 2525 4350 50  0001 C CNN
F 1 "GND" H 2525 4450 50  0000 C CNN
F 2 "" H 2525 4600 50  0000 C CNN
F 3 "" H 2525 4600 50  0000 C CNN
	1    2525 4600
	0    1    1    0   
$EndComp
$Comp
L USB_B J3
U 1 1 575EDDB2
P 4850 900
F 0 "J3" H 5050 700 50  0000 C CNN
F 1 "USB_B" H 4800 1100 50  0000 C CNN
F 2 "Connect:USB_B" V 4800 800 50  0001 C CNN
F 3 "" V 4800 800 50  0000 C CNN
	1    4850 900 
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 575EE166
P 4100 5950
F 0 "SW2" H 4250 6060 50  0000 C CNN
F 1 "Cherry MX1A-11NN" H 4100 5850 50  0000 C CNN
F 2 "Local:cherrymx_withpins" H 4100 5950 50  0001 C CNN
F 3 "" H 4100 5950 50  0000 C CNN
	1    4100 5950
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW3
U 1 1 575EE1A1
P 4900 5950
F 0 "SW3" H 5050 6060 50  0000 C CNN
F 1 "Cherry MX1A-11NN" H 4900 5870 50  0000 C CNN
F 2 "Local:cherrymx_withpins" H 4900 5950 50  0001 C CNN
F 3 "" H 4900 5950 50  0000 C CNN
	1    4900 5950
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW4
U 1 1 575EE1C0
P 5650 5950
F 0 "SW4" H 5800 6060 50  0000 C CNN
F 1 "Cherry MX1A-11NN" H 5650 5870 50  0000 C CNN
F 2 "Local:cherrymx_withpins" H 5650 5950 50  0001 C CNN
F 3 "" H 5650 5950 50  0000 C CNN
	1    5650 5950
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW5
U 1 1 575EE1EB
P 6400 5950
F 0 "SW5" H 6550 6060 50  0000 C CNN
F 1 "Cherry MX1A-11NN" H 6400 5870 50  0000 C CNN
F 2 "Local:cherrymx_withpins" H 6400 5950 50  0001 C CNN
F 3 "" H 6400 5950 50  0000 C CNN
	1    6400 5950
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW6
U 1 1 575EE20C
P 7100 5950
F 0 "SW6" H 7250 6060 50  0000 C CNN
F 1 "Cherry MX1A-11NN" H 7100 5870 50  0000 C CNN
F 2 "Local:cherrymx_withpins" H 7100 5950 50  0001 C CNN
F 3 "" H 7100 5950 50  0000 C CNN
	1    7100 5950
	1    0    0    -1  
$EndComp
$Comp
L R10307RN02Q SW7
U 1 1 575EF9AE
P 7050 4700
F 0 "SW7" H 6800 5050 50  0000 C CNN
F 1 "KC43A30.001NPS" H 7050 4351 50  0000 C CNN
F 2 "Local:KC43A30.001NPS" H 7050 4700 50  0001 C CNN
F 3 "" H 7050 4700 50  0000 C CNN
	1    7050 4700
	-1   0    0    -1  
$EndComp
Text Notes 6050 4200 0    60   ~ 0
Audio Output Selector
$Comp
L pulse_encoder_sw SW8
U 1 1 575F0064
P 7850 3000
F 0 "SW8" H 8400 3050 60  0000 C CNN
F 1 "PEC11L-4015F-S0020" H 8150 2350 60  0000 C CNN
F 2 "" H 8100 2600 60  0001 C CNN
F 3 "" H 8100 2600 60  0000 C CNN
	1    7850 3000
	-1   0    0    -1  
$EndComp
Text Notes 5950 6500 0    60   ~ 0
Using MCU's internal 35k pullup
$Comp
L us_resistor R4
U 1 1 575F180F
P 5200 6150
F 0 "R4" H 5100 6200 30  0000 C CNN
F 1 "10K" H 5250 6100 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5200 6150 60  0001 C CNN
F 3 "" H 5200 6150 60  0000 C CNN
	1    5200 6150
	0    1    1    0   
$EndComp
$Comp
L us_resistor R3
U 1 1 575F1C14
P 4400 6150
F 0 "R3" H 4300 6200 30  0000 C CNN
F 1 "10K" H 4450 6100 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4400 6150 60  0001 C CNN
F 3 "" H 4400 6150 60  0000 C CNN
	1    4400 6150
	0    1    1    0   
$EndComp
$Comp
L us_resistor R5
U 1 1 575F1C79
P 5950 6150
F 0 "R5" H 5850 6200 30  0000 C CNN
F 1 "10K" H 6000 6100 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5950 6150 60  0001 C CNN
F 3 "" H 5950 6150 60  0000 C CNN
	1    5950 6150
	0    1    1    0   
$EndComp
$Comp
L us_resistor R9
U 1 1 575F1CCE
P 6700 6150
F 0 "R9" H 6600 6200 30  0000 C CNN
F 1 "10K" H 6750 6100 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6700 6150 60  0001 C CNN
F 3 "" H 6700 6150 60  0000 C CNN
	1    6700 6150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 575F1FEE
P 4950 6300
F 0 "#PWR02" H 4950 6050 50  0001 C CNN
F 1 "GND" H 4950 6150 50  0000 C CNN
F 2 "" H 4950 6300 50  0000 C CNN
F 3 "" H 4950 6300 50  0000 C CNN
	1    4950 6300
	1    0    0    -1  
$EndComp
Text Notes 3650 6650 0    60   ~ 0
Transport Controls
Text Notes 4900 5400 0    60   ~ 0
Planning to use software debouncing on these switches.
$Comp
L us_resistor R8
U 1 1 575EF36E
P 6300 4450
F 0 "R8" H 6200 4500 30  0000 C CNN
F 1 "10K" H 6350 4400 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6300 4450 60  0001 C CNN
F 3 "" H 6300 4450 60  0000 C CNN
	1    6300 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 575EF3EE
P 6100 4450
F 0 "#PWR03" H 6100 4200 50  0001 C CNN
F 1 "GND" H 6100 4300 50  0000 C CNN
F 2 "" H 6100 4450 50  0000 C CNN
F 3 "" H 6100 4450 50  0000 C CNN
	1    6100 4450
	1    0    0    -1  
$EndComp
Text Notes 6000 5200 0    60   ~ 0
Using MCU's internal 35k pullup
Text Notes 6300 6900 0    60   ~ 0
All resistors are 5% 1/4 watt unless otherwise specified
Text Notes 4000 6200 0    60   ~ 0
PREV
Text Notes 4800 6200 0    60   ~ 0
PLAY
Text Notes 5500 6200 0    60   ~ 0
PAUSE
Text Notes 6300 6200 0    60   ~ 0
STOP
Text Notes 7000 6200 0    60   ~ 0
NEXT\n
$Comp
L +3.3V #PWR04
U 1 1 575F3BC2
P 4450 1100
F 0 "#PWR04" H 4450 950 50  0001 C CNN
F 1 "+3.3V" H 4450 1240 50  0000 C CNN
F 2 "" H 4450 1100 50  0000 C CNN
F 3 "" H 4450 1100 50  0000 C CNN
	1    4450 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 575F401B
P 4100 1150
F 0 "#PWR05" H 4100 900 50  0001 C CNN
F 1 "GND" H 4100 1000 50  0000 C CNN
F 2 "" H 4100 1150 50  0000 C CNN
F 3 "" H 4100 1150 50  0000 C CNN
	1    4100 1150
	0    1    1    0   
$EndComp
$Comp
L C_Small C7
U 1 1 575F4048
P 4250 1150
F 0 "C7" H 4260 1220 50  0000 L CNN
F 1 "??" H 4260 1070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4250 1150 50  0001 C CNN
F 3 "" H 4250 1150 50  0000 C CNN
	1    4250 1150
	0    -1   -1   0   
$EndComp
$Comp
L MSP430F5510 U1
U 1 1 575EDAB5
P 3200 1950
F 0 "U1" H 5550 2000 60  0000 C CNN
F 1 "MSP430F5510" H 3500 -400 60  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 3000 1350 60  0001 C CNN
F 3 "" H 3000 1350 60  0000 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 575F6538
P 5300 800
F 0 "#PWR06" H 5300 550 50  0001 C CNN
F 1 "GND" H 5300 650 50  0000 C CNN
F 2 "" H 5300 800 50  0000 C CNN
F 3 "" H 5300 800 50  0000 C CNN
	1    5300 800 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 575F657F
P 5050 1300
F 0 "#PWR07" H 5050 1050 50  0001 C CNN
F 1 "GND" H 5050 1150 50  0000 C CNN
F 2 "" H 5050 1300 50  0000 C CNN
F 3 "" H 5050 1300 50  0000 C CNN
	1    5050 1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 575F65C6
P 5100 1750
F 0 "#PWR08" H 5100 1500 50  0001 C CNN
F 1 "GND" H 5100 1600 50  0000 C CNN
F 2 "" H 5100 1750 50  0000 C CNN
F 3 "" H 5100 1750 50  0000 C CNN
	1    5100 1750
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 575F6EA8
P 2525 4300
F 0 "#PWR09" H 2525 4150 50  0001 C CNN
F 1 "+3.3V" H 2525 4440 50  0000 C CNN
F 2 "" H 2525 4300 50  0000 C CNN
F 3 "" H 2525 4300 50  0000 C CNN
	1    2525 4300
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C4
U 1 1 575F6F6E
P 2775 4450
F 0 "C4" H 2785 4520 50  0000 L CNN
F 1 "??" H 2785 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2775 4450 50  0001 C CNN
F 3 "" H 2775 4450 50  0000 C CNN
	1    2775 4450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 575F71DB
P 2575 3750
F 0 "#PWR010" H 2575 3600 50  0001 C CNN
F 1 "+3.3V" H 2575 3890 50  0000 C CNN
F 2 "" H 2575 3750 50  0000 C CNN
F 3 "" H 2575 3750 50  0000 C CNN
	1    2575 3750
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C2
U 1 1 575F7225
P 2725 3900
F 0 "C2" H 2735 3970 50  0000 L CNN
F 1 "??" H 2735 3820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2725 3900 50  0001 C CNN
F 3 "" H 2725 3900 50  0000 C CNN
	1    2725 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 575F73E5
P 2550 4050
F 0 "#PWR011" H 2550 3800 50  0001 C CNN
F 1 "GND" H 2550 3900 50  0000 C CNN
F 2 "" H 2550 4050 50  0000 C CNN
F 3 "" H 2550 4050 50  0000 C CNN
	1    2550 4050
	0    1    1    0   
$EndComp
$Comp
L C_Small C5
U 1 1 575F768E
P 3900 4600
F 0 "C5" H 3910 4670 50  0000 L CNN
F 1 "??" H 3910 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3900 4600 50  0001 C CNN
F 3 "" H 3900 4600 50  0000 C CNN
	1    3900 4600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 575F7707
P 3900 4750
F 0 "#PWR012" H 3900 4500 50  0001 C CNN
F 1 "GND" H 3900 4600 50  0000 C CNN
F 2 "" H 3900 4750 50  0000 C CNN
F 3 "" H 3900 4750 50  0000 C CNN
	1    3900 4750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 575F7D26
P 4250 1350
F 0 "C8" H 4260 1420 50  0000 L CNN
F 1 "??" H 4260 1270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4250 1350 50  0001 C CNN
F 3 "" H 4250 1350 50  0000 C CNN
	1    4250 1350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR013
U 1 1 575F7E84
P 4100 1350
F 0 "#PWR013" H 4100 1100 50  0001 C CNN
F 1 "GND" H 4100 1200 50  0000 C CNN
F 2 "" H 4100 1350 50  0000 C CNN
F 3 "" H 4100 1350 50  0000 C CNN
	1    4100 1350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 575F9B10
P 6800 3400
F 0 "#PWR014" H 6800 3150 50  0001 C CNN
F 1 "GND" H 6800 3250 50  0000 C CNN
F 2 "" H 6800 3400 50  0000 C CNN
F 3 "" H 6800 3400 50  0000 C CNN
	1    6800 3400
	1    0    0    -1  
$EndComp
Text Notes 7200 4000 0    60   ~ 0
Using MCU's internal 35k pullup
Text Notes 6750 2850 0    60   ~ 0
Volume Control
$Comp
L C_Small C9
U 1 1 575FC911
P 6100 3400
F 0 "C9" H 6110 3470 50  0000 L CNN
F 1 "??" H 6110 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6100 3400 50  0001 C CNN
F 3 "" H 6100 3400 50  0000 C CNN
	1    6100 3400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 575FCCD0
P 6250 3250
F 0 "#PWR015" H 6250 3100 50  0001 C CNN
F 1 "+3.3V" H 6250 3390 50  0000 C CNN
F 2 "" H 6250 3250 50  0000 C CNN
F 3 "" H 6250 3250 50  0000 C CNN
	1    6250 3250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 575FCD40
P 6250 3550
F 0 "#PWR016" H 6250 3300 50  0001 C CNN
F 1 "GND" H 6250 3400 50  0000 C CNN
F 2 "" H 6250 3550 50  0000 C CNN
F 3 "" H 6250 3550 50  0000 C CNN
	1    6250 3550
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C6
U 1 1 575FE153
P 4150 1550
F 0 "C6" H 4160 1620 50  0000 L CNN
F 1 "??" H 4160 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4150 1550 50  0001 C CNN
F 3 "" H 4150 1550 50  0000 C CNN
	1    4150 1550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR017
U 1 1 575FE328
P 4000 1550
F 0 "#PWR017" H 4000 1300 50  0001 C CNN
F 1 "GND" H 4000 1400 50  0000 C CNN
F 2 "" H 4000 1550 50  0000 C CNN
F 3 "" H 4000 1550 50  0000 C CNN
	1    4000 1550
	0    1    1    0   
$EndComp
Text Notes 2900 800  0    60   ~ 0
MCU Internal Regulator Output
$Comp
L C_Small C3
U 1 1 57602D55
P 2800 1850
F 0 "C3" H 2810 1920 50  0000 L CNN
F 1 "2 nF" H 2810 1770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2800 1850 50  0001 C CNN
F 3 "" H 2800 1850 50  0000 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 57602E41
P 2800 2000
F 0 "#PWR018" H 2800 1750 50  0001 C CNN
F 1 "GND" H 2800 1850 50  0000 C CNN
F 2 "" H 2800 2000 50  0000 C CNN
F 3 "" H 2800 2000 50  0000 C CNN
	1    2800 2000
	1    0    0    -1  
$EndComp
$Comp
L us_resistor R2
U 1 1 576034F2
P 3100 1550
F 0 "R2" H 3000 1600 30  0000 C CNN
F 1 "35K" H 3150 1500 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3100 1550 60  0001 C CNN
F 3 "" H 3100 1550 60  0000 C CNN
	1    3100 1550
	0    1    1    0   
$EndComp
$Comp
L us_resistor R1
U 1 1 5760357D
P 3100 1300
F 0 "R1" H 3000 1350 30  0000 C CNN
F 1 "10K" H 3150 1250 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3100 1300 60  0001 C CNN
F 3 "" H 3100 1300 60  0000 C CNN
	1    3100 1300
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 57603891
P 3100 1150
F 0 "#PWR019" H 3100 1000 50  0001 C CNN
F 1 "+3.3V" H 3100 1290 50  0000 C CNN
F 2 "" H 3100 1150 50  0000 C CNN
F 3 "" H 3100 1150 50  0000 C CNN
	1    3100 1150
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 57603D29
P 2200 1400
F 0 "SW1" H 2350 1510 50  0000 C CNN
F 1 "SKQGADE010" H 2200 1300 50  0000 C CNN
F 2 "Local:sw-SKQGADE010" H 2200 1400 50  0001 C CNN
F 3 "" H 2200 1400 50  0000 C CNN
	1    2200 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 57603FC2
P 1850 1400
F 0 "#PWR020" H 1850 1150 50  0001 C CNN
F 1 "GND" H 1850 1250 50  0000 C CNN
F 2 "" H 1850 1400 50  0000 C CNN
F 3 "" H 1850 1400 50  0000 C CNN
	1    1850 1400
	0    1    1    0   
$EndComp
$Comp
L CONN_02X07 J2
U 1 1 57604253
P 1500 2800
F 0 "J2" H 1500 3200 50  0000 C CNN
F 1 "JTAG" V 1500 2800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x07" H 1500 1600 50  0001 C CNN
F 3 "" H 1500 1600 50  0000 C CNN
	1    1500 2800
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 57605AB8
P 1850 2900
F 0 "#PWR021" H 1850 2650 50  0001 C CNN
F 1 "GND" H 1850 2750 50  0000 C CNN
F 2 "" H 1850 2900 50  0000 C CNN
F 3 "" H 1850 2900 50  0000 C CNN
	1    1850 2900
	0    -1   -1   0   
$EndComp
NoConn ~ 1750 3100
NoConn ~ 1250 3100
NoConn ~ 1250 3000
NoConn ~ 1250 2900
NoConn ~ 1250 2700
$Comp
L us_resistor R11
U 1 1 575F1D22
P 7400 6150
F 0 "R11" H 7300 6200 30  0000 C CNN
F 1 "10K" H 7450 6100 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7400 6150 60  0001 C CNN
F 3 "" H 7400 6150 60  0000 C CNN
	1    7400 6150
	0    1    1    0   
$EndComp
$Comp
L us_resistor R10
U 1 1 575F9906
P 6900 3250
F 0 "R10" H 6800 3300 30  0000 C CNN
F 1 "10K" H 6950 3200 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6900 3250 60  0001 C CNN
F 3 "" H 6900 3250 60  0000 C CNN
	1    6900 3250
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 J1
U 1 1 57609037
P 950 3400
F 0 "J1" H 950 3600 50  0000 C CNN
F 1 "CONN_01X03" V 1050 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 950 3400 50  0001 C CNN
F 3 "" H 950 3400 50  0000 C CNN
	1    950  3400
	-1   0    0    -1  
$EndComp
Text Notes 600  3550 0    60   ~ 0
TOOL\n\nTRGT
Text Notes 700  3850 0    60   ~ 0
(Jumper)
$Comp
L +3.3V #PWR022
U 1 1 57609E8D
P 1400 3350
F 0 "#PWR022" H 1400 3200 50  0001 C CNN
F 1 "+3.3V" H 1400 3490 50  0000 C CNN
F 2 "" H 1400 3350 50  0000 C CNN
F 3 "" H 1400 3350 50  0000 C CNN
	1    1400 3350
	1    0    0    -1  
$EndComp
Text Notes 600  3750 0    60   ~ 0
JTAG PWR SRC
$Comp
L us_resistor R12
U 1 1 5760BD8B
P 8550 3350
F 0 "R12" H 8450 3400 30  0000 C CNN
F 1 "35K" H 8600 3300 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8550 3350 60  0001 C CNN
F 3 "" H 8550 3350 60  0000 C CNN
	1    8550 3350
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR023
U 1 1 5760BFAC
P 8550 3225
F 0 "#PWR023" H 8550 3075 50  0001 C CNN
F 1 "+3.3V" H 8550 3365 50  0000 C CNN
F 2 "" H 8550 3225 50  0000 C CNN
F 3 "" H 8550 3225 50  0000 C CNN
	1    8550 3225
	1    0    0    -1  
$EndComp
Text Notes 8600 2650 0    60   ~ 0
This probably should have HW debounce
NoConn ~ 3000 2550
NoConn ~ 3000 2650
NoConn ~ 3000 2750
NoConn ~ 3000 2850
NoConn ~ 3000 2950
NoConn ~ 3000 3050
NoConn ~ 4100 1750
NoConn ~ 4200 1750
NoConn ~ 5800 2750
NoConn ~ 5800 2850
NoConn ~ 5800 2950
NoConn ~ 5800 3050
NoConn ~ 5800 3150
NoConn ~ 5800 3250
$Comp
L CP1_Small C1
U 1 1 5760E247
P 2575 4450
F 0 "C1" H 2585 4520 50  0000 L CNN
F 1 "C?" H 2585 4370 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.7" H 2575 4450 50  0001 C CNN
F 3 "" H 2575 4450 50  0000 C CNN
	1    2575 4450
	1    0    0    -1  
$EndComp
Text Notes 6300 7000 0    60   ~ 0
TODO: Spec transport control switches
Text Notes 6300 7100 0    60   ~ 0
TODO: Hardware Debounce on Pulse Encoder
$Comp
L us_resistor R6
U 1 1 5769664E
P 5025 1475
F 0 "R6" H 4925 1525 30  0000 C CNN
F 1 "1.5K" H 5075 1425 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5025 1475 60  0001 C CNN
F 3 "" H 5025 1475 60  0000 C CNN
	1    5025 1475
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1550 4700 1550
Wire Wire Line
	4700 1550 4700 1750
Wire Wire Line
	4850 1550 4900 1550
Wire Wire Line
	4900 1550 4900 1750
Wire Wire Line
	4600 1750 4600 1450
Wire Wire Line
	4600 1450 4650 1450
Wire Wire Line
	4400 6050 4400 5950
Wire Wire Line
	5200 6050 5200 5950
Wire Wire Line
	5950 6050 5950 5950
Wire Wire Line
	6700 6050 6700 5950
Wire Wire Line
	7400 6050 7400 5950
Wire Wire Line
	7400 6300 7400 6250
Wire Wire Line
	4400 6300 7400 6300
Wire Wire Line
	4400 6300 4400 6250
Wire Wire Line
	5200 6250 5200 6300
Connection ~ 5200 6300
Wire Wire Line
	5950 6250 5950 6300
Connection ~ 5950 6300
Wire Wire Line
	6700 6250 6700 6300
Connection ~ 6700 6300
Connection ~ 4950 6300
Wire Wire Line
	4000 5750 3800 5750
Wire Wire Line
	4000 4450 4000 5750
Wire Wire Line
	4100 4450 4100 5750
Wire Wire Line
	4100 5750 4600 5750
Wire Wire Line
	4200 5700 5350 5700
Wire Wire Line
	4200 4450 4200 5700
Wire Wire Line
	4300 5650 6100 5650
Wire Wire Line
	4300 4450 4300 5650
Wire Wire Line
	4400 5600 6800 5600
Wire Wire Line
	4400 4450 4400 5600
Wire Notes Line
	7500 5300 7500 6550
Wire Notes Line
	7500 6550 3650 6550
Wire Notes Line
	3650 6550 3650 5300
Wire Wire Line
	6800 5600 6800 5950
Wire Wire Line
	6100 5650 6100 5950
Wire Wire Line
	5350 5700 5350 5950
Wire Wire Line
	4600 5750 4600 5950
Wire Wire Line
	3800 5750 3800 5950
Wire Wire Line
	4500 4950 6450 4950
Wire Wire Line
	4500 4450 4500 4950
Wire Wire Line
	4600 4850 6450 4850
Wire Wire Line
	4600 4450 4600 4850
Wire Wire Line
	4700 4750 6450 4750
Wire Wire Line
	4700 4450 4700 4750
Wire Wire Line
	6100 4450 6200 4450
Wire Wire Line
	6450 4450 6400 4450
Wire Notes Line
	6000 4200 7500 4200
Wire Notes Line
	6000 4200 6000 5250
Wire Notes Line
	3650 5300 7500 5300
Wire Notes Line
	6000 5250 7500 5250
Wire Notes Line
	7500 5250 7500 4200
Wire Wire Line
	4650 1450 4650 1200
Wire Wire Line
	4750 1200 4750 1550
Wire Wire Line
	4850 1200 4850 1550
Wire Wire Line
	4450 1100 4450 1150
Connection ~ 4450 1150
Wire Wire Line
	5150 800  5300 800 
Wire Wire Line
	4950 1200 4950 1300
Wire Wire Line
	4950 1300 5050 1300
Wire Wire Line
	5100 1750 5000 1750
Wire Wire Line
	2525 4600 3000 4600
Wire Wire Line
	2525 4300 2975 4300
Wire Wire Line
	2775 4350 2775 4300
Connection ~ 2775 4300
Wire Wire Line
	2775 4550 2775 4600
Connection ~ 2775 4600
Wire Wire Line
	2575 3750 2925 3750
Wire Wire Line
	2725 3750 2725 3800
Connection ~ 2725 3750
Wire Wire Line
	2725 4000 2725 4050
Wire Wire Line
	2550 4050 2950 4050
Connection ~ 2725 4050
Wire Wire Line
	3900 4450 3900 4500
Wire Wire Line
	3900 4700 3900 4750
Wire Wire Line
	4350 1150 4500 1150
Wire Wire Line
	4150 1150 4100 1150
Wire Wire Line
	4100 1350 4150 1350
Wire Wire Line
	4400 1350 4400 1750
Wire Wire Line
	4800 4450 4800 4600
Wire Wire Line
	4800 4600 5800 4600
Wire Wire Line
	5800 4600 5800 4000
Wire Wire Line
	5800 4000 6950 4000
Wire Wire Line
	6950 4000 6950 3500
Wire Wire Line
	6900 3100 6950 3100
Wire Wire Line
	6900 3150 6900 3100
Wire Wire Line
	6900 3350 6900 3400
Wire Wire Line
	6900 3400 6800 3400
Wire Notes Line
	7000 3950 7050 3900
Wire Notes Line
	7050 3900 7050 4000
Wire Notes Line
	7050 4000 7000 3950
Wire Notes Line
	7000 3950 7200 3950
Wire Notes Line
	6700 3750 8300 3750
Wire Notes Line
	6700 3750 6700 2850
Wire Notes Line
	6700 2850 8300 2850
Wire Notes Line
	8300 2850 8300 3750
Wire Wire Line
	5800 3350 5950 3350
Wire Wire Line
	5950 3350 5950 3250
Wire Wire Line
	5950 3250 6250 3250
Wire Wire Line
	6100 3300 6100 3250
Connection ~ 6100 3250
Wire Wire Line
	5800 3450 5950 3450
Wire Wire Line
	5950 3450 5950 3550
Wire Wire Line
	5950 3550 6250 3550
Wire Wire Line
	6100 3500 6100 3550
Connection ~ 6100 3550
Wire Wire Line
	4400 1350 4350 1350
Wire Wire Line
	4300 1750 4300 1550
Wire Wire Line
	4300 1550 4250 1550
Wire Wire Line
	4050 1550 4000 1550
Wire Notes Line
	4300 800  4400 900 
Wire Notes Line
	4400 900  4350 900 
Wire Notes Line
	4350 900  4400 850 
Wire Notes Line
	4400 850  4400 900 
Wire Wire Line
	4500 1150 4500 1750
Wire Wire Line
	3900 1700 3900 1750
Wire Wire Line
	2800 1700 2800 1750
Wire Wire Line
	2800 1950 2800 2000
Wire Wire Line
	3100 1400 3100 1450
Wire Wire Line
	3100 1700 3100 1650
Connection ~ 3100 1700
Wire Wire Line
	3100 1150 3100 1200
Wire Wire Line
	2500 1400 2900 1400
Wire Wire Line
	2900 1400 2900 1700
Connection ~ 2900 1700
Wire Wire Line
	1850 1400 1900 1400
Connection ~ 2800 1700
Wire Wire Line
	4900 4450 4900 5050
Wire Wire Line
	4900 5050 2250 5050
Wire Wire Line
	2250 5050 2250 2500
Wire Wire Line
	2250 2500 1750 2500
Wire Wire Line
	5000 4450 5000 5100
Wire Wire Line
	5000 5100 2200 5100
Wire Wire Line
	2200 5100 2200 2600
Wire Wire Line
	2200 2600 1750 2600
Wire Wire Line
	5800 3650 5850 3650
Wire Wire Line
	5850 3650 5850 5150
Wire Wire Line
	5850 5150 2150 5150
Wire Wire Line
	2150 5150 2150 2700
Wire Wire Line
	2150 2700 1750 2700
Wire Wire Line
	5800 3550 5900 3550
Wire Wire Line
	5900 3550 5900 5200
Wire Wire Line
	5900 5200 2100 5200
Wire Wire Line
	2100 5200 2100 2800
Wire Wire Line
	2100 2800 1750 2800
Wire Wire Line
	1750 3000 2350 3000
Wire Wire Line
	2350 3000 2350 1700
Wire Wire Line
	2350 1700 3900 1700
Wire Wire Line
	1750 2900 1850 2900
Wire Wire Line
	4000 1750 3000 1750
Wire Wire Line
	3000 1750 3000 2300
Wire Wire Line
	3000 2300 900  2300
Wire Wire Line
	900  2300 900  2800
Wire Wire Line
	900  2800 1250 2800
Wire Wire Line
	1150 3300 1150 2500
Wire Wire Line
	1150 2500 1250 2500
Wire Wire Line
	1150 3500 1200 3500
Wire Wire Line
	1200 3500 1200 2600
Wire Wire Line
	1200 2600 1250 2600
Wire Wire Line
	1150 3400 1400 3400
Wire Wire Line
	1400 3400 1400 3350
Wire Wire Line
	5800 2650 8200 2650
Wire Wire Line
	8200 2650 8200 3100
Wire Wire Line
	8200 3100 8150 3100
Wire Wire Line
	5800 2550 8250 2550
Wire Wire Line
	8250 2550 8250 3200
Wire Wire Line
	8250 3200 8150 3200
Wire Wire Line
	8150 3500 8550 3500
Wire Wire Line
	8550 3500 8550 3450
Wire Notes Line
	8550 2600 8350 2600
Wire Notes Line
	8350 2600 8400 2550
Wire Notes Line
	8400 2550 8400 2650
Wire Notes Line
	8400 2650 8350 2600
Wire Wire Line
	2575 4350 2575 4300
Connection ~ 2575 4300
Wire Wire Line
	2575 4550 2575 4600
Connection ~ 2575 4600
Wire Wire Line
	5025 1675 4800 1675
Wire Wire Line
	4800 1675 4800 1750
Wire Wire Line
	5025 1575 5025 1675
$Comp
L +3.3V #PWR024
U 1 1 57696DE6
P 5975 1225
F 0 "#PWR024" H 5975 1075 50  0001 C CNN
F 1 "+3.3V" H 5975 1365 50  0000 C CNN
F 2 "" H 5975 1225 50  0000 C CNN
F 3 "" H 5975 1225 50  0000 C CNN
	1    5975 1225
	1    0    0    -1  
$EndComp
$Comp
L us_resistor R7
U 1 1 576973D1
P 5975 1300
F 0 "R7" H 5875 1350 30  0000 C CNN
F 1 "35K" H 6025 1250 39  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5975 1300 60  0001 C CNN
F 3 "" H 5975 1300 60  0000 C CNN
	1    5975 1300
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW9
U 1 1 57697ACF
P 5675 1625
F 0 "SW9" H 5825 1735 50  0000 C CNN
F 1 "SKQGADE010" H 5675 1525 50  0000 C CNN
F 2 "Local:sw-SKQGADE010" H 5675 1625 50  0001 C CNN
F 3 "" H 5675 1625 50  0000 C CNN
	1    5675 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5975 1400 5975 1625
Wire Wire Line
	5025 1625 5375 1625
Connection ~ 5025 1625
Wire Wire Line
	5025 1375 4850 1375
Connection ~ 4850 1375
Text Notes 2050 1625 0    60   ~ 0
RESET
Text Notes 5525 1525 0    60   ~ 0
BSL
Wire Wire Line
	3000 4600 3000 3650
Wire Wire Line
	3000 3550 2975 3550
Wire Wire Line
	2975 3550 2975 4300
Wire Wire Line
	3000 3450 2950 3450
Wire Wire Line
	2950 3450 2950 4050
Wire Wire Line
	3000 3150 2925 3150
Wire Wire Line
	2925 3150 2925 3750
Wire Wire Line
	3000 3350 2850 3350
Wire Wire Line
	2850 3250 3000 3250
$Comp
L Crystal_Small Y1
U 1 1 5769AC94
P 2600 3300
F 0 "Y1" H 2600 3400 50  0000 C CNN
F 1 "4mhz" H 2600 3450 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 2600 3300 50  0001 C CNN
F 3 "" H 2600 3300 50  0000 C CNN
	1    2600 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3150 2850 3250
Wire Wire Line
	2850 3350 2850 3450
Wire Wire Line
	2850 3450 2600 3450
$Comp
L C_Small C11
U 1 1 5769AF8C
P 2450 3475
F 0 "C11" H 2460 3545 50  0000 L CNN
F 1 "??" H 2460 3395 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2450 3475 50  0001 C CNN
F 3 "" H 2450 3475 50  0000 C CNN
	1    2450 3475
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C10
U 1 1 5769B01E
P 2450 3125
F 0 "C10" H 2460 3195 50  0000 L CNN
F 1 "??" H 2350 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2450 3125 50  0001 C CNN
F 3 "" H 2450 3125 50  0000 C CNN
	1    2450 3125
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3400 2600 3475
Wire Wire Line
	2600 3475 2550 3475
Wire Wire Line
	2600 3125 2600 3200
Wire Wire Line
	2600 3125 2550 3125
Connection ~ 2600 3150
Connection ~ 2600 3450
Wire Wire Line
	2850 3150 2600 3150
$Comp
L GND #PWR025
U 1 1 5769BF40
P 2350 3475
F 0 "#PWR025" H 2350 3225 50  0001 C CNN
F 1 "GND" H 2350 3325 50  0000 C CNN
F 2 "" H 2350 3475 50  0000 C CNN
F 3 "" H 2350 3475 50  0000 C CNN
	1    2350 3475
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5769BFBA
P 2350 3125
F 0 "#PWR026" H 2350 2875 50  0001 C CNN
F 1 "GND" H 2350 2975 50  0000 C CNN
F 2 "" H 2350 3125 50  0000 C CNN
F 3 "" H 2350 3125 50  0000 C CNN
	1    2350 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3225 8550 3250
$EndSCHEMATC
