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
LIBS:valves
LIBS:feather
LIBS:lib_microbit_connector
LIBS:MicroBitFeather-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Neopixel and FeatherWing adapter for Micro:Bit"
Date ""
Rev ""
Comp "Patrick Pelletier"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L microbit_edge_connector J?
U 1 1 5B875D43
P 7700 3300
F 0 "J?" H 7750 5350 50  0000 C CNN
F 1 "microbit_edge_connector" H 7750 5250 50  0000 C CNN
F 2 "" H 7600 3200 50  0001 C CNN
F 3 "" H 7600 3200 50  0001 C CNN
	1    7700 3300
	1    0    0    -1  
$EndComp
$Comp
L Feather_Long J?
U 1 1 5B875D68
P 2500 2100
F 0 "J?" H 2700 2350 60  0000 L CNN
F 1 "Feather_Long" H 2700 2250 60  0000 L CNN
F 2 "" H 2500 2100 60  0001 C CNN
F 3 "" H 2500 2100 60  0001 C CNN
	1    2500 2100
	1    0    0    -1  
$EndComp
$Comp
L Feather_Short J?
U 1 1 5B875D93
P 3500 2500
F 0 "J?" H 3700 2750 60  0000 L CNN
F 1 "Feather_Short" H 3700 2650 60  0000 L CNN
F 2 "" H 3500 2500 60  0001 C CNN
F 3 "" H 3500 2500 60  0001 C CNN
	1    3500 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
