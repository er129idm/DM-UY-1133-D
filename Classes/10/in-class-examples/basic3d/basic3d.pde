void setup() {
  size(1080, 1080, P3D);
  //fullScreen(P3D);
}

void draw() {
  background(0);
  
  beginCamera();
  
  //lights();
  
  float lightX, lightY, lightZ;
  lightX = mouseX;
  lightY = mouseY;
  lightZ = 300;
  
  push();
  translate(lightX, lightY, lightZ);
  pointLight(255, 0, 200, 0, 0, 0);
  fill(255);
  sphere(10);
  pop();
  
  pointLight(0, 255, 0, width, height, 0);
  
  pushMatrix();
  translate(width/2, height/2);
  rotateX(frameCount*0.01);
  rotateY(frameCount*0.001);
  box(width/4);
  popMatrix();
  
  endCamera();
}
