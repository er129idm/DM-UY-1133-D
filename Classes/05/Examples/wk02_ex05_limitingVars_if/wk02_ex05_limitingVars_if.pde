//wk02_ex05_limitingVariables
//using conditional statements
//if statements 

//declare variables before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold

//these are all float type values which stands for floating point 
//number(a number with a decimal point)

float h=0;//variable for hue
float s=255;//variable for saturation
float b=255;//variable for brightness

float xpos=250;//variable for x-position
float ypos=250;//variable for y-position

float wide=20;//variable for width

int increment=2;//this is added to the width to change 

void setup(){
  size(500,500);
  //colorMode is HSB(Hue, Saturation, Brightness)
  //values from 0-255 for each
  colorMode(HSB);
}

void draw(){
  /////////////DRAW BACKGROUND///////////////////////////////
  //background is controlled by variables
  background(h,s,b);

  ////////////DRAW ELLIPSE////////////////////////////////////  
  //fill color of ellipse including alpha value(4th parameter)
  fill(255,255,255,100);
  //noStroke();
  ellipse(xpos, ypos, wide, wide);
  //increase 'wide' by 'increment' through each loop 
  wide=wide+increment;  
  
  ////////////IF STATEMENT CHACKS VALUE OF VAR 'wide'////////
  //check the value of 'wide' to make sure it isn't less than 0
  //or greater than 255 
  //if the value of 'wide' is less than or equal to 0 OR
  //the value of 'wide' is greater than or equal to 500
  if(wide <= 0 ||  wide >= 500){
    //if it is this bit of code will run and
    //switch the sign of the increment variable('+ to -' or '- to +')
    increment=increment*-1;
    }
  
  
}
