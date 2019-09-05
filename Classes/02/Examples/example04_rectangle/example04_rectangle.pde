//example_04 drawing rectangles

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
  strokeWeight(1);
  //draw an rectangle
  //the rect is made up of 4 parameters:
  //x position(from the upper left corner), y position(from the upper left corner), width and height
  rect(500, 250, 75, 75);
  //set the fill color to none
  noFill();
  //change the rect drawing mode so the origin is the center
  rectMode(CENTER);
  //draw the new rectangle
  rect(500, 250, 75, 75);
  //reset the rect drawing mode back to the default(CORNER)
  //so that when it loops to the beginning of the 
  //draw loop the first recatngle is drawn in the 
  //same position 
  rectMode(CORNER);
}