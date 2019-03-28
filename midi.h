#ifndef MIDI_H
#define MIDI_H

#define MIDI_START 0xFA
#define MIDI_CONTINUE 0xFB
#define MIDI_STOP 0xFC
#define MIDI_CLOCK 0xF8

namespace Midi {
  void setup();
  void process_messages();
}

#endif
