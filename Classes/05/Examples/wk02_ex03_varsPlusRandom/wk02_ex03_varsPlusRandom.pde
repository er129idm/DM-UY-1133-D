//wk02_ex03_varsPlusRandom

//declare variables before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold

//these are all float type values which stands for floating point 
//number(a number with a decimal point)

float xpos=250;//variable for x-position
float ypos=250;//variable for y-position

float wide=20;//variable for width

void setup(){
  size(500,500);
  //colorMode is HSB(Hue, Saturation, Brightness)
  //values from 0-255 for each
  colorMode(HSB);
  background(100,255,200);
}

void draw(){
  //generating random float type number between 0 and width of sketch window
  xpos=random(width);
  //generating random float type number between 0 and height of sketch window  
  ypos=random(height);
  //generating random float type number between 5 and 30
  wide=random(5,30);
  noStroke();
  fill(0,255,255);
  ellipse(xpos, ypos, wide, wide);
}
