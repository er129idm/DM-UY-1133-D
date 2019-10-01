class Leaf {
  
  float xPos;
  float yPos;
  int ySpeed;
  float randomLand;
  
  Leaf(float tempxPos, float tempyPos, int tempySpeed) {
    xPos = tempxPos;
    yPos = tempyPos;
    ySpeed = tempySpeed;
    randomLand = random(1, 30);
  }
  
  void display() {
    image(leaf, xPos, yPos);
    
    
  }
  
  void move() {
    yPos = yPos + ySpeed;
    if (yPos >= (height - 75)) {
      ySpeed = 0;
      yPos = yPos + randomLand;
    }
    
  }
  
  
  
  
}
