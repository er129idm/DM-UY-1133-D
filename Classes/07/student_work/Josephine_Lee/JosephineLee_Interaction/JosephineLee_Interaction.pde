
PImage img;

void setup() {
  size (1080, 1080);
  img = loadImage("gudatama.png");



  rectMode(CENTER);
  imageMode(CENTER);

  background(0);
}

void draw() {

  float mappedXColor = map(mouseX, 0, width, 255, 0);
  float mappedYColor = map(mouseY, 0, height, 255, 0);

  fill(0, mappedYColor, mappedXColor);

  if (keyPressed) {
    if (key == 'q' || key == 'Q') {
      for (int i = 0; i < 10; i++) {
        float circleSize = random(0, 10);
        ellipse(mouseX + random(-50, 50), mouseY + random(-50, 50), circleSize, circleSize);
      }
      rect (mouseX, mouseY, 50, 50);
    }
  }
  if (keyPressed) {
    if (key == 'w' || key == 'W') {

      for (int i = 0; i < 10; i++) {
        float squareSize = random(0, 10);
        rect(mouseX + random(-50, 50), mouseY + random(-50, 50), squareSize, squareSize); 
      }
      ellipse(mouseX, mouseY, 50, 50);
    }
  }
  if (keyPressed) {
    if (key == 'e'|| key == 'E') {
      scale(1);
      image(img, mouseX, mouseY);
    }
  }
  if (keyPressed) {
    if (key == 'r' || key == 'R'){
      background(0);
    }
  }
}
