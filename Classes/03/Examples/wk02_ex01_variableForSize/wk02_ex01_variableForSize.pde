//wk02_ex01_variablesInUse

//declare the variable before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold
//this variable is an int type value which stands for integer(a whole number)

int wide=40;//variable for width is assigned a value of 40

void setup(){
  size(500,500);
  //colorMode is HSB(Hue, Saturation, Brightness)
  //values from 0-255 for each
  colorMode(HSB);
}

void draw(){
  background(100,255,200);
  noStroke();
  fill(150,255,255);
  //the size of the circle is definied by the value
  //assigned to the variable
  ellipse(250, 250, wide, wide);
}
