class Cloud {
  float xspeed;
  float xpos;
  float ypos;

  Cloud(float tempxspeed, float tempxpos, float tempypos) {
    xspeed = tempxspeed;
    xpos = tempxpos;
    ypos = tempypos;
  }


  void display() {
    image(cloud, xpos, ypos);
  }

  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = -500;
      ypos = random(0, height/3);
    }
  }
}
