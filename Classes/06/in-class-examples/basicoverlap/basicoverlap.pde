float circleRadius = 100.0;
float xPos, yPos;

void setup() {
  size(1080,1080);
  
  xPos = random(0,width);
  yPos = random(0,height);
  
  rectMode(CENTER);
}

void draw() {
  
  background(0);
  
  if (dist(mouseX, mouseY, xPos, yPos) < circleRadius) {
    fill(255,0,255);
  }
  else {
    fill(255,255,255);
  }
  
  ellipse(xPos, yPos, circleRadius, circleRadius);
  
  
}
