class Door {
  color c;
  float xPosition;
  float yPosition;


Door() {
  c = color(234);
  xPosition = 100;
  yPosition = 100;
}

void display() {
  fill(c);
  rect(xPosition, yPosition, 100, 200);
  fill(0);
  textSize(20);
  text("DOOR",100,200);
}
}
