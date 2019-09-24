//wk07_ex06_ClassesInTab
//Places Classes into thier own tab to simplify code

//A global variable named my Ball is created of a datatype Ball
//notice it begins with an uppercase
Ball myBall; 

void setup() {
  size(500, 500);
  //initialize ball object with variable name and assign it to the constructor
  //do this in setup
  myBall = new Ball();
}

void draw() {
  background(0);
  //name the instance var and then call a function from the class
  myBall.move(); 
  myBall.display();
}
