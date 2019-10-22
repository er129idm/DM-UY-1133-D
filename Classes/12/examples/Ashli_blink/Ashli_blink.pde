void setup() {
  size(720, 720);
  background(0);
}

void draw() {
  background(0);
  drawFace();
}

void drawFace() {

  push();
  fill(#D4DB0D);
  translate(width/2, height/2);
  ellipse(0, 0, width/2, height/2);
  drawEyes();
  pop();
}

void drawEyes() {

  if (int(random(30)) != 0) {
    push();
    translate(-width/8, 0);
    fill(10);
    ellipse(0, 0, 50, 50); /// OPEN eye
    pop();
    push();
    translate(width/8, 0);
    fill(10);
    ellipse(0, 0, 50, 50); /// OPEN eye
    pop();
  } else {
    push();
    translate(-width/8, 0);
    fill(10);
    ellipse(0, 0, 50, 5); /// CLOSED eye
    pop();
    push();
    translate(width/8, 0);
    fill(10);
    ellipse(0, 0, 50, 5); /// CLOSED eye
    pop();
  }
}
