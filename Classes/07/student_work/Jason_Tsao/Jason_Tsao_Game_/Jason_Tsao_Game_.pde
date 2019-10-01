// Jason's Interactive Game 
boolean wHeld = false, aHeld = false, dHeld = false, sHeld = false;
boolean iHeld = false, jHeld = false, lHeld = false, kHeld = false;
Players player1;
Players player2;

void setup() {
  size(1080, 1080);
  ellipseMode(CENTER);
  rectMode(CENTER);
  player1 = new Players(10, 80, 0, true);
  player2 = new Players(300, 300, 150, false);
}

void draw() {
  
  background(0);
  
  player1.drawMe();
  player2.drawMe();

  // the controls for player1  
  if (wHeld) {
    player1.playerYPosition = player1.playerYPosition - 3.0;
  }
  if (aHeld) {
    player1.playerXPosition = player1.playerXPosition - 3.0;
  }
  if (sHeld) {
    player1.playerYPosition = player1.playerYPosition + 3.0;
  }
  if (dHeld) {
    player1.playerXPosition = player1.playerXPosition + 3.0;
  }

  //the controls for player 2

  if (iHeld) {
    player2.playerYPosition = player2.playerYPosition - 3.0;
  }
  if (jHeld) {
    player2.playerXPosition = player2.playerXPosition - 3.0;
  }
  if (lHeld) {
    player2.playerYPosition = player2.playerYPosition + 3.0;
  }
  if (kHeld) {
    player2.playerXPosition = player2.playerXPosition + 3.0;
  }
}


//decalring class

class Players {
  
  /// Players PROPERTIES
  float playerXPosition;
  float playerYPosition;
  float playerHue;
  boolean isSquare;
  
  /// 
  Players(float startX, float startY, float startHue, boolean startShape) {
    playerXPosition = startX;
    playerYPosition = startY;
    playerHue = startHue;
    isSquare = startShape;
  }
  
  void drawMe() {
    pushStyle();
    colorMode(HSB);
    fill(playerHue, 255, 255);
    if (isSquare) {
      rect(playerXPosition, playerYPosition, 50, 50);
    }
    else {
      ellipse(playerXPosition, playerYPosition, 50, 50);
    }
    popStyle();
  }
  
  
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

    iHeld = true;
  }
  if (key== 'j') {

    jHeld = true;
  }
  if (key== 'l') {

    lHeld = true;
  }
  if (key== 'k') {

    kHeld = true;
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
    iHeld =false;
  }
  if (key== 'j') {
    jHeld =false;
  }
  if (key== 'l') {
    lHeld =false;
  }
  if (key== 'k') {
    kHeld =false;
  }
}
