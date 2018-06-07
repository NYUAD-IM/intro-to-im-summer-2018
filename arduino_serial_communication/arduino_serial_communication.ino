void setup(){
  pinMode(A0, INPUT); //first, we set our pin as reading from an analog input
  Serial.begin(9600); //we need to start the serial port
}

void loop(){
  Serial.println(analogRead(A0)); //and we print to the serial port the value we get from our sensor
}
