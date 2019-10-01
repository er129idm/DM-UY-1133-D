ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(500, 500);
}

void draw() {
  background(200, 200, 200);

  /// Move, display, and check interaction on each ball object.
  for (int i=0; i<balls.size(); i++) {
    balls.get(i).move(); 
    balls.get(i).display();
    balls.get(i).touch(mouseX, mouseY);//this is casting the mouseX, mouseY positions through each loop
    // Remove the ball object if the mouse has hovered over it.
    if (balls.get(i).intersect == false) {
      balls.remove(i);
    }
  }
}

void mouseClicked() {
  /// Click to create a new ball object and add it to the ArrayList.
  float ballSize = 10 + random(40);
  
  balls.add( new Ball(10, mouseX + ballSize, mouseY + ballSize, 10, 10, ballSize, true) );
  
}
