Tangram firstShape;
Tangram secondShape;


void setup() {
  size(1000, 1000);
  background(0);
  
  PVector position;
  position = new PVector(50,50);
  position.x = 100;
  
  firstShape = new Tangram("smallTriangle", new PVector(10,10), 30);
  secondShape = new Tangram("parallelogram", new PVector(200,200), 0);
  
}

void draw() {
  
  firstShape.display();
  secondShape.display();
  
  
  
  //smallTriangle();
  //mediumTriangle();
  //square();
  //smallTriangleTwo();
  //parallelogram();
  //largeTriangle();
  //largeTriangleTwo();
}

void smallTriangle() {
  fill(255, 0, 0);
  beginShape();
  vertex(260, 230);
  vertex(340, 150);
  vertex(420, 230);
  endShape();
}

void mediumTriangle() {
  fill(0, 255, 0);
  beginShape();
  vertex(620, 670);
  vertex(620, 510);
  vertex(460, 670);
  endShape();
}

void parallelogram() {
  fill(0, 0, 255);
  beginShape();
  vertex(780, 230);
  vertex(900, 230);
  vertex(780, 350);
  vertex(660, 350);
  endShape();
}

void smallTriangleTwo() {
  fill(255, 239, 4);
  beginShape();
  vertex(380, 590);
  vertex(460, 510);
  vertex(540, 590);
  endShape();
}

void square() {
  fill(24, 255, 248);
  beginShape();
  vertex(300, 230);
  vertex(420, 230);
  vertex(420, 350);
  vertex(300, 350);
  endShape();
}

void largeTriangle() {
  fill(197, 4, 255);
  beginShape();
  vertex(540, 590);
  vertex(540, 350);
  vertex(300, 350);
  endShape();
}

void largeTriangleTwo() {
  fill(255);
  beginShape();
  vertex(780, 350);
  vertex(540, 350);
  vertex(540, 590);
  endShape();
}
