#include "midi.h"
#include "dr110.h"
#include <Arduino.h>

namespace Midi {
  void setup() {
    Serial1.begin(31250);
  }

  void process_messages() {
    while (Serial1.available() > 0) {
      uint8_t midi_data = Serial1.read();

      switch (midi_data) {
        case MIDI_START:
        case MIDI_CONTINUE:
          Dr110::start();
          break;

        case MIDI_STOP:
          Dr110::stop();
          break;

        case MIDI_CLOCK:
          Dr110::iterate_clock();
          break;
      }
    }
  }
}
