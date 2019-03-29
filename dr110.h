#ifndef DR110_H
#define DR110_H

#define DR110_START_PIN 2
#define DR110_STOP_PIN 3
#define DR110_INT_CLOCK_PIN 4
#define DR110_CLOCK_PIN 5

#define DR110_BD_PIN 6
#define DR110_SD_PIN 7
#define DR110_OH_PIN 8
#define DR110_CH_PIN 9
#define DR110_CY_PIN 10
#define DR110_HCP_PIN 16

#define DR110_PULSE_DELAY 10

namespace Dr110 {
  void setup();
  void start();
  void stop();
  void pulse(int);
  void set_internal_clock(bool);
  void reset_clock();
  void iterate_clock();
  void set_clock_state();

  void bd();
  void sd();
  void oh();
  void ch();
  void cy();
  void hcp();
}

#endif
