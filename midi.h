#ifndef MIDI_H
#define MIDI_H

#define MIDI_START 0xFA
#define MIDI_CONTINUE 0xFB
#define MIDI_STOP 0xFC
#define MIDI_CLOCK 0xF8
#define MIDI_NOTE_ON 0x90

#define MIDI_BD_NOTE 35
#define MIDI_SD_NOTE 38
#define MIDI_OH_NOTE 46
#define MIDI_CH_NOTE 42
#define MIDI_CY_NOTE 49
#define MIDI_HCP_NOTE 39

#include <Arduino.h>

namespace Midi {
  void setup();
  void process_messages();
  void trigger_drum(uint8_t);
}

#endif
