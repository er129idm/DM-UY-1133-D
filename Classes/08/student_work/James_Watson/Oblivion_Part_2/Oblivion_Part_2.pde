void setup(){
  size(1080,1080);
  //Set Boundary for Canvas
}

void draw(){
  //begin to draw and set conditions for strokes.
  background (0);
  // set canvas color to black 
 drawOblivion();
 //call function
 
}

void drawOblivion() {
   stroke(255,255,255);
  //set stroke color to white 
  strokeWeight(5);
  //set stroke size to 5
  strokeJoin(ROUND);
  //join draw conditions with setup conditions to allow beginshape
  fill(255,255,255);
  //fill object with white
  beginShape();
  //draw shape using coordinates
  vertex(170,60);
  //set point A at x and Y 
  vertex(230,120);
  // set point B at X and Y
  curveVertex(230,120);
  // curve at point C at X and Y 
  curveVertex(170,540);
  // curve at point D at X and Y
  curveVertex(500,950);
  //curve at point E at X and Y
  curveVertex(400,440);
  //curve at point F at X and Y
  curveVertex(540,120);
  //curve at point G at X and Y
  curveVertex(750,440);
  //curve at point H at X and Y
  curveVertex(560,1000);
  //curve at point I at X and Y
  curveVertex(910,540);
  //curve at point J at X and Y
  curveVertex(850,120);
  //curve at point K at X and Y
  curveVertex(910,60);
  //curve at point L at X and Y
  vertex(910,60);
  //set point M at X and Y
  endShape();
  //End drawing of object and fill it in
  ellipse(570,450,115,150);
  // draw elipse at coordinates and fill with condition color value.
}
