String myGreeting; //a simple string
String[] myPoem; //an array of strings that will store our loaded file

void setup() {
  size(600, 800);
  textSize(32);
  myGreeting = "Bonjour!"; //we initialize our string by giving it a value

  myPoem = loadStrings("poem.txt"); //we load the strings (located in our data/ folder)
  println("the number of lines is: "+myPoem.length); //we print out how many lines we have
}

void draw() {
  background(255);
  fill(0);
  for (int i = 0; i < myPoem.length; i++) {//for loop for each line
    String[] myWords = splitTokens(myPoem[i], " "); //once we're on the line, we split it into words

    pushMatrix();
    translate(0, 30+i*32);//we translate on the Y axis to a new line

    for (int j = 0; j < myWords.length; j++) { //for loop for each word

      translate((myWords[j].length())*18, 0); //we translate on the X axis to the word position

      if (myWords[j].length() > 4) {//if the word has more than 4 letters
        fill(0);
        text(myWords[j], 0, 0); //we draw it on the screen
      }
    }
    popMatrix();//we don't forget to finish our matrix transformations
    
    //finally, we can also draw our complete poem
    fill(0, 100);
    //text(myPoem[i], 10, 30+i*32);
  }
}
