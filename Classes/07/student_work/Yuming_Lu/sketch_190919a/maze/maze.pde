Boolean upArrowIsHeld = false;
Boolean leftArrowIsHeld = false;
Boolean downArrowIsHeld = false;
Boolean rightArrowIsHeld = false;

float xPosition, yPosition;
PImage img;
float movementSpeed = 5.0;

void setup() {
  size(1080,1080);
  img = loadImage("maze.png");
  xPosition = 45;
  yPosition = 30;
  
}

//keyboard action
void draw() {
  image(img, 0, 0, 1080, 1080);
    if (upArrowIsHeld) {
    yPosition = yPosition - movementSpeed;
  }
  if (leftArrowIsHeld) {
    xPosition = xPosition - movementSpeed;
  }
  if (downArrowIsHeld) {
    yPosition = yPosition + movementSpeed;
  }
  if (rightArrowIsHeld) {
    xPosition = xPosition + movementSpeed;
  }
  //original photo
  noStroke();
  fill(random(0, 255));
  circle(xPosition,yPosition,30);
}

void keyPressed() {

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

//record the photo
void mouseReleased() {
  save("mazeRecord.png");
}
