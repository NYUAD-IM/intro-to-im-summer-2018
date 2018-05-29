#include <Servo.h>

Servo myServoMotor;
int servoPin = 2;

void setup() {
  // put your setup code here, to run once:
  myServoMotor.attach(servoPin); //this is the equivalent of pinMode

  myServoMotor.write(90); //this is how we set the angle of the servo in degrees angles between 0 and 180
}

void loop() {
  // put your main code here, to run repeatedly:

  myServoMotor.write(0);

  delay(1000);

  myServoMotor.write(100);

  delay(1000);

}
