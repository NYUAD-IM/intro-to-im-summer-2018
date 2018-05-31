//first we need to declare vectors (a type of data that will hold 2 numbers, x and y)
PVector myPosition;
PVector speed;

//colors are a type of data that hold three numbers (r, g, b)
color backgroundColor;
color fillColor;
color strokeColor;

void setup() { //runs once
//the size function says how big we want our window to be
  size(1000, 600); 

  //the three numbers inside background are the RGB representation of a color
  //R = red (0 is no red, 255 is maximum red)
  //Green
  //Blue
  backgroundColor = color(255, 255, 255);
  background(backgroundColor);

  fillColor = color(150, 150, 200);
  strokeColor = color(247, 181, 47);

  //a vector represents a position or a motion
  //a vector is a convenient way to hold several numbers together
  myPosition = new PVector(width/2, height/2);
  speed = new PVector(random(-5, 5), random(-5, 5));

}


void draw() { //runs every frame
//we redraw the background at every frame to create an animation effect
  background(backgroundColor);

  fill(fillColor); //this fills the circle with the given color
  stroke(strokeColor); //this colors the border to the circle
  strokeWeight(10); //this controls the thickness of the border

  ellipse(myPosition.x, myPosition.y, 200, 200); //parameter or arguments
  myPosition.x += speed.x;
  myPosition.y += speed.y;


  //BOUNCING BALL

  //this if statement check if we're about to bounce
  //100 is half the diameter, which is the radius
  if (myPosition.x + 100 > width || myPosition.x - 100 < 0) { 
    //here we invert the speed to make the ball bounce
    speed.x *= -1;

    //these two lines below pick a color at random for the stroke and the fill
    fillColor = color(random(50, 100), random(50, 100), random(100, 255));
    strokeColor = color(random(200, 250), random(100, 250), random(30, 180));
  }

  if (myPosition.y + 100 > height || myPosition.y - 100 < 0) {
    speed.y *= -1;

    //same thing here
    fillColor = color(random(50, 100), random(50, 100), random(100, 255));
    strokeColor = color(random(200, 250), random(100, 250), random(30, 180));
  }
}


//everything we write inside this is what we want to happen
//when we press the mouse
void mousePressed() {
  
  //we want to pick a color with random red, random green, and random blue
  backgroundColor = color(random(0, 50), random(150, 256), random(0, 150));
}
