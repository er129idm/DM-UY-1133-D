// Jason's Interactive Game 

float xPosition, yPosition;
boolean wHeld = false, aHeld = false, dHeld = false, sHeld = false;

//set up the canvas
void setup() {
  size(1080, 1080);
  ellipseMode(CENTER);

  xPosition = 30;
  yPosition = 980;
}

void draw() {
  // function for the ball
  drawCircle();
  //function for the control 
  playControls();
  //function for the map 
  drawMap();
}
//settup the the commands for ball
void drawCircle() {
  //set the character to the bottom left corner of teh screen
  stroke(128, 128, 0);
  //stroke width
  strokeWeight(5);
  //set to fill with color
  fill(128, 128, 0);
  ellipse(xPosition, yPosition, 30, 30);
}
//settup the the commands for the controls 
void playControls() {

  if (wHeld) {
    yPosition = yPosition -3.0;
  }
  if (aHeld) {
    xPosition = xPosition -3.0;
  }
  if (sHeld) {
    yPosition = yPosition +3.0;
  }
  if (dHeld) {
    xPosition = xPosition +3.0;
  }
}

void drawMap () {
  stroke(255, 99, 71);
  //stroke width
  strokeWeight(5);
  //set to fill with color
  fill(255, 99, 71);
  beginShape();
  //vertex for the upper part of the maze 
  vertex(0, 500);
  vertex(300, 500);
  vertex(300, 700);
  vertex(350, 700);
  vertex(350, 200);
  vertex(800, 400);
  vertex(800, 350);
  vertex(730, 350);
  vertex(730, 50);
  vertex(1080, 50);
  vertex(1080, 0);
  vertex(0, 0);
  //end shape
  endShape();

  stroke(0, 191, 255);
  //stroke width
  strokeWeight(5);
  //set to fill with color
  fill(0, 191, 255);
  beginShape();
  //vertex for the lower part of the maze  
  vertex(70, 1080);
  vertex(70, 570);
  vertex(230, 570);
  vertex(230, 770);
  vertex(420, 770);
  vertex(420, 300);
  vertex(800, 470);
  vertex(870, 470);
  vertex(870, 280);
  vertex(800, 280);
  vertex(800, 120);
  vertex(1080, 120);
  vertex(1080, 1080);
  vertex(0, 1080);
  //end shape
  endShape();
  // drawing the arrow
  strokeWeight(5);
  stroke(255);
  line(1000, 85, 1030, 85);

  strokeWeight(5);
  stroke(255);
  line(1015, 75, 1030, 85);

  strokeWeight(5);
  stroke(255);
  line(1015, 95, 1030, 85);
}



//identify the controls 

void keyPressed() {
  if (key== 'w') {

    wHeld = true;
  }
  if (key== 'a') {

    aHeld = true;
  }
  if (key== 'd') {

    dHeld = true;
  }
  if (key== 's') {

    sHeld = true;
  }
}

void keyReleased() {
  if (key== 'w') {
    wHeld =false;
  }
  if (key== 'a') {
    aHeld =false;
  }
  if (key== 'd') {
    dHeld =false;
  }
  if (key== 's') {
    sHeld =false;
  }
}
