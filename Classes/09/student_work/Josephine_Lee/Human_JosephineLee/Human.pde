






class Human {
  color c ;
  float head;
  float eye;
  float mouth;
  float speed;
  float xPosition;
  float yPosition;
  Boolean upArrowIsHeld ;
  Boolean leftArrowIsHeld;
  Boolean downArrowIsHeld ;
  Boolean rightArrowIsHeld ;


  Human() {
    c = color(255);
    head = 200;
    eye = 10;
    mouth = 100;
    speed = 10;
    xPosition = width/2;
    yPosition = height/2;
    upArrowIsHeld = false;
    leftArrowIsHeld = false;
    downArrowIsHeld = false;
    rightArrowIsHeld = false;
  }

  void display() {
    fill(c);
    ellipse(xPosition, yPosition, head, head);

    fill(0);
    stroke(2);
    arc(xPosition, yPosition + 30, mouth, mouth, 0, PI);

    ellipse(xPosition-40, yPosition-30, eye, eye);
    ellipse(xPosition+40, yPosition-30, eye, eye);
  }


  void move() {  
    if (upArrowIsHeld) {
      if (yPosition > 0) {
        yPosition = yPosition - speed;
      }
    }

    if (leftArrowIsHeld) {
      if (xPosition > 0) {
        xPosition = xPosition - speed;
      }
    }

    if (downArrowIsHeld) {
      if (yPosition < height) {
        yPosition = yPosition + speed;
      }
    }

    if (rightArrowIsHeld) {
      if (xPosition < width) {
        xPosition = xPosition + speed;
      }
    }
  }
  void keyUsed() {
    
    upArrowIsHeld = false;
    leftArrowIsHeld = false;
    downArrowIsHeld = false;
    rightArrowIsHeld = false;
    if (keyPressed) {
      if (key == CODED) {

        /// Move Character UP
        if (keyCode == UP) {
          upArrowIsHeld = true;
          downArrowIsHeld = false;
          leftArrowIsHeld = false;
          rightArrowIsHeld = false;
        }

        /// Move Character LEFT
        if (keyCode == LEFT) {
          upArrowIsHeld = false;
          downArrowIsHeld = false;
          leftArrowIsHeld = true;
          rightArrowIsHeld = false;
        }

        /// Move Character DOWN
        if (keyCode == DOWN) {
          upArrowIsHeld = false;
          downArrowIsHeld = true;
          leftArrowIsHeld = false;
          rightArrowIsHeld = false;
        }

        /// Move Character RIGHT
        if (keyCode == RIGHT) {
          upArrowIsHeld = false;
          downArrowIsHeld = false;
          leftArrowIsHeld = false;
          rightArrowIsHeld = true;
        }
      }
    }
    
  }
}
