class Traps {

  float xPos;
  float yPos;
  float size;
  boolean p1FellInTrap;
  boolean p2FellInTrap;

  Traps() {
    xPos = random(100, 980);
    yPos = random(0, height);
    size = random(0, 60);
    p1FellInTrap = false;
    p2FellInTrap = false;
  }

  void display() {

    pushStyle();

    if (p1FellInTrap || p2FellInTrap) {
      fill(255, 0, 0);
      
    } else {
      fill(100);
    }

    ellipse(xPos, yPos, size, size);
    popStyle();
    
  }
    
  

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
      }
      else if (playerNumber == 2) {
        p2FellInTrap = true;
      }
    } else {
      if (playerNumber == 1) {
        p1FellInTrap = false;  
      }
      else if (playerNumber == 2) {
        p2FellInTrap = false;
      }
    }
  }
}
