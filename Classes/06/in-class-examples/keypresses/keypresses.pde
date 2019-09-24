// Click on the window to give it focus,
// and press the 'B' key.

Boolean upArrowIsHeld = false;
Boolean leftArrowIsHeld = false;
Boolean downArrowIsHeld = false;
Boolean rightArrowIsHeld = false;

float xPosition, yPosition;

float movementSpeed = 5.0;

int state = 0;


void setup() {
  size(1080, 1080);

  xPosition = width/2;
  yPosition = height/2;

  rectMode(CENTER);

  background(0);

  noStroke();
}

void draw() {

  background(0);

  if (state == 0) {
    textSize(30);
    text("CLASS INSTA:  ccvisionidm   /   code2019", 100, height/2);
  }

  if (state == 1) {

    if (upArrowIsHeld) {
      if (yPosition > 0) {
        yPosition = yPosition - movementSpeed;
      }
    }

    if (leftArrowIsHeld) {
      if (xPosition > 0) {
        xPosition = xPosition - movementSpeed;
      }
    }

    if (downArrowIsHeld) {
      if (yPosition < height) {
        yPosition = yPosition + movementSpeed;
      }
    }

    if (rightArrowIsHeld) {
      if (xPosition < width) {
        xPosition = xPosition + movementSpeed;
      }
    }

    float mappedXColor = map(xPosition, 0, width, 0, 255);
    float mappedYColor = map(yPosition, 0, width, 0, 255);

    fill(0, mappedYColor, mappedXColor);

    for (int i = 0; i < 10; i++) {
      float squareSize = random(0, 10);
      rect(xPosition + random(-50, 50), yPosition + random(-50, 50), squareSize, squareSize);
    }

    rect(xPosition, yPosition, 50, 50);
  }
}

void keyPressed() {

  if (key == RETURN || key == ENTER) {
    println("ENTER PRESSED.");
    state = 1;
  }

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

void keyReleased() {

  //if (key == CODED) {
  //  /// Move Character UP
  //  if (keyCode == UP) {
  //    upArrowIsHeld = false;
  //  }

  //  /// Move Character LEFT
  //  if (keyCode == LEFT) {
  //    leftArrowIsHeld = false;
  //  }

  //  /// Move Character DOWN
  //  if (keyCode == DOWN) {
  //    downArrowIsHeld = false;
  //  }

  //  /// Move Character RIGHT
  //  if (keyCode == RIGHT) {
  //    rightArrowIsHeld = false;
  //  }
  //}
}
