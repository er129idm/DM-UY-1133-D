//The class is defined outside of draw or setup
class Ball { 
  //assign variables for the class object  
  color c; 
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float dia;
  
  //the constructor creates the initial instance of the object
  //variables are given values in the constructor
  Ball() { 
    c = color(255);
    xPos = 10;
    yPos = 10;
    xSpeed = 1;
    ySpeed = 1.3;
    dia = 20;
  }
  
  //function of the Ball class 
  void display() { 
    noStroke();
    fill(c);
    ellipse(xPos, yPos, dia, dia);
  }
  
  //function of the Ball class 
  void move() { 
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    xPos = xPos + xSpeed;
    if (xPos > width || xPos < 0) {
      xSpeed = xSpeed * -1;
    } else if (yPos > height || yPos < 0) {
      ySpeed = ySpeed * -1;
    }
  }
}
