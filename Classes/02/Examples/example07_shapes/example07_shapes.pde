//example_07 shapes

void setup(){
  //set the size of the canvas
  size(1000,1000);
  //set the colorMode
  colorMode(RGB);
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
 strokeJoin(MITER);
 //set to no fill
  noFill();
 //startshape
 beginShape();
 //add vertices which uses a single x,y coordinate pair for each 
 vertex(25,25);
 vertex(800,200);
 vertex(900,700);
 vertex(200,800);
 vertex(25,25);
 //end shape
 endShape();
}