# neo:bit

The neo:bit is a board which attaches to the [edge connector][11] of
the [BBC micro:bit][16] and provides:

* Two slide potentiometers, connected to micro:bit pins P1 and P2,
  which can be read as analog inputs.

* A connector for connecting "NeoPixels" (WS-2812 LEDs), with a level
  shifter to convert from 3.3V logic to 5V logic.

* A barrel connector for an external 5V power supply, which is
  mandatory for powering the NeoPixels, and can also optionally
  backpower the micro:bit safely.

## Usage

To read the slide potentiometers, just configure P1 and P2 as analog
inputs, and read them.  The idea is that you could use these inputs to
control your NeoPixel animation, such as the speed, color, or
brightness.

To connect NeoPixels to the three-pin JST-PH connector, I recommend
using [SparkFun part number CAB-14165][17], which adapts the JST-PH
connector to a JST-SM connector.  Beware that this is
[not a straight-through cable][18]!  The pinout is as follows:

| Name | JST-PH | JST-SM |
| ---- | ------ | ------ |
| Data | 1      | 2      |
| GND  | 2      | 3      |
| +5V  | 3      | 1      |

The resulting pinout on the JST-SM side should be correct for
connecting [strings of Alitove 5V lights][19], or my
[chainable NeoPixel butterflies][20].  However, if you are using
another NeoPixel product that has a JST-SM connector, double-check the
pinout to make sure it is correct for the product you are using!  If
you are using a NeoPixel product which does not have a JST-SM
connector, you may find a product such as [this one][21] or
[this one][22] to be helpful, for connecting directly to the JST-PH
connector on the neo:bit board.

You must have an external 5V power supply (such as [this one][23] or
[this one][24]) connected to the neo:bit's barrel jack in order to
power the NeoPixels.  If the 5V power supply is connected, the neo:bit
will also supply 3.3V back to the micro:bit, so it is not necessary to
power the micro:bit from another source.  (However, this is done with
a protection diode, so it is OK to have the micro:bit connected to
another source at the same time the 5V supply is connected.)  If you
only want to use the potentiometers and not the NeoPixel output, then
you do not need to have a 5V supply connected, as long as the
micro:bit is powered by another source.

Following the [NeoPixel best practices][25], the neo:bit includes a
470 ohm resistor on the NeoPixel data line, and there is a 1000µF
capacitor on the +5V power line.

Once you have your NeoPixels hooked up, you should be able to access
them by instantiating a NeoPixel strip on pin P0 in either
[MakeCode][27] or [Python][28].

## Bill of Materials

| Ref      | Description                      | MPN                 | Digi-Key PN                 |
| -------- | -------------------------------- | ------------------- | --------------------------- |
| C1       | CAP ALUM 1000UF 20% 10V RADIAL   | 10WXA1000MEFCT810X9 | [1189-3703-1-ND][50]        |
| C2       | CAP CER 0.1UF 50V X7R RADIAL     | K104K10X7RF5UH5     | [BC2665CT-ND][51]           |
| C3, C4   | CAP CER 1UF 50V Y5V RADIAL       | K105Z20Y5VF5TH5     | [BC1168CT-ND][52]           |
| D1       | DIODE SCHOTTKY 40V 2A DO15       | SB240TA             | [1655-1519-1-ND][53]        |
| J2       | CONN PWR JACK 2X5.5MM SOLDER     | PJ-063AH            | [CP-063AH-ND][54]           |
| J4       | CONN HEADER PH SIDE 3POS 2MM     | S3B-PH-K-S(LF)(SN)  | [455-1720-ND][55]           |
| J5       | micro:bit through-hole right-angle edge connector | [3342][56] | (Adafruit)          |
| R2       | RES 470 OHM 1/4W 5% AXIAL        | CF14JT470R          | [CF14JT470RCT-ND][57]       |
| RV1, RV2 | SLIDE POT 10K OHM 0.25W TOP 45MM | PTA4553-2015CPB103  | [PTA4553-2015CPB103-ND][58] |
| U1       | IC BUF NON-INVERT 5.5V 14DIP     | SN74AHCT125N        | [296-4655-5-ND][59]         |
| U2       | IC REG LINEAR 3.3V 250MA TO92-3  | MCP1702-3302E/TO    | [MCP1702-3302E/TO-ND][60]   |
| (qty 2)  | KNOB SMOOTH 0.157 X 0.039" NYLON | 1300-E              | [1722-1329-ND][61]          |

Plus you'll need a micro:bit, a power supply, some NeoPixels, and the
CAB-14165 adapter mentioned above.

The right-angle micro:bit edge connector (J5) is 4UCON 10156, which is
available from [Adafruit][56] in the US and from [Cool Components][26]
in the UK.

## License

[CC-BY-SA 4.0][10].

Some library components are under different licenses:

* [microbit_edge_connector][1] symbol by [anthonykirby][3] and [4UCON_10156_90deg][2] footprint (which I have substantially modified) by [SukkoPera][4] ([MIT License][5]).
* 74AHCT125 symbol is a substantially modified version of the symbol from [a library][6] by [propane-and-electrons][7].
* Barrel_Jack_MountingPin symbol is from [the official KiCad 5 library][8], and R_POT_Mountingpin symbol is derived from a symbol in the official library ([CC-BY-SA 4.0 with exception][9]).

[1]: https://github.com/anthonykirby/kicad_microbit_connector/blob/master/lib_microbit_connector/lib_microbit_connector.lib
[2]: https://github.com/SukkoPera/OpenAmiga600RamExpansion/blob/master/OpenAmiga600RamExpansion.pretty/4UCON_10156_90deg.kicad_mod
[3]: https://github.com/anthonykirby
[4]: https://github.com/SukkoPera
[5]: https://github.com/anthonykirby/kicad_microbit_connector/blob/master/LICENSE
[6]: https://github.com/propane-and-electrons/kicad-libs/blob/master/shardy.lib
[7]: https://github.com/propane-and-electrons
[8]: https://github.com/KiCad/kicad-symbols/blob/master/Connector.lib
[9]: https://forum.kicad.info/t/kicad-library-licensing/7856
[10]: https://creativecommons.org/licenses/by-sa/4.0/legalcode
[11]: https://tech.microbit.org/hardware/edgeconnector_ds/
[16]: https://microbit.org/
[17]: https://www.sparkfun.com/products/14165
[18]: https://cdn.sparkfun.com/datasheets/Prototyping/ACCA-1495.pdf
[19]: https://smile.amazon.com/gp/product/B01AG923GI/
[20]: https://github.com/ppelleti/ButterflyChain
[21]: https://www.adafruit.com/product/3893
[22]: https://www.adafruit.com/product/3894
[23]: https://www.adafruit.com/product/1466
[24]: https://www.adafruit.com/product/658
[25]: https://learn.adafruit.com/adafruit-neopixel-uberguide/best-practices
[26]: https://coolcomponents.co.uk/products/edge-connector-for-bbc-micro-bit
[27]: https://makecode.microbit.org/pkg/microsoft/pxt-neopixel
[28]: https://microbit-micropython.readthedocs.io/en/latest/neopixel.html
[50]: https://www.digikey.com/products/en?keywords=1189-3703-1-ND
[51]: https://www.digikey.com/products/en?keywords=BC2665CT-ND
[52]: https://www.digikey.com/products/en?keywords=BC1168CT-ND
[53]: https://www.digikey.com/products/en?keywords=1655-1519-1-ND
[54]: https://www.digikey.com/products/en?keywords=CP-063AH-ND
[55]: https://www.digikey.com/products/en?keywords=455-1720-ND
[56]: https://www.adafruit.com/product/3342
[57]: https://www.digikey.com/products/en?keywords=CF14JT470RCT-ND
[58]: https://www.digikey.com/products/en?keywords=PTA4553-2015CPB103-ND
[59]: https://www.digikey.com/products/en?keywords=296-4655-5-ND
[60]: https://www.digikey.com/products/en?keywords=MCP1702-3302E%2FTO-ND
[61]: https://www.digikey.com/product-detail/en/davies-molding-llc/1300-E/1722-1329-ND/7908416
