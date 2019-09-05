/*
  SAVING PNGs EXAMPLE
                       */

void setup() {
  
  size(1080, 1080);
  
}

void  draw() {
  
  background(200);
  
  strokeWeight(10);
  line(80, 80, 1000, 1000);
  
  // Saves a PNG file named "diagonal.tif"
  save("diagonal.png");
  
}
