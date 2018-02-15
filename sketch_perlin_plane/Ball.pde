class Ball {

  PVector location;
  PVector velocity;
  
  Ball(){
    location = new PVector(width/2, height/2);
    velocity = new PVector(2.5, -2);
  }
  
  void move() {
    location.add(velocity); 
  }
  
  void bounce() {
    if (( location.x > width ) || ( location.x < 0 )) {
      velocity.x *= -1;
    }
    if (( location.y > height ) || ( location.y < 0 )) {
      velocity.y *= -1;
    }
  }
  
  void display(){
    //stroke(0);
    //strokeWeight(2);
    //fill(127);
    //ellipse(location.x, location.y, 48, 48);
    
    noStroke();
    lights();
    translate(location.x, location.y, 1.0);
    sphere(50);
  } 
  
}