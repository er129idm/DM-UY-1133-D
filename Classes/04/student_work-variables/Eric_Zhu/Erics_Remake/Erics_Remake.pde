//wk02_ex03_varsPlusRandom

//declare variables before setup
//use short identifiable words or abbreviations
//when you do this you are creating global variables
//you must declare the type of data the variable will hold

//these are all float type values which stands for floating point 
//number(a number with a decimal point)


//importing the pdf library
import processing.pdf.*;

float Xleftside=215;
float P1=1;
float Speed=2.5;
float Yspeed=4.244186;
float P2=75.5;
float P3=1080;
float P4=1004.5;
float P5=0;
float P6=63;
float P7=1080;
float P8=1017;

void setup() {
  frameRate(50);
  //set the size of the canvas
  size(1080, 1080);
  //this makes sure the program only runs once through
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
  rect(Xleftside, 365, 650, 350);

  // draw the biggest trangles, these trangles are on the right and left sides
  // set its color the same as the background 
  fill(23, 29, 55);
  triangle(Xleftside, 270, 508, 540,Xleftside, 810);
  triangle(865, 270, 572, 540, 865, 810);
  //draw the second biggest trangles , also on the right and left sides 
  //set its color the same as the rectangle 
  fill(38, 84, 221);
  triangle(Xleftside, 340, 435.5, 540, Xleftside, 740);
  triangle(865, 340, 644.5, 540, 865, 740);
  //draw the third biggest trangles, on the right, left, up and down sides
  //set its color the same as the background 
  fill(23, 29, 55);
  triangle(Xleftside, 403.5, 363, 540,Xleftside, 676.5);
  triangle(865, 403.5, 717, 540, 865, 676.5);
  triangle(395.5, 715, 540, 579.5, 684.5, 715);
  triangle(395.5, 365, 540, 500.5, 684.5, 365);
    //set the fill color to the same as the background 
    // draw two other rec as the blockers
  fill(23, 29, 55);
  rect(80, 80, 1000, 285);
  rect(80, 715, 1000, 285);
  //draw the smallest trangles,  on the right, left, up and down sides
  //set its color the same as the rectangle 
  fill(38, 84, 221);
  triangle(473, P7, 540,P8, 607, P7);
  triangle(473, P5, 540, P6, 607, P5);
  triangle(P1, 476, P2, 540,P1, 604);
  triangle(P3, 476, P4, 540, P3, 604);

  P1 = P1 + Speed;
  P2 = P2 + Speed;
  P3 = P3 - Speed;
  P4 = P4 - Speed;
  P5 = P5 + Yspeed;
  P6 = P6 + Yspeed;
  P7 = P7 - Yspeed;
  P8 = P8 - Yspeed;
  if (P1>=215)
  P1=215;
  if (P2>=290.5)
  P2=290.5;
    if (P3<=865)
  P3=865;
  if (P4<=789.5)
  P4=789.5;
    if (P5>=365)
  P5=365;
    if (P6>=428)
  P6=428;
    if (P7<=715)
  P7=715;
  if (P8<=652)
  P8=652;
   //ends the collection of vector info and parameters
 endRecord();
}
