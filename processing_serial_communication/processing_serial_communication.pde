import processing.serial.*; //first, we include the serial library (Sketch > Import Library... > Serial)

Serial myPort; //we need to declare a serial port, which we will use for communication with our Arduino
String val; //this is going to store the value we get from our Arduino

void setup() {
  size(600, 600);

  //here we print all the Serial ports available on our computer
  //in the console, we should find the Serial port that is equivalent
  //to the one selected in our Arduino sketch (Arduino IDE > Tools > Serial Port)
  println(Serial.list());

  //after reading the output from the line above,
  //we've figured out that our port is the first one, so number 0
  int myPortNumber = 0;  
  
  //we get the exact name of the port by getting it from the array of serial ports
  String portname = Serial.list()[myPortNumber];
  
  //finally! we open our serial port by giving it the name above, and the baud rate
  myPort = new Serial(this, portname, 9600);
}

void draw() {
  background(255);
  
  //first, we need to check if there is something to read!
  if (myPort.available() > 0) {
    
    //then we read whatever is coming in from the Serial connection
    //until we reach a particular character
    val = myPort.readStringUntil('\n');  // here, we read until we hit a new line (\n means newline)
  }

  
  String myCleanedValue = val.trim(); //trim removes any whitespace
  float myNumber = float(myCleanedValue); //int() forces our value to become a number
  
  float myPosition = map(myNumber, 0, 1023, 0, width); //we map the number we got from one range to another
  
  fill(0);
  ellipse(myPosition, 300, 100, 100);
}
