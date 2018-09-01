## Pinout

This diagram shows how the [pins on the micro:bit][11] map to the
[pins on the Feather][12].  (Some of the Feather pins don't have
official names, so I [made up some names][13].)

```
             µbit  fthr                       fthr  µbit
                        +-------------------+
                        | O               O |
                        |                   |
10K pullup to 3V3  ~RST | o                 |
             3V3   3V3  | o                 |
             NC    AREF | o                 |
             GND   GND  | o                 |
             P0    A0   | o               o | VBAT  5V
             P1    A1   | o               o | EN    10K pullup to 3V3
             P2    A2   | o               o | VUSB  5V
   LEDCOL(1) P3    A3   | o               o | F6    P13 (SCLK)
   LEDCOL(2) P4    A4   | o               o | F5    P9  LEDCOL(7)
   LEDCOL(3) P10   A5   | o               o | F4    P15 (MOSI)
      (SCLK) P13   SCK  | o               o | F3    P11 BUTTON(B)
      (MOSI) P15   MOSI | o               o | F2    P5  BUTTON(A)
      (MISO) P14   MISO | o               o | F1    P8
   LEDCOL(9) P6    RX   | o               o | F0    P16
  LEDCOL(10) P7    TX   | o               o | SCL   P19 (SCL)
  accessblty P12   FREE | o               o | SDA   P20 (SDA)
                        |                   |
                        | O               O |
                        +-------------------+
```

## License

[CC-BY-SA 4.0][10].

Some library components are under different licenses:

* [microbit_edge_connector][1] symbol by [anthonykirby][3] and [4UCON_10156_90deg][2] footprint by [SukkoPera][4] ([MIT License][5]).
* 74AHCT125 symbol is a substantially modified version of the symbol from [a library][6] by [propane-and-electrons][7].
* Barrel_Jack_MountingPin symbol is from [the official KiCad 5 library][8] ([CC-BY-SA 4.0 with exception][9]).

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
[12]: https://learn.adafruit.com/adafruit-feather/feather-specification
[13]: http://funwithsoftware.org/posts/2018-08-31-feather-ascii-art-pinout.html
