
class Treasure {
  //decalre the properties 
  PImage Treasure;
  PImage Win;
  float xPos;
  float yPos;
  float size;
  boolean p1foundTreasure;
  boolean p2foundTreasure;

  Treasure() {
    xPos = 1000;
    yPos = 500;
    size = 30;
    p1foundTreasure = false;
    p2foundTreasure = false;
    //load the treasure box and winning image 
    Treasure=loadImage("treasure.png");
    Win=loadImage("win.png");
  }

  void display() {
    // display the treasure 
    if (p1foundTreasure ||p2foundTreasure) {

      image(Win, 200, 200);
    } else {
      // display the winning sign if one of the characters won 
      image(Treasure, xPos, yPos, 50, 50);
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
        p1foundTreasure = true;
      } else if (playerNumber == 2) {
        p2foundTreasure = true;
      }
    } else {
      if (playerNumber == 1) {
        p2foundTreasure = false;
      } else if (playerNumber == 2) {
        p2foundTreasure = false;
      }
    }
  }
}
