/* example06_lines */

void setup() {

  size(1080, 1080);
  strokeWeight(10);
}

void draw() {
  
  background(30);
  
  line(30, 20, 850, 20);
  
  stroke(126);
  line(850, 20, 850, 750);
  
  stroke(255);
  line(850, 750, 30, 750);
  
}
