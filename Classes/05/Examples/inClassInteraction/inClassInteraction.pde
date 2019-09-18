boolean toggle = false;

void setup() {
  size(1080, 1080);
}

void draw() {
  background(0);
  
  float mappedColorA = map(mouseX, 0, 1080, 0, 255);
  float mappedColorB = map(mouseY, 0, 1080, 0, 255);
  fill(mappedColorA,0,mappedColorB);

  if (toggle == true) {
    ellipse(mouseX, mouseY, 100, 100);
  }
}

void keyPressed() {

  toggle = !toggle;
  println("MOUSE POSITION: " + mouseX + ", " + mouseY);
  
}
