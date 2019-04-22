#include "dr110.h"
#include "midi.h"

void setup() {
  Dr110::setup();
  Midi::setup();
}

void loop() {
  Midi::process_messages();
  Dr110::iterate_triggers();
}
