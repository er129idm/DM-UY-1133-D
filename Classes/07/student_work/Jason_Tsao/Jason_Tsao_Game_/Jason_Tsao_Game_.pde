// Jason's Interactive Game 

float xPosition, yPosition;
boolean wHeld = false, aHeld = false, dHeld = false, sHeld = false;
boolean iHeld = false, jHeld = false, lHeld = false, kHeld = false;
Players player1;
Players player2;

void setup() {
  size(1080, 1080);
  ellipseMode(CENTER);
  rectMode(CENTER);
  xPosition = width/2;
  yPosition = height/2;
  player1 = new Players(ellipse(xPosition, yPosition, 30, 30));
  player2 = new Players(rect(xPosition, yPosition, 30, 30));
}

void draw() {

 

  
 // the controls for player1  
  if (wHeld) {
    yPosition = yPosition -3.0;
  }
  if (aHeld) {
    xPosition = xPosition -3.0;
  }
  if (sHeld) {
    yPosition = yPosition +3.0;
  }
  if (dHeld) {
    xPosition = xPosition +3.0;
  }
  
//the controls for player 2

  if (iHeld) {
    yPosition = yPosition -3.0;
  }
  if (jHeld) {
    xPosition = xPosition -3.0;
  }
  if (lHeld) {
    yPosition = yPosition +3.0;
  }
  if (kHeld) {
    xPosition = xPosition +3.0;
  }
}
 

//decalring class

class Players{
  xPosition = width/2;
  yPosition = height/2;
}
 

void keyPressed() {
  if (key== 'w') {

    wHeld = true;
  }
  if (key== 'a') {

    aHeld = true;
  }
  if (key== 'd') {

    dHeld = true;
  }
  if (key== 's') {

    sHeld = true;
  }
  if (key== 'i') {

    wHeld = true;
  }
  if (key== 'j') {

    aHeld = true;
  }
  if (key== 'l') {

    dHeld = true;
  }
  if (key== 'k') {

    sHeld = true;
  }
}

void keyReleased() {
  if (key== 'w') {
    wHeld =false;
  }
  if (key== 'a') {
    aHeld =false;
  }
  if (key== 'd') {
    dHeld =false;
  }
  if (key== 's') {
    sHeld =false;
  }
    if (key== 'i') {
    wHeld =false;
  }
  if (key== 'j') {
    aHeld =false;
  }
  if (key== 'l') {
    dHeld =false;
  }
  if (key== 'k') {
    sHeld =false;
  }
}
