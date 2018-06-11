import processing.video.*;

Capture cam;

color trackedCol = color(255, 0, 0);
int colX;
int colY;
int threshold = 100;

void setup(){
  size(640, 480);
  
  cam = new Capture(this, 640, 480, 30);
  cam.start();
}

void draw(){
  if(cam.available()){
    cam.read();
  }
  
  cam.loadPixels();
  
  for(int y=0; y<height; y++){
   for(int x=0; x < width; x++){
     int loc = (cam.width-x-1)+(y*width);
     color c = cam.pixels[loc];
     if(dist(red(trackedCol), green(trackedCol), blue(trackedCol), red(c), green(c), blue(c)) < threshold){
       colX = x;
       colY = y;
     }
   }
  }
  
  cam.updatePixels();
  
  pushMatrix();
  translate(width, 0);
  scale(-1, 1);
  image(cam, 0, 0);
  popMatrix();
  
  ellipse(colX, colY, 10, 10);
}
