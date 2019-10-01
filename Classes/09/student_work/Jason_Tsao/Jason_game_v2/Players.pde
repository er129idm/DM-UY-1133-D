class Players {
  //decalre the properties 
  PImage Mario;
  PImage Wario;

  float playerXPosition;

  float playerYPosition;

  boolean p2;


  Players(float startX, float startY, boolean startShape) {

    playerXPosition = startX;

    playerYPosition = startY;
    //differentiate the players
    p2 = startShape;
    // load characters image 
    Mario=loadImage("mario.png");
    Wario=loadImage("wario.png");
  }


  void display() {
    //display the characters
    if (p2) {
      image(Mario, playerXPosition, playerYPosition, 50, 50);
    } else {
      image(Wario, playerXPosition, playerYPosition - 50, 50, 50);
    }
  }
}
