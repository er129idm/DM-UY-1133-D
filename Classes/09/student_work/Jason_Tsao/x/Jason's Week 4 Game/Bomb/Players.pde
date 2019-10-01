class Players {

  /// Players PROPERTIES

  float playerXPosition;

  float playerYPosition;

  float playerHue;

  boolean isSquare;


  Players(float startX, float startY, float startHue, boolean startShape) {

    playerXPosition = startX;

    playerYPosition = startY;

    playerHue = startHue;

    isSquare = startShape;
  }


  void display() {

    pushStyle();

    colorMode(HSB);

    fill(playerHue, 255, 255);

    if (isSquare) {

      rect(playerXPosition, playerYPosition, 50, 50);
    } else {
      ellipse(playerXPosition, playerYPosition, 50, 50);
    }

    popStyle();
  }
}
