void setup(){
  size(800, 800);  
}

void draw(){
  background(255);
  
  //there are 3 kinds of matrix transformations
  //translate
  //rotate
  //scale
  
  pushMatrix(); //remember the new origin point
  translate(mouseX, mouseY); //move the point to where the mouse is
  rotate(PI/5); //rotate the whole world
 
  fill(255, 255, 100);
  rect(10, -500, 100, 100);
  
  popMatrix(); //forget everything
  
  //because this is outside of pushMatrix()/popMatrix()
  //then the rectangle is not actually affected
  //by the translation or the rotation
  fill(255, 100, 100);
  rect(100, 0, 100, 100);
} 
