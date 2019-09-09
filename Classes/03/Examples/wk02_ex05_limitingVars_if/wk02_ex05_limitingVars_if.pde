//wk02_ex05_limitingVariables
//using conditional statements
//if statements 

//declare variables before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold

//these are all float type values which stands for floating point 
//number(a number with a decimal point)

float h = 130; //variable for hue
float s = 20; //variable for saturation
float b = 255; //variable for brightness

float xPos = 250; //variable for x-position
float yPos = 250; //variable for y-position

float circleSize = 20; //variable for width

int increment = 2; //this is added to the width to change 

void setup() {
  size(500, 500);
  colorMode(HSB);
}

void draw() {
  // Paint background
  background(h, s, b);

  // Set style
  fill(180, 255, 200, 100);
  stroke(#FFFFFF);
  strokeWeight(4);
  
  // Draw geometry
  ellipse(xPos, yPos, circleSize, circleSize);
  
  //increase 'circleSize' by 'increment' through each loop 
  circleSize = circleSize + increment;  

  ////////////IF STATEMENT CHECKS VALUE OF VAR 'circleSize'////////
  //check the value of 'circleSize' to make sure it isn't less than 0
  //or greater than 255 
  //if the value of 'wide' is less than or equal to 0 OR
  //the value of 'wide' is greater than or equal to 500
  
  if (circleSize <= 0 || circleSize >= 500) {
    //if it is this bit of code will run and
    //switch the sign of the increment variable('+ to -' or '- to +')
    increment = increment * -1;
  }
}
