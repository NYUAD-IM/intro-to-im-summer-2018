class Ball {

  float rad;
  PVector speed;
  PVector pos;
  
  PImage ant;

  //constructor -- essentially the same thing as setup()
  Ball(float rad) {
    this.rad = rad;
    this.speed = new PVector(random(-4, 4), random(-4, 4));
    this.pos = new PVector(200, 200);
    
    ant = loadImage("ant.png");
    ant.resize(100, 100);
  }

  void display() {
    fill(255);
    //ellipse(this.pos.x, this.pos.y, this.rad, this.rad);
    pushMatrix();
    translate(this.pos.x, this.pos.y);
    rotate(this.pos.heading()-PI/4);
    image(ant, 0, 0);
    popMatrix();
  }
  
  void bounce(){
    
    
    
    this.pos.x += this.speed.x;
    this.pos.y += this.speed.y;
    
    if(this.pos.x < 0 || this.pos.x > width){
     this.speed.x *= -1; 
    }
    
    if(this.pos.y < 0 || this.pos.y > height){
     this.speed.y *= -1; 
    }
  }
}
