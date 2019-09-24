//setting up images that will be used throughout the sketch
PImage a;
PImage b;
PImage background;
PImage back2;

Boolean upArrowIsHeld = false;
Boolean leftArrowIsHeld = false;
Boolean downArrowIsHeld = false;
Boolean rightArrowIsHeld = false;
Boolean way2gogh = false;

//positions & speed that the ear will move with each key press
float xPosition, yPosition;
float movement = 15;

//set cafe as background with ear & van gogh in the corners as foreground
void setup() {
  size(1080, 1080);
  background = loadImage("cafeterrace.png");
  back2 = loadImage("way2gogh.png");
  a = loadImage("van_gogh.png");
  b = loadImage("ear.png");
  //position of ear in upper left corner
  xPosition = -120;
  yPosition = -120;
}

//commands for directions of each key press
void draw() {
  background(background);
  image(a, 0, 0);

  if (way2gogh) {
    background = loadImage("cafeterrace.png");
  } else {
    background = loadImage("way2gogh.png");

    if (upArrowIsHeld) {
      yPosition = yPosition - movement;
    }

    if (leftArrowIsHeld) {
      xPosition = xPosition - movement;
    }
    if (downArrowIsHeld) {
      yPosition = yPosition + movement;
    }
    if (rightArrowIsHeld) {
      xPosition = xPosition + movement;
    }

    float mappedXColor = map(xPosition, 0, width, 0, 255);
    float mappedYColor = map(yPosition, 0, width, 0, 255);

    fill(0, mappedYColor, mappedXColor);

    image(b, xPosition, yPosition, 500, 500);
    //save as PNG file
    save("diagonal.png");
  }
}

//change background to "way2gogh" when ENTER is pressed
void keyPressed() {
  if (key == ENTER) {
    background(back2);
  }

  if (key == CODED) {
    /// Move Character UP
  }
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
void keyReleased() {
}
