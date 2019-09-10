//importing the pdf library
import processing.pdf.*;

void setup() {
  frameRate(10);
  //set the size of the canvas
  size(1080, 1080);
  //this makes sure the program only runs once through
  noLoop();
  //set the colorMode
  colorMode(RGB);
  //set file name here inside of quotes NO SPACES
  beginRecord(PDF, "ERICSREMAKE.pdf");
}

void draw() {
  //set the background color
  background(23, 29, 55);  
  //set the fill color
  fill(38, 84, 221);
  //set the stroke color
  stroke(23, 29, 55);
  //set the stroke weight in pixels
  strokeWeight(0);
  //draw an rectangle
  //the rect is made up of 4 parameters:
  //x position(from the upper left corner), y position(from the upper left corner), width and height
  rect(215, 365, 650, 350);

  // draw the biggest trangles, these trangles are on the right and left sides
  // set its color the same as the background 
  fill(23, 29, 55);
  triangle(215, 270, 508, 540, 215, 810);
  triangle(865, 270, 572, 540, 865, 810);
  //draw the second biggest trangles , also on the right and left sides 
  //set its color the same as the rectangle 
  fill(38, 84, 221);
  triangle(215, 340, 435.5, 540, 215, 740);
  triangle(865, 340, 644.5, 540, 865, 740);
  //draw the third biggest trangles, on the right, left, up and down sides
  //set its color the same as the background 
  fill(23, 29, 55);
  triangle(215, 403.5, 363, 540, 215, 676.5);
  triangle(865, 403.5, 717, 540, 865, 676.5);
  triangle(395.5, 715, 540, 579.5, 684.5, 715);
  triangle(395.5, 365, 540, 500.5, 684.5, 365);
  //draw the smallest trangles,  on the right, left, up and down sides
  //set its color the same as the rectangle 
  fill(38, 84, 221);
  triangle(473, 715, 540, 652, 607, 715);
  triangle(473, 365, 540, 428, 607, 365);
  triangle(215, 476, 290.5, 540, 215, 604);
  triangle(865, 476, 789.5, 540, 865, 604);
  // draw two other rec as the blockers
  //set the fill color to the same as the background 
  fill(23, 29, 55);
  rect(80, 80, 1000, 285);
  rect(80, 715, 1000, 285);
   //ends the collection of vector info and parameters
 endRecord();
}
