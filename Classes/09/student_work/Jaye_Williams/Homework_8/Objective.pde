//create class
class Objective {
  //create class variables
  float xPosition;
  float yPosition;
  float size;
  boolean found;

  //assign variable values  
  Objective() {
    xPosition = random(0, width);
    yPosition = random(0, height);
    size = 50;
    found = false;
  }
  
  //set up mouseClicked function
  void hasBeenClicked() {
  }

  //make a display function
  void display() {
    //background(0);
    //allow points to be seen only if found
    pushStyle();

    if (found) {
      fill(0, 255, 0);
    } else {
      fill(0, 0, 0);
    }
    //create square
    rect(xPosition, yPosition, size, size);

    popStyle();
  }

  //create found function
  void found(int pointX, int pointY) {//float pointX, float pointY) {
    //create booleans to traack if x and y points match
    boolean xCheck = false;
    boolean yCheck = false;

    //check if x and y match
    if (abs(xPosition - pointX) < size) {
      xCheck = true;
    } 
    if (abs(yPosition - pointY) < size) {
      yCheck = true;
    }
    if (xCheck && yCheck) {
      found = true; 
    }

    //if (xPosition == mouseX) {
    //  xCheck = true;
    //}
    //if (yPosition == mouseY) {
    //  yCheck = true;
    //}
    //if (xCheck && yCheck) {
    //  found = true;
    //}
  }
}
