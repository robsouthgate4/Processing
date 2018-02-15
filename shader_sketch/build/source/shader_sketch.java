import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class shader_sketch extends PApplet {

Sphere sphere;

public void setup() {

  background(00);
  
  sphere = new Sphere();
}


public void draw() {  
  
  sphere.display();
  
}
class Sphere {

  PVector location;
  float angle;
  PShader displace;

  Sphere(){

    location = new PVector(width / 2, height / 2);
    fill(0, 51, 102);
    specular(104, 102, 100);

    pointLight(255, 255, 255, width/2, height, 200);

    // Shader setup
    displace = loadShader("DisplaceFrag.glsl", "DisplaceVert.glsl");
    displace.set("fraction", 1.0f);
    displace.set("angle", angle);

  }

  public void display() {

    shader(displace);
    noStroke();
    lights();
    translate(location.x, location.y, 0);

    rotateY(angle);
    sphere(250);

    angle += 0.01f;

  }

}
  public void settings() {  size(1024, 900, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "shader_sketch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
