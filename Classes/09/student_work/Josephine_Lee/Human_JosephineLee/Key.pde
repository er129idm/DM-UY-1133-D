class Key {
  float c;
  float xPosition;
  float yPosition;
  float measure;
  boolean intersect;


  Key(float tempc, float tempxPosition, float tempyPosition, float tempmeasure, boolean tempintersect) {
    c = tempc;
    xPosition = tempxPosition;
    yPosition = tempyPosition;
    measure = tempmeasure;
    intersect = tempintersect;
  }

  void display() {
    noStroke();
    fill(c);
    rect(xPosition, yPosition, measure, measure);
  }


  void touch(float jx, float jy) {
    if (jx>xPosition-measure/2 && jx<xPosition+measure/2 && jy>yPosition-measure/2 && jy<yPosition+measure/2) {
      intersect = false;
    }
  }
}
