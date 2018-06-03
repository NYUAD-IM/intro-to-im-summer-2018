void setup() {
  size(800, 800);
  background(0); //draw the background once so we get rid of the grey
}

void draw() {
  noStroke();
  fill(255, 255, 255, 10);
  
  //store the mouse positions so that we can calculate the distance
  //between them
  PVector mouse_pos = new PVector(mouseX, mouseY);
  PVector pmouse_pos = new PVector(pmouseX, pmouseY);
  
  stroke(255, 255, 255, 100);
  strokeWeight(3);
  float circle_size = mouse_pos.dist(pmouse_pos);
  
  //here we call our fucntion that we've defined below
  drawBrush(circle_size);
  

  if (mousePressed) { //if you are pressing the mouse
    background(0); //draw the background (essentially start from scratch)
  }
  
  //--------- FOR LOOPS
  
  //for a certain number of times
  //needs to know where to start
  //needs to know when to stop
  //how do we go from one to the other (increment)
  //--------- EXAMPLE
  //for(int i = 0; i < 100; i++){
  //  rect(100+i*10, 100+i*10, 100, 100);
  //}
}

//we define our function, and we specify that
//we're going to need a float to function properly
void drawBrush(float circle_size){
  
  for(int i = 0; i < 5; i++){ //for 5 iterations
  //each time
    pushMatrix();
    translate(mouseX, mouseY); //we translate
    rotate(i*10); //we rotate -by using i, we make sure the rotation is different for each curve
    bezier(20, 20, circle_size, circle_size, mouseX, mouseY, 100, 100); //draw the curve
    popMatrix(); //close the matrix
  }
}
