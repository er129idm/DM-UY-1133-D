//joey pasko pizza remake by moon

int h=232;
int s=44;
int b=70;

int xPos=270;
int yPos=310;

void setup() {
  //set canvas size to 1080px by 1080px square
  size(1080, 1080);
  //set the colorMode
  colorMode(RGB);
}

void draw() {
  //set the background color to off-white
  background(239, 240, 232);
  //set the fill color to off-white
  fill(239, 240, 232);
  //set the stroke color to mustard
  stroke(255, 213, 0);
  //set the stroke weight in pixels
  strokeWeight(11);
  //draw upside-down triangle
  triangle(540, 830, 780, 350, 300, 350);
  //set the fill color to none
  noFill();

  //set black stroke color of rectangle
  stroke(0, 0, 0);
  //set the stroke weight in pixels
  strokeWeight(9);
  //draw rectangle overlapping the triangle
  rect(xPos, yPos, 540, 100);
  //set the fill color to none
  noFill();

  //set red stroke color of arc
  stroke(h, s, b);
  //position first pepperoni arc
  arc(690, 500, 100, 90, 0, PI+QUARTER_PI, OPEN);
  //set red stroke color of arc
  stroke(h, s, b);
  //position second pepperoni arc
  arc(380, 550, 125, 120, PI+QUARTER_PI, TWO_PI);
  //set red stroke color of arc
  stroke(h, s, b);
  //position third pepperoni arc
  arc(650, 650, 90, 100, 1, PI+QUARTER_PI, OPEN);
  //end collection of vector info and parameters
  endRecord();
}
