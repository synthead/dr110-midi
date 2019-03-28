#include "dr110.h"
#include <Arduino.h>

namespace Dr110 {
  bool clock_state;

  void setup() {
    pinMode(DR110_START_PIN, OUTPUT);
    pinMode(DR110_STOP_PIN, OUTPUT);
    pinMode(DR110_INT_CLOCK_PIN, OUTPUT);

    set_internal_clock(true);
  }

  void start() {
    set_internal_clock(false);
    reset_clock();

    pulse(DR110_START_PIN);
  }
  
  void stop() {
    pulse(DR110_STOP_PIN);

    set_internal_clock(true);
  }
  
  void pulse(int pin) {
    digitalWrite(pin, HIGH);
    delay(DR110_PULSE_DELAY);

    digitalWrite(pin, LOW);
    delay(DR110_PULSE_DELAY);
  }

  void set_internal_clock(bool enable) {
    clock_state = true;

    bool clock_pin_mode = enable ? INPUT : OUTPUT;
    pinMode(DR110_CLOCK_PIN, clock_pin_mode);

    digitalWrite(DR110_INT_CLOCK_PIN, enable);
  }

  void reset_clock() {
    clock_state = true;
    set_clock_state();
  }

  void iterate_clock() {
    clock_state = !clock_state;
    set_clock_state();
  }

  void set_clock_state() {
    digitalWrite(DR110_CLOCK_PIN, clock_state);
  }
}
