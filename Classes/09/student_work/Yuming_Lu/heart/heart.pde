ArrayList<Blood> bloods = new ArrayList<Blood>();

PImage img;
PImage img2;

void setup() {
  size(1080, 1080);
  img = loadImage("knife.png");
  for (int i = 0 ; i < 50; i++){
    bloods.add(new Blood());
}
}

void draw() {
  background(255);
  img2 = loadImage("heart.png");
  image(img2, 0, 0, 1080,1080);
  cursor(img, 0, 0);
}

void mousePressed(){
  for (int i = 0 ; i < 50; i++){
    bloods.add(new Blood());
    bloods.get(i).release();
    bloods.get(i).show();
}
}
