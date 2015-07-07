# Attronic
A port of the mooftronic to the attiny13 and attiny85
- Original: http://makezine.com/projects/mooftronic-mini-synth/

This is a project I completed back in 2013. Since then a lot has changed and now I can't seem to find the source code.
The device does still work though, so I extracted the program memory's contents and dumped them into a .hex file.
I also tried to rewrite the source based on the program's disassembly. I tested it on an attiny85 and it seems to work on a breadboard, but I'm not sure if it's spot on.

The schematic is a bit diffrent for this device. Most notably, the antenna is gone.
The original used a feature of the PIC's ADC that can't easily be emulated by an AVR, so instead you can touch any of the pins opposite to the keyboard pins in order to randomize the sound.
As noted in the source code, the randomisation process is currently very basic and lends itself to experimentation.

### Fuses
- Attiny13/A version:
  - lfuse: 0x79
  - hfuse: 0xFF
- Attiny85/45/25 version:
  - lfuse: 0xE2
  - hfuse: 0xDF
  - efuse: 0xFF
