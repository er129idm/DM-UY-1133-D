//wk02_ex03_varsPlusRandom

//declare variables before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold

//these are all float type values which stands for floating point 
//number(a number with a decimal point)

float xPos = 250;//variable for x-position
float yPos = 250;//variable for y-position

float dotWidth = 20;//variable for width

void setup() {
  size(500, 500);
  
  //colorMode is HSB(Hue, Saturation, Brightness)
  //values from 0-255 for each
  colorMode(HSB);
  background(35, 255, 240);
}

void draw() {
  
  //generating random float type number between 0 and width of sketch window
  xPos = random(width);
  
  //generating random float type number between 0 and height of sketch window  
  yPos = random(height);
  
  //generating random float type number between 5 and 30
  dotWidth = random(10, 25);
  
  noStroke();
  fill(40, 255, 0);
  ellipse(xPos, yPos, dotWidth, dotWidth);
  
}
