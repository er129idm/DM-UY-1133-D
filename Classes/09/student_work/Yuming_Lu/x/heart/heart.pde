Blood[] bloods = new Blood[50];

PImage img;
PImage img2;

void setup() {
  size(1080, 1080);
  img = loadImage("knife.png");
  for (int i = 0 ; i < bloods.length; i++){
    bloods[i] = new Blood();
}
}

void draw() {
  background(255);
  img2 = loadImage("heart.png");
  image(img2, 0, 0, 1080,1080);
  cursor(img, 0, 0);
}

void mousePressed(){
    for (int i = 0 ; i < bloods.length; i++){
    bloods[i].release();
    bloods[i].show();
    }
}
