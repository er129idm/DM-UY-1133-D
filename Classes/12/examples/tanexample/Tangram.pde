class Tangram {

  PShape myShape;
  PVector position;
  float rotationDegrees;

  Tangram(String shapeName, PVector incPosition, float incRotation) {

    position = incPosition;
    rotationDegrees = incRotation;
    myShape = createShape();

    if (shapeName == "smallTriangle") {
      myShape.beginShape();
      myShape.vertex(260, 230);
      myShape.vertex(340, 150);
      myShape.vertex(420, 230);
      myShape.endShape();
    }
    if (shapeName == "bigTriangle") {
    }
    if (shapeName == "parallelogram") {
      myShape.beginShape();
      myShape.vertex(780, 230);
      myShape.vertex(900, 230);
      myShape.vertex(780, 350);
      myShape.vertex(660, 350);
      myShape.endShape();
    }
  }
  
  void display() {
    pushMatrix();
    rotate(rotationDegrees);
    shape(myShape, position.x, position.y);
    popMatrix();
  }
  
}
