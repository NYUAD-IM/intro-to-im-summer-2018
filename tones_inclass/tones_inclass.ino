//includes - add other files
#include "notes.h"

int melody[] = {NOTE_B4, NOTE_E4, NOTE_F4};

int tonePin = 12;
int noteDuration = 1000;

void setup() {
  // put your setup code here, to run once:

  pinMode(tonePin, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  tone(tonePin, melody[0], noteDuration);
  delay(noteDuration + 500);
  noTone(tonePin);

  tone(tonePin, melody[1], noteDuration);
  delay(noteDuration + 500);
  noTone(tonePin);

  tone(tonePin, melody[2], noteDuration);
  delay(noteDuration + 500);
  noTone(tonePin);
}
