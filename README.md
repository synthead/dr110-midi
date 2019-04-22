# Synthead BOSS DR-110 MIDI Retrofit

This is an open, Arduino-based project that adds MIDI to your BOSS DR-110!

![](https://user-images.githubusercontent.com/820984/56480262-26b3ab80-646e-11e9-9777-f2b82b080ad2.jpg)

## Features

This retrofit supports:

- **MIDI sync** via MIDI start, stop, continue, and beat clock messages to play patterns programmed on the DR-110's internal sequencer in time.
- **MIDI note on** messages to play individual drum sounds in an external sequencer.  The General MIDI note mapping is followed.

## How it works

### MIDI sync

The START and STOP buttons on the front panel are "pressed" to MIDI start and stop messages, and a clock is generated to keep the internal sequencer in time with MIDI beat clock messages.  There is also a transistor on the retrofit that restores the internal clock when MIDI sync is not being used.

### MIDI notes

The key matrix for the front panel was reverse-engineered, and this retrofit "presses" the buttons on incoming MIDI note on messages.  This means that it's also possible to program the DR-110's internal sequencer in tap write mode over MIDI using either the internal clock or while the sequencer is synchronized to MIDI sync messages.

## Building a board

The retrofit is built on a small, single-sided PCB using only generic, through-hole components.  This makes it more accessible for it to be built at home.  The copper and silkscreen renders can be found in the [`KiCad/rendered/`](https://github.com/synthead/dr110-midi/tree/master/KiCad/rendered/) directory.

The board needs to be built as low-profile as possible.  The transistors should have their legs bent at right angles, and the Arduino Pro Micro board should lay directly on the surface of the PCB, preferably with small pieces of solid wire connecting the PCBs together.

### Parts list

| Reference | Part number       |
|-----------|-------------------|
| Q1-7      | BC547             |
| R1-7      | 1-10K             |
| R8, 10    | 220               |
| R9        | 4.7K              |
| D1        | 1N4148            |
| U1        | 6N138             |
| U2        | Arduino Pro Micro |

When built, it'll produce a board like this:

![](https://user-images.githubusercontent.com/820984/56480603-ae4dea00-646f-11e9-9e30-c6c5533483d1.jpg)
![](https://user-images.githubusercontent.com/820984/56481152-72685400-6472-11e9-80aa-8a49555c6e73.jpg)

## Installation

Solder stranded wire to the connections of J1 and solder them onto the solder joints as pictured below.  While doing so, separate the fourth wire off of the ribbon cable between the CPU and voice board with a razor blade, remove it, and solder CI and CO to the through holes.

![](https://user-images.githubusercontent.com/820984/56482752-a9dafe80-647a-11e9-8b26-b39a917f7213.jpg)

Then, solder stranded wire to J2 and connect them to pins 4 and 5 of a female chassis mount DIN-5 connector for MIDI input.  It is also possible to mount a USB connection to the exterior of the DR-110 to provide updates to the retrofit without opening the unit (see the [Amphoenol MUSBB55104](https://www.arrow.com/en/products/musbb55104/amphenol) connector).

The DIN-5 and USB connectors fit neatly in the bottom-left corner of the DR-110 by the battery compartment.  The retrofit should be insulated, preferably with heatshrink.  It's a tight fit when installed and fits best with the position in the picture below.  Move it around slightly until it fits snug with the DR-110 components, then carefully close the machine.

![](https://user-images.githubusercontent.com/820984/56482975-d6dbe100-647b-11e9-833c-a8e892dff889.jpg)
