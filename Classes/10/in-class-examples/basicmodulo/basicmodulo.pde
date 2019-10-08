int timeUnit = 0;
int xPosition = 0;

void setup() {
  size(1080, 1080);
  //fullScreen();
  frameRate(60);
}

void draw() {
  background(30);

  timeUnit = millis();
  timeUnit = timeUnit % 1000;

  if (timeUnit < 10) {
    xPosition++;
  }


  background(255);
  println("timeUnit is: " + timeUnit);

  pushMatrix();
  translate(timeUnit, height/2);
  ellipse(0, 0, 100, 100);
  popMatrix();
  
  ellipse(100,100,50,50);
  
  
  
  
  
  
}
