//wk07_ex07_ClassesWithParameters
//to create multiple instances with unique characteristics
//we need to pass unique variable values to each instance of the class object

//A global variable named my Ball is created of a datatype Ball
//notice it begins with an uppercase
Ball myBall1; 
Ball myBall2;

void setup() {
  size(500, 500);
  
  //initialize ball object with variable name and assign it to the constructor
  //do this in setup
  //place parameters inside the paretheses to be passed to the constructor
  //Ball(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed, float tempDia )
  myBall1= new Ball(150, 50, 50, 2.5, 3.7, 30); 
  myBall2= new Ball(255, 100, 20, 1, 1, 10);
}

void draw() {
  background(0);
  
  //name the instance var and then call a function from the class
  myBall1.move(); 
  myBall1.display();
  myBall2.move();
  myBall2.display();
}

//The class in a seperate tab use the same name and capitalize for 
//consistency and clarity

class Ball { 
  //assign variables for the class object  
  color c; 
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float dia;
  
  //THIS IS THE CONFUSING PART>>>>>>
  //The values are passed from the initializationin setup into a temp var which in turn is assigned to the
  //actual var used in the functions...YOU ALWAYS SET THIS UP THE EXACT SAME WAY
  Ball(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed, float tempDia ) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
    dia = tempDia;
  }
  
  //function of the Ball class 
  void display() { 
    noStroke();
    fill(c);
    ellipse(xpos, ypos, dia, dia);
  }
  
  //function of the Ball class 
  void move() { 
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    xpos = xpos + xspeed;
    if (xpos > width || xpos < 0) {
      xspeed = xspeed * -1;
    } else if (ypos > height || ypos < 0) {
      yspeed = yspeed * -1;
    }
  }
}
