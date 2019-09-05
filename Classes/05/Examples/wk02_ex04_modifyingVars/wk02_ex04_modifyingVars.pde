//wk02_ex04_modifyingVariables
//modifying variable values in the draw loop

//declare variables before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold

//these are all float type values which stands for floating point 
//number(a number with a decimal point)

float h=150;//variable for hue
float s=255;//variable for saturation
float b=255;//variable for brightness

float xpos=250;//variable for x-position
float ypos=250;//variable for y-position

float wide=20;//variable for width

void setup(){
  size(500,500);
  //colorMode is HSB(Hue, Saturation, Brightness)
  //values from 0-255 for each
  colorMode(HSB);
}

void draw(){
  //background is controlled by 
  background(h,s,b);
  fill(255,255,255);
  noStroke();
  ellipse(xpos, ypos, wide, wide);
  //increase value of 'wide' by 1 through each loop 
  wide=wide+1;
  //print value of wide
  print("wide=");
  println(wide);
  
}
