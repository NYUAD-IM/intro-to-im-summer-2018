Ball[] allMyBalls;

void setup() {
  size(600, 600);

  allMyBalls = new Ball[300]; //first we need to say how many we want

  for (int i = 0; i < allMyBalls.length; i++) {
    allMyBalls[i] = new Ball(random(40, 50));
  }
}

void draw() {
  background(255);
  //here we call the function
  for (int i = 0; i < allMyBalls.length; i++) {
    allMyBalls[i].display();
    allMyBalls[i].bounce();
  }
}
