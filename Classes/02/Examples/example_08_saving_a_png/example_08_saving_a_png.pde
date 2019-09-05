/*
  SAVING PNGs EXAMPLE
                       */

void setup() {
  
  size(1080, 1080);
  
}

void  draw() {
  
  strokeWeight(10);
  line(20, 20, 1000, 1000);
  
  // Saves a PNG file named "diagonal.tif"
  save("diagonal.png");
  
}
