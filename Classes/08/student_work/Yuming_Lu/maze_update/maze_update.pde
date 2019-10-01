Boolean upArrowIsHeld = false;
Boolean leftArrowIsHeld = false;
Boolean downArrowIsHeld = false;
Boolean rightArrowIsHeld = false;

float xPosition, yPosition;
float x=0;
float z=0;
float y=0;
float speedX=1;
float speedZ=1;
float movementSpeed = 5.0;

void setup() {
  size(1080,1080);  
  xPosition = 45;
  yPosition = 30;
}

//keyboard action
void draw() {
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
  move();
  bounce();
  display();
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


void move(){
  x = x+speedX;
  z = z+speedZ;
}

void bounce(){
  if (x <= 0 || x>= width) {
    speedX = speedX * -1;
}
  else if (z <= 0 || z>= height) {
    speedZ = speedZ * -1;
}
}

void display(){
  fill(random(255));
  noStroke();
  rect(x, y, x+10, y+100);
  rect(x, y+970, x+10, y+1070);
  rect(y,z,y+100,z+100);
  rect(y+980,z,y+1080,z+100);
}
