//wk02_ex00_variables
//a circle in the middle of the sketch window with 
//all values hard coded

void setup(){
  size(500,500);
  //colorMode is HSB(Hue, Saturation, Brightness)
  //values from 0-255 for each
  colorMode(HSB);
}

void draw(){
  //color hue is 100, full saturation, 80% brightness
  background(100,255,200);
  noStroke();
  fill(0,255,255);
  ellipse(250,250,40,40);
}
