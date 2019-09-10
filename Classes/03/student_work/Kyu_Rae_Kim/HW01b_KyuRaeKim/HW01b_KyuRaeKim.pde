/*
Kyu Rae Kim
Sept 11, 2019
Assignment 01.b: "Digitize the Old Guard!"
Korean National Flag
*/


import processing.pdf.*;  // import everything from processing.pdf

float a = atan2(2, 3);    // angle global variable (calculation in picture)

void setup()
{
  size(1080, 1080);                     // 1080x1080 size
  colorMode(RGB);                       // color mode to RGB
  noLoop();
  beginRecord(PDF, "Taeguk.pdf");       // begin recording as pdf
}

void draw()
{
  background(255, 255, 255);            // white background
  
  stroke(0, 0, 0);                      // black stroke
  strokeWeight(5);                      // stroke weight
  noFill();                             // no color
  rectMode(CORNER);                     // rect initial setting to CORNER
  rect(135, 270, 810, 540);             // the border (3R width, 2R height)
  
  // -- Middle Circle -- //             // R = 270
  noStroke();                           // no stroke
  fill(255, 0, 0);                      // color red
  arc(540, 540, 270, 270, PI, 2*PI);    // bigger half circle (pi~2pi)
  fill(0, 0, 255);                      // color blue
  arc(540, 540, 270, 270, 0, PI);       // bigger half circle (0~pi)
  fill(255, 0, 0);                      // color red
  arc(472.5, 540, 135, 135, 0, PI);     // smaller half circle (0~pi)
  fill(0, 0, 255);                      // color blue
  arc(607.5, 540, 135, 135, PI, 2*PI);  // smaller half circle (pi~2pi)
  
  // -- Black Stripes -- //
  fill(0, 0, 0);                        // color black
  rectMode(CENTER);                     // change rect setting to CENTER
  
  // 2nd Quadrant
  translate(337.5, 405);                // translate coordinates to the center of one black stripe
  rotate(a);                            // rotate the calculated angle
  rect(0, 0, 22.5, 135);                // draw 1st stripe ((0, 0) coordinate because it's translated)
  rect(-33.75, 0, 22.5, 135);           // draw 2nd stripe (translate 1st stripe in x direction only, because it is rotated coordinates)
  rect(-67.5, 0, 22.5, 135);            // draw 3rd stripe (same as above)
  rotate(-a);                           // rotate coordinates back to normal
  translate(-337.5, -405);              // translate back to normal

  // 1st Quadrant
  translate(742.5, 405);
  rotate(-a);
  rect(0, 0, 22.5, 135);
  rect(33.75, 0, 22.5, 135);
  rect(67.5, 0, 22.5, 135);
  rotate(a);
  translate(-742.5, -405);
  
  // 3rd Quadrant
  translate(337.5, 675);
  rotate(-a);
  rect(0, 0, 22.5, 135);
  rect(-33.75, 0, 22.5, 135);
  rect(-67.5, 0, 22.5, 135);
  rotate(a);
  translate(-337.5, -675);
  
  // 4th Quadrant
  translate(742.5, 675);
  rotate(a);
  rect(0, 0, 22.5, 135);
  rect(33.75, 0, 22.5, 135);
  rect(67.5, 0, 22.5, 135);
  rotate(-a);
  translate(-742.5, -675);
  
  // -- Erase Stripes -- //
  fill(255, 255, 255);                  // use white color to erase the middle small portion of the stripes

  //2nd Quadrant
  translate(742.5, 405);
  rotate(-a);
  rect(0, 0, 25, 11.25);                // little larger width than the stripe to erase completely
  rect(67.5, 0, 25, 11.25);
  rotate(a);
  translate(-742.5, -405);
  
  // 3rd Quadrant
  translate(337.5, 675);
  rotate(-a);
  rect(-33.75, 0, 25, 11.25);
  rotate(a);
  translate(-337.5, -675);
  
  // 4th Quadrant
  translate(742.5, 675);
  rotate(a);
  rect(0, 0, 25, 11.25);
  rect(33.75, 0, 25, 11.25);
  rect(67.5, 0, 25, 11.25);
  rotate(-a);
  translate(-742.5, -675);
  
  save("Taeguk.png");                   // save as png
  endRecord();                          // end record
}
