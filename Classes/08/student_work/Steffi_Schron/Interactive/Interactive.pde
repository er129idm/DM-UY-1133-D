//define variables
boolean toggle = false;
boolean mouseClicked = false;
boolean keyTyped = false;
boolean colorRect=true;
int colorNum=192;
PImage img;
float hue = 0;
float hueIncr = 1;

void setup() { 
  background(0);
  size(1080, 1080);  
  colorMode(HSB);
}

//get underlayer to work
void draw() {

  img=loadImage("Squidward.png");
  image(img, mouseX, mouseY);
  hue = hue + hueIncr;
  stroke(hue, 255, 255);
  strokeWeight(2);


  fill(colorNum);

  rect (mouseX, mouseY, 100, 100);

  float mappedColor = map(mouseX, 0, 1080, 0, 255);

  if (toggle == true) {
    for (int y = 0; y < 1080; y++) {
      float x = randomGaussian() * 23;
      line(x, y, 25 + x, 25 + y);
      
  if (hue <= 0 || hue >= 255) {
    hueIncr = hueIncr * -1;
  }
    }
  }
}
void chkFill() {
  if (colorRect==true) {
    colorNum=132;
  } else {
    colorNum=215;
  }
}

void keyPressed() {
  toggle = !toggle;
}
void mouseClicked() {
  mouseClicked = !mouseClicked;
  if (mouseClicked == true) {
    ellipse(mouseX, mouseY, 100, 100);
  }
}

//hold down key to see something cool
void keyTyped() {
  keyTyped = !keyTyped;
  if (keyTyped == true) {
    for (int i = 0; i < 100; i++) {
      float mappedColorA = map(mouseX, 0, 1080, 0, 132);
      float mappedColorB = map(mouseY, 0, 32, 0, 255);
      fill(mappedColorA, 0, mappedColorB);
      ellipse(random(0, width), random(0, height), 100, 100);
    }
  }
}
