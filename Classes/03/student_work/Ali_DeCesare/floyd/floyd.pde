import processing.pdf.*;

void setup(){
  //saves image as pdf
  beginRecord(PDF, "floyd.pdf");
  
  //size of the canvas
  size(1080, 1080);
  //bacground color set to black
  background(0, 0, 0);
  
  //center triangle
  //fill color is black
  fill(0, 0, 0);
  //stroke color is white
  stroke(255, 255, 255);
  //stroke weight is 5 points
  strokeWeight(5);
  //verticies for the triangle
  triangle(540, 200, 250, 700, 830, 700);
  
  //the line that goes from the left of the canvas to the triangle
  beginShape();
  vertex(0, 600);
  vertex(366, 500);
  endShape();
  
  //had to put the colors before the center triangle thing so there would be overlap and you wouldn't see the mistakes I made
  //red streak to the right
  fill(255, 0, 0);
  strokeWeight(0);
  beginShape();
  vertex(650, 415);
  vertex(650, 425);
  vertex(1080, 470);
  vertex(1080, 460);
  endShape();
  
  //yellow light beam
  fill(245, 235, 32);
  strokeWeight(0);
  beginShape();
  vertex(650, 425);
  vertex(650, 435);
  vertex(1080, 480);
  vertex(1080, 470);
  endShape();
  
  //green light beam
  fill(25, 178, 75);
  strokeWeight(0);
  beginShape();
  vertex(650, 435);
  vertex(650, 445);
  vertex(1080, 490);
  vertex(1080, 480);
  endShape();
  
  //light blue light beam
  fill(94, 202, 230);
  strokeWeight(0);
  beginShape();
  vertex(650, 445);
  vertex(650, 455);
  vertex(1080, 500);
  vertex(1080, 490);
  endShape();
  
  //blue light beam
  fill(39, 122, 191);
  strokeWeight(0);
  beginShape();
  vertex(650, 455);
  vertex(650, 465);
  vertex(1080, 510);
  vertex(1080, 500);
  endShape();
  
  //indigo light beam
  fill(43, 47, 130);
  strokeWeight(0);
  beginShape();
  vertex(650, 465);
  vertex(650, 475);
  vertex(1080, 520);
  vertex(1080, 510);
  endShape();
  
  //pink light beam
  fill(212, 71, 153);
  strokeWeight(0);
  beginShape();
  vertex(650, 475);
  vertex(650, 485);
  vertex(1080, 530);
  vertex(1080, 520);
  endShape();
  
  //center white triangle defraction thingy
  fill(255, 255, 255);
  stroke(255, 255, 255);
  beginShape();
  vertex(366, 500);
  vertex(650, 415);
  vertex(700, 495);
  endShape();
  
  //finishes saveing image as pdf
  endRecord();
  
  //saves screenshot of image
  save("floyd.png");
  
  
  
}
