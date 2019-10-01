//array list for all of the images
ArrayList<Pic> pics = new ArrayList<Pic>();

//set up positions of each image
void setup () {
  size(1080, 1080);
  pics.add(new Pic("lemon.png", random(0, width), random(0, height)));
  pics.add(new Pic("pear.png", random(0, width), random(0, height)));
  pics.add(new Pic("peppers.png", random(0, width), random(0, height)));
  pics.add(new Pic("frida.png", random(0, width), random(0, height)));
  pics.add(new Pic("gothic.png", random(0, width), random(0, height)));
  pics.add(new Pic("monalisa.png", random(0, width), random(0, height)));
  pics.add(new Pic("pearlgirl.png", random(0, width), random(0, height)));
  pics.add(new Pic("postman.png", random(0, width), random(0, height)));
}

//set up  background color & functions
void draw() {
  background(226, 207, 0);
  for (int i = 0; i < pics.size(); i++) {
    pics.get(i).display();
    pics.get(i).move();
    pics.get(i).bounce();
  }
}
