class Sphere {

  PVector location;
  float angle;
  PShader displace;

  Sphere(){
    angle = 0.0;
    location = new PVector(width / 2, height / 2);
    fill(0, 51, 102);
    specular(104, 102, 100);

    pointLight(255, 255, 255, width/2, height, 200);

    // Shader setup
    displace = loadShader("DisplaceFrag.glsl", "DisplaceVert.glsl");
    displace.set("fraction", 1.0);


  }

  void display() {

    angle += 0.1;
    displace.set("angle", angle);

    shader(displace);
    noStroke();
    lights();
    translate(location.x, location.y, 0);

    rotateY(angle);
    sphere(250);



  }

}
