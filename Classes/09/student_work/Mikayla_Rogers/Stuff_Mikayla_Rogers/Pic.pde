//class for images
class Pic {

  float x;
  float y;
  float xspeed;
  float yspeed;
  PImage myImage;

//constructive string for images
  Pic(String imageFilename, float startingX, float startingY) {
    myImage = loadImage(imageFilename); 
    x = startingX;
    y = startingY;
    xspeed = int(random(0, 40));
    yspeed = int(random(0, 20));
  }

//set up position of each image
  void display() {
    imageMode(CENTER);
    image(myImage, x, y);
  }

//set up movement of each image
  void move() {
    x = x + xspeed;
    y = y + yspeed;
  }

//set up each image's reaction "bounce" to hitting edges of screen
  void bounce() {
    if (x > width || x < 0) {
      xspeed = xspeed * -1;
    }
    if (y > height || y < 0) {
      yspeed = yspeed * -1;
    }
  }
}
