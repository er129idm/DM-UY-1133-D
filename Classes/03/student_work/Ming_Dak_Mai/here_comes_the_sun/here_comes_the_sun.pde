//Ming Mai
//DM-UY-1133-D Assignment 01.b: "Digitize the Old Guard!"
//The reference for this image is by an artist called Amira Brown
//the original work can be found here: https://amirahbillo.tumblr.com/post/184555409301/the-suns-sea-goes-real-deep-patreon

//importing the pdf library
//import processing.pdf.*; //uncomment this line to save as pdf (1 of 3)

//the following 4 lines were taken from the processing examples libarary on gradients, they declare variables
// Constants
int Y_AXIS = 1; //sets the variable Y_AXIS as the integer 1
color c1, c2; //sets the variables c1, c2 as colors

void setup() {
  size(1080, 1080); //this is the size of the canvas

  c1 = color(5, 13, 34); //this is the first color of the gradient
  c2 = color(3, 67, 60); //this is the second color of the gradient

  noLoop(); //this was from the original gradient code, it stops the draw function from looping
  
  //beginRecord(PDF, "red_sun.pdf"); //uncomment this to save as pdf (2 of 3)
}

void draw() {

  //the setGradient function takes (x, y, width, height, c1, c2, axis)
  //the gradient works without x axis
  setGradient(0, 0, 1080, 350, c1, c2, Y_AXIS);

  //the following lines are to make the top wave
  stroke(20, 22, 35);
  strokeWeight(75); //this was used to make the combination of the rectangle and curve more seamless
  //bezier takes pairs of points, the first and last pairs determine the beginning and end points of the curve
  bezier(0, 350, 540, 350, 700, 200, 1080, 300); //this was to draw in the main curve
  bezier(600, 300, 800, 300, 900, 300, 1080, 300); //this was to fill in missing space

  fill(20, 22, 35); //this determines the fill color
  stroke(20, 22, 35); //set stroke color
  strokeWeight(10); //set thickness of stroke
  rect(0, 330, 1080, 500); //rectangle takes (x (from the left corner?), y, width, height)
  //end top wave

  //the following lines are used to make the red sun
  fill(210, 23, 30); //this is the red color, this determines the fill color
  strokeWeight(1); //this makes the rays of the star thin, set thickness of stroke
  stroke(210, 23, 30); //this makes the edge of the rays red, set stroke color
  star(540, 540, 5, 375, 75); //this function makes the rays of the sun

  fill(255, 0, 0); //this is the red color
  //circle takes (x, y, diameter)
  circle(540, 540, 500);
  //end red sun

  //the following lines are to make the bottom wave
  fill(19, 23, 25); //this changes the fill color to blue
  stroke(19, 23, 25); //this changes the stroke color to blue
  strokeWeight(50); //this was used to make the combination of the rectangle and curve more seamless
  //bezier takes pairs of points, the first and last pairs determine the beginning and end points of the curve
  bezier(0, 750, 540, 650, 700, 600, 1080, 700);

  stroke(19, 23, 25); //set stroke color
  strokeWeight(10); //set stroke weight
  rect(0, 700, 1080, 380); //rectangle takes (x (from the left corner?), y, width, height)
  
  //!!!uncomment below to save as pdf(2 of 2)!!!
  //endRecord(); //ends pdf recording
  //!!!uncomment below to save as bitmap!!!
  //save("red_sun.png");
}

//This gradient function was taken from the processing examples library and modified 
//it makes a rectangle with a gradient inside the axis determines which way the gradient runs
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    //for creates a loop which will execute this function until a condition is met
    //its inputs are (statement executed at beginning of loop; a test which while true will continue the loop; what happens at the end of every cycle
    for (int i = y; i <= y+h; i++) { //i is a placeholder, this loop goes downwards line by line until the the height of the rectangle is reached
      //map takes the inputs (number, orginal lower bound, original upper bound, new lower bound, new upper bound)
      float inter = map(i, y, y+h, 0, 1); //the map function takes a number from one range and maps it to another
      color c = lerpColor(c1, c2, inter); //lerpColor finds the color inbetween two colors 
      stroke(c); //this changes the line color to the current color being lerped
      line(x, i, x+w, i); //this draws out the line 
    }
  }
}

//this star function was taken from the processing examples library https://processing.org/examples/star.html
//now there is only one star and it does not rotate
//the general idea of this function is to go in a circle and plot points along the circle such that a star is born
//this defines the "star" function which takes 5 inputs:
//(x, y, the radius of concave points, the radius of the concave points, number of concave points)
void star(float x, float y, float radius1, float radius2, int npoints) {
  //these two variables/helper functions are defined first
  float angle = TWO_PI / npoints; //the angle is 2*pi / number of points
  float halfAngle = angle/2.0; // 2.0 was used because it is a float not an integer
  beginShape(); //beginShape is used to create more complex shapes
  //for creates a loop which will execute this function until a condition is met
  //its inputs are (statement executed at beginning of loop; a test which while true will continue the loop; what happens at the end of every cycle
  for (float a = 0; a < TWO_PI; a += angle) { //a is a placeholder variable which interacts with the input of npoints
    //a = 0, while a is less than two pi, add the value angle to the current value of a
    float sx = x + cos(a) * radius2;  
    float sy = y + sin(a) * radius2;
    vertex(sx, sy); //this gives the points of the convex parts of the star
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy); //this gives the points of the concave parts of the star
  }
  endShape(CLOSE); //this is required in tandem with the beginShape() function
}
