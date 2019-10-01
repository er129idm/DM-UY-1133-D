class Leaf {

  float xPos;
  float yPos;
  int ySpeed;
  float randomLand;
  boolean isOnGround;

  Leaf(float tempxPos, float tempyPos, int tempySpeed) {
    xPos = tempxPos;
    yPos = tempyPos;
    ySpeed = tempySpeed;
    randomLand = random(1, 30);
    isOnGround = false;
  }

  void display() {
    image(leaf, xPos, yPos);
  }

  void move() {

    if (!isOnGround) {
      yPos = yPos + ySpeed;
      if (yPos >= (height - 75)) {
        isOnGround = true;
        ySpeed = 0;
        yPos = yPos + randomLand;
      }
    }
  }
}
