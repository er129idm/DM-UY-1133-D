PImage img;

void setup() {
  size(1080,1080);
  // Images must be in the "data" directory to load correctly
  img = loadImage("kittenTransparent.png");
  
}

void draw() {
  background(255,0,255);
  
  float mappedScale = map(mouseX, 0, width, 0, 5);
  
  pushMatrix();
  scale(mappedScale);
  image(img, mouseX, mouseY);
  popMatrix();
  
  ellipse(width/2, height/2, 100, 100);
  
}
