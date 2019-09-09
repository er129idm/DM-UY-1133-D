//wk02_ex02_variablesExtended

//declare variables before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold
//these are all int type values which stands for integer(a whole number)

int h=255;//variable for hue
int s=255;//variable for saturation
int b=255;//variable for brightness

int xPos=250;//variable for x-position
int yPos=250;//variable for y-position

int wide=20;//variable for width

void setup() {
  size(500, 500);
  //colorMode is HSB(Hue, Saturation, Brightness)
  //values from 0-255 for each
  colorMode(HSB);
}

void draw() {
  //color hue is 100, full saturation, 80% brightness
  background(100, 255, 200);
  noStroke();
  //variables h,s, and b hold values 255,255 and 255
  fill(h, s, b);
  //variables xpos, ypos and wide hold values 250, 250 and 20
  ellipse(xPos, yPos, wide, wide);
}
