//example02_pseudocode+program

//when program runs it runs through the setup once
//set basic parameters
void setup() {
  //set size of screen in pixels
  //parameters in width and height
  size(1000, 1000);
  //set colorMode(can be RGB, HSB, or HEX)
  colorMode(RGB);
}

//the program continously loops the draw section of the code
//create drawloop
void draw() {
  //set background color(RGB values in parenthesis)
  background(165, 265, 64);
  //set the fill color to white(when using one value for
  //color it reads as greyscale 0-255)
  fill(255);
  //set the stroke to black(when using one value for
  //color it reads as greyscale 0-255)
  stroke(0);
  //set the strokeweight to 2 pixels
  strokeWeight(2);
  //draw a circle 100 pixels in diameter
  //values are x position, y position, width, height)
  //ellipses are positioned from their center by defaualt
  ellipse(500, 500, 100, 100);
}
