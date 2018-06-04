PShape myShape;

void setup(){
 size(600, 600);
 background(255);
 
 myShape = createShape();
 
 myShape.beginShape();
 myShape.vertex(10, 10);
 myShape.vertex(20, 24);
 myShape.vertex(30, 22);
 myShape.vertex(2, 20);
 myShape.endShape();
}

void draw(){
  background(255);
  shape(myShape);
  
  translate(20, 20);
  myShape.scale(1.001);
  shape(myShape);
}
