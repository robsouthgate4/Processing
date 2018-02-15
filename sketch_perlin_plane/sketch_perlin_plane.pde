Ball ball;

void setup() {
  ball = new Ball();
  background(255);
  size(800, 600, P3D);
}

void draw() {
  clear();
  ball.move();
  ball.bounce();
  ball.display();  
}