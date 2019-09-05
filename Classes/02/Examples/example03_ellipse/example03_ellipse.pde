/* example03_ellipse */

void setup() {

  size(1080, 1080);
}

void draw() {

  // Default positioning – CENTER...
  ellipse(540, 540, 1000, 1000);  // Draw gray ellipse using CENTER mode

  ///////

  //ellipseMode(CENTER);  // Set ellipseMode to CENTER
  //fill(100);  // Set fill to gray
  //ellipse(540, 540, 1000, 1000);  // Draw gray ellipse using CENTER mode

  //ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
  //fill(255);  // Set fill to white
  //ellipse(540, 540, 1000, 1000);  // Draw white ellipse using RADIUS mode

  ///////

  //ellipseMode(CORNER);  // Set ellipseMode is CORNER
  //fill(255);  // Set fill to white
  //ellipse(25, 25, 1000, 1000);  // Draw white ellipse using CORNER mode

  //ellipseMode(CORNERS);  // Set ellipseMode to CORNERS
  //fill(100);  // Set fill to gray
  //ellipse(25, 25, 1000, 1000);  // Draw gray ellipse using CORNERS mode
  
}
