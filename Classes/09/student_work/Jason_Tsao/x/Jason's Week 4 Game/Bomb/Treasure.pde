class Treasure {

  float xPos;
  float yPos;
  float size;
  boolean foundTreasure;

  Treasure() {
    xPos = 1050;
    yPos = 540;
    size = 30;
    foundTreasure = false;
  }

  void display() {

    pushStyle();

      if (foundTreasure) {
      fill(255,0,0);
      
    } else {
      fill(255);
    }
   

    ellipse(xPos, yPos, size, size);
    popStyle();
  }

  void checkOverlap(float pointX, float pointY) {

    boolean xOverlap = false;
    boolean yOverlap = false;

    if (abs(xPos - pointX) < size) {
      xOverlap = true;
    }

    if (abs(yPos - pointY) < size) {
      yOverlap = true;
    }

    if (xOverlap && yOverlap) {
      foundTreasure = true;
    } else {
      foundTreasure = false;
    }
    
  }
}
