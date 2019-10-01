class Traps {
  //decalre the properties 
  float xPos;
  float yPos;
  float size;
  boolean p1FellInTrap;
  boolean p2FellInTrap;
  PImage Bomb;
  PImage Bomb1;

  Traps() {
    xPos = random(100, 980);
    yPos = random(0, height);
    size = random(0, 60);
    p1FellInTrap = false;
    p2FellInTrap = false;
    //load the bombs and exoplosion images 
    Bomb=loadImage("bomb.png");
    Bomb1=loadImage("bomb1.png");
  }

  void display() {
    //display the explosion if character touches 
    if (p1FellInTrap || p2FellInTrap) {
      image(Bomb1, xPos, yPos, size, size);
    } else {
      // display the bombs
      image(Bomb, xPos, yPos, size, size);
    }
  }


  // check for contact between the characters and bomb
  void checkOverlap(float pointX, float pointY, int playerNumber) {

    boolean xOverlap = false;
    boolean yOverlap = false;

    if (abs(xPos - pointX) < size) {
      xOverlap = true;
    }

    if (abs(yPos - pointY) < size) {
      yOverlap = true;
    }

    if (xOverlap && yOverlap) {
      if (playerNumber == 1) {
        p1FellInTrap = true;
      } else if (playerNumber == 2) {
        p2FellInTrap = true;
      }
    } else {
      if (playerNumber == 1) {
        p1FellInTrap = false;
      } else if (playerNumber == 2) {
        p2FellInTrap = false;
      }
    }
  }
}
