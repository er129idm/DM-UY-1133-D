//example_05 drawing points

void setup(){
  //set the size of the canvas
  size(1000,1000);
  //set the colorMode
  colorMode(RGB);
}

void draw(){
  //set the background color
  background(0,0,0);  
  //set the fill color
  fill(234,213,12);
  //set the stroke color
  stroke(255,255,255);
  //set the stroke weight in pixels
  strokeWeight(5);
  //draw a series of points
  //parameters are X position and Y position
  point(250,250);
  point(750,500);
  point(750,750);
  //change the stroke color
  stroke(255,255,0);
  //change the stroke weight
  strokeWeight(50);
  //draw a new point
  point(500,500);
}
