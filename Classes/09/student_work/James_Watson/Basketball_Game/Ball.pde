class Ball {

  float xpos, ypos, xvel, yvel, accel; //variables dfor ball movement

  Ball() {
    xpos = width/5;//initial position for ball
    ypos = height-300;
    yvel = 1;//initial velocity
    xvel = 1;
    accel = 2;//how fast ball increases in spped
  }
  
  void throwBall(){}
  void checkIfOffscreen(){}
  
}
