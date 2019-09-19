void setup() {

  size(1080,1080);
  //frameRate(1);
  
}


void draw() {
  //background(0);
  
  for (int i = 0; i < 100; i++) {
    ellipse(random(0,width), random(0,height), 100, 100);
  }
  
  rect(100,100,width-100, 50);
  
}
