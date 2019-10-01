//Curtis Pak


PImage img;
boolean mousePressed = false;
boolean noTime = false;
int numberOfPresses;
int xPosition, yPosition;
int xSize, ySize;
int starting;
int duration = 5;
int time = 5;
int counter = 0;

void setup() {
  size(1080, 1080);
  starting = millis();
}

void draw() {
  background(255);
  text("Press the most times to get the high score", width/2-300, height/2);
  fill(0);
  text(numberOfPresses, width/2, height/2+30);
  text("Score:", width/2-100, height/2+30);
  text("Time Left:", width/2-158, height/2+60);
  fill(0);
  //xPosition = 0;
  //yPosition = 1030;
  //xSize = 50;
  //ySize = 50;
  //rect(xPosition, yPosition, xSize, ySize);
  //xSize = xSize + counter;
  if (time > 0){
    time = duration - (millis() - starting)/1000;
    text(time,width/2, height/2 + 60);
    textSize(30);
  }else if (time <= 0) {
    fill(0);
    rect(0,0,width, height);
    fill(255);
    text("GAME IS OVER, YOUR HIGH SCORE IS:" + numberOfPresses, width/2 - 250, height/2);
    
  }

}

void mousePressed(){
  if(mousePressed && time > 0);
    numberOfPresses++;
    counter ++;
}

     
  
 
