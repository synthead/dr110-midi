#include "midi.h"
#include "dr110.h"
#include <Arduino.h>

namespace Midi {
  uint8_t channel = 0;
  bool listen_for_note = false;
  int8_t note = -1;
  uint8_t midi_data;
  uint8_t received_channel;

  void setup() {
    Serial1.begin(31250);
  }

  void process_messages() {
    while (Serial1.available() > 0) {
      midi_data = Serial1.read();

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

      if (note != -1) {
        if (midi_data > 0) {
          trigger_drum(note);
        }

        note = -1;
      } else if (listen_for_note) {
        note = midi_data;
        listen_for_note = false;
      } else if ((midi_data & 0b11110000) == MIDI_NOTE_ON) {
        received_channel = midi_data & 0b00001111;

        if (received_channel == channel) {
          listen_for_note = true;
        }
      }
    }
  }

  void trigger_drum(uint8_t note) {
    switch(note) {
      case MIDI_BD_NOTE:
        Dr110::bd();
        break;

      case MIDI_SD_NOTE:
        Dr110::sd();
        break;

      case MIDI_OH_NOTE:
        Dr110::oh();
        break;

      case MIDI_CH_NOTE:
        Dr110::ch();
        break;

      case MIDI_CY_NOTE:
        Dr110::cy();
        break;

      case MIDI_HCP_NOTE:
        Dr110::hcp();
        break;
    }
  }
}
