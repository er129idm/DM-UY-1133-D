class Slime {
  int slimeX;
  int slimeY;
  int speed;
  int slimeHealth;
  int slimeAttack;

  Slime(int tempslimeX, int tempslimeY, int tempspeed, int tempslimeHealth, int tempslimeAttack) {
    slimeX = tempslimeX;
    slimeY = tempslimeY;
    speed = tempspeed;
    slimeHealth = tempslimeHealth;
    slimeAttack = tempslimeAttack;
  }
  
  void display() { 
    fill(255,0,0);
    ellipse(slimeX, slimeY, 25, 25);
  }
  
  void move() { 
    slimeX = slimeX + speed; 
    slimeY = slimeY + speed; 
    if (slimeX > width || slimeX<0) {
      speed = speed*-1;
    } else if (slimeY>height || slimeY<0) {
      speed=speed*-1;
    }
 }
  
  int locateX() {
    return slimeX;
  }
  int locateY() {
    return slimeX;
  }
  int getSlimeHealth() {
    return slimeHealth;
  }
  int getSlimeAttack() {
    return slimeAttack;
  }
}
