boolean hasDrawn = false;

PVector[] myPos;

void setup() {
  myPos = new PVector[20];
  for (int i  = 0; i < myPos.length; i++) {
    myPos[i] = new PVector(random(0, 100), random(0, 100));
  }
}

void draw() {
  background(255);
  if (mousePressed && hasDrawn == false) {
    hasDrawn = true;
    for (int i  = 0; i < myPos.length; i++) {
      myPos[i] = new PVector(random(0, 100), random(0, 100));
      
      //have a new vector
      //check whether the distance between that vector and the origin is < sth
      //if it is, add it to the array
      //otherwise, pick a new vector
    }
  }

  for (int i = 0; i < 20; i++) {
    ellipse(myPos[i].x, myPos[i].y, 2, 2);
  }
}

void  mouseReleased() {
  hasDrawn =  false;
}
