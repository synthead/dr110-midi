#ifndef DR110_H
#define DR110_H

#define DR110_START_PIN 2
#define DR110_STOP_PIN 3
#define DR110_INT_CLOCK_PIN 4
#define DR110_CLOCK_PIN 5

#define DR110_PULSE_DELAY 5

namespace Dr110 {
  void setup();
  void start();
  void stop();
  void pulse(int);
  void set_int_clock(bool);
  void reset_clock();
  void iterate_clock();
  void set_clock_state();
}

#endif
