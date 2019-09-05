//example_08 save image

//importing the pdf library
import processing.pdf.*;

void setup(){
  //set the size of the canvas
  size(1000,1000);
  //set the colorMode
  colorMode(RGB);
  //this makes sure the program only runs once through
  noLoop();
  //set file name here inside of quotes NO SPACES
  beginRecord(PDF, "composition1.pdf");
}

void draw(){
  //set the background color
  background(0,0,0);
 //set the stroke color 
 stroke(135,252,246);
 //set stroke weight
 strokeWeight(5);
 //set stroke join parameter
 //(options are MITER, BEVEL or Round)
 strokeJoin(ROUND);
 //set to no fill
  noFill();
 //startshape
 beginShape();
 //add verteces which uses a single x,y coordinate pair for each 
 vertex(25,25);
 vertex(800,200);
 vertex(900,700);
 vertex(200,800);
 vertex(25,25);
 //end shape
 endShape();
 //change fill color(4th parameter is alpha(transparency))
 //0 is completely transparent 255 is completely opaque
 fill(232,23,218,100);
 noStroke();
 ellipse(750,750,300,300);
 //ends the collection of vector info and parameters
 endRecord();
}