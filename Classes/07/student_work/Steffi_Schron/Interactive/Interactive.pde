//define variables
boolean toggle = false;
boolean mouseClicked = false;
boolean keyTyped = false;
PImage img;

void setup() { 
  size(1080,1080);  
  img = loadImage("SquidwardPic.png");
}

//get underlayer to work
void draw() {
  background(0);
  
  fill(#3BC7BF);
  
  rect (mouseX, mouseY, 100, 100);
  
  float mappedColor = map(mouseX,0,1080,0,255);
  
  if (toggle == true) {
    for (int y = 0; y < 1080; y++) {
      float x = randomGaussian() * 23;
      line(x, y, 25 + x, 25 + y);
   
   image(img, 0,0);
   
      
      
}
  }

}
void keyPressed() {
  toggle = !toggle;  
}
void mouseClicked() {
  mouseClicked = !mouseClicked;
  if (mouseClicked == true) {
    ellipse(mouseX,mouseY,100,100);
  }
}

//hold down key to see something cool
void keyTyped() {
  keyTyped = !keyTyped;
  if (keyTyped == true) {
    for (int i = 0; i < 100; i++) {
      float mappedColorA = map(mouseX, 0, 1080, 0, 132);
      float mappedColorB = map(mouseY, 0, 32, 0, 255);
      fill(mappedColorA,0, mappedColorB);
      ellipse(random(0,width), random(0,height), 100, 100);
  }
}
}
