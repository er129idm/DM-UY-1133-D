class Blood {
  float x = mouseX;
  float y = mouseY;


void release() {
  x = mouseX + random(-10,300);
  y = mouseY + random(-10,300);
}

void show() { 
  noStroke();
  fill(166,16,30);
  circle(x,y,random(1,30));
}

}
