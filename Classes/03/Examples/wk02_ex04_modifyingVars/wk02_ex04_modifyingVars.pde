//wk02_ex04_modifyingVariables
//modifying variable values in the draw loop

//declare variables before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold

//these are all float type values which stands for floating point 
//number(a number with a decimal point)

float h = 10;//variable for hue
float s = 40;//variable for saturation
float b = 200;//variable for brightness

float xPos = 250;//variable for x-position
float yPos = 250;//variable for y-position

float dotWidth = 20;//variable for width

void setup() {
  size(500, 500);
  colorMode(HSB);
}

void draw() {
  // Paint background
  background(h, s, b);
  
  // Set style
  fill(#FF0072);
  noStroke();
  
  // Draw geometry
  ellipse(xPos, yPos, dotWidth, dotWidth);
  
  //increase value of 'wide' by 1 through each loop 
  dotWidth=dotWidth+1;
  
  //print value to console
  println("Ellipse size is: " + dotWidth);
}
