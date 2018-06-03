void setup() {
  size(200, 200);
}

void draw() {
  //for function to work, we need to call them
  //the numbers we put inside the parentheses are called *arguments*
  //here, we're calling the function with 0 and 0
  //which are going to be used as x and y
  drawSunWithACloud(0, 0);

  //here we call it with different numbers
  //150 and 10
  drawSunWithACloud(150, 10);
}

//this is where we actually *define* our function
//and we specify what it does (draw a rect and an ellipse)
//and what it needs to actually work (two integers, one that we call x, and the other y)
void drawSunWithACloud(int x, int y) {
  
  //first we say that we are going to use matrix transformations
  pushMatrix();
  
  //then we actually translate the origin point
  //to whatever x and y are
  translate(x, y);
  
  //draw a circle-ish
  ellipse(20, 20, 40, 30);
  rect(20, 30, 40, 20);
  
  //and we don't forget to get rid of any transformations we've done
  popMatrix();
}
