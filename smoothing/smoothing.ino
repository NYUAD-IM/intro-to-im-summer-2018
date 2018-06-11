//one is to have a delay

//an average of ten values over time
const int numValues = 10;
float values[numValues];
float totalValues = 0;
int currentIndex = 0;
float averageValue;

void setup(){
  pinMode(A0, INPUT); //first, we set our pin as reading from an analog input
  Serial.begin(9600); //we need to start the serial port
  for(int i = 0; i < numValues; i++){
    values[i] = 0;
  }
  
}

void loop(){
   //and we print to the serial port the value we get from our sensor  
  
  totalValues -= values[currentIndex];
  totalValues += analogRead(A0);
  
  values[currentIndex] = analogRead(A0); //we fill a slot in our values
  currentIndex += 1; //we move to the next slot
  
  if(currentIndex >= numValues){ // we make sure the next slot exists
   currentIndex = 0; //by wrapping around
  }
  
  averageValue = totalValues / numValues;
  
  Serial.println(averageValue);
  
  delay(3);
}
