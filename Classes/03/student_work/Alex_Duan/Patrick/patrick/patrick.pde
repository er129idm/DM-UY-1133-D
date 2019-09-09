void setup() {
  // set canvas size to 1080x1080 
  size(1080, 1080);
  // set canvas to pink
  background(255,182,193);
}  

void draw() {
  //fill white for first eye
  fill(255,255,255);
  //draws first eye
  ellipse(415, 540, 250, 350);
  //fill white for second eye
  fill(255,255,255);
  //draws second eye
  ellipse(665, 540, 250, 350); 
  //fill black for first pupil
  fill(0,0,0);
  //draws first pupil
  ellipse(490, 540, 50, 75);
  //fill black for second pupil
  fill(0,0,0);
  //draws second pupil
  ellipse(590, 540, 50, 75);
 
  //code for mouth
  noFill();
  //conditions for vectors
  beginShape();
  //start point for mouth
  vertex(280,780);
  //end point for mouth
  vertex(800,780);
  endShape();
}  
