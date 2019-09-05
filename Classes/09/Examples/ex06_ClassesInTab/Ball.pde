//The class is defined outside of draw or setup
class Ball { 
//assign variables for the class object  
  color c; 
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float dia;
//the constructor creates the initial instance of the object
//variables are given values in the constructor
  Ball() { 
    c=color(255);
    xpos = 10;
    ypos = 10;
    xspeed = 1;
    yspeed = 1.3;
    dia=20;
  }
//function of the Ball class 
  void display() { 
    noStroke();
    fill(c);
    ellipse(xpos, ypos, dia, dia);
  }
//function of the Ball class 
  void move() { 
    xpos=xpos+xspeed;
    ypos=ypos+yspeed;
    xpos = xpos+xspeed;
    if (xpos>width || xpos<0) {
      xspeed = xspeed*-1;
    }else if(ypos>height || ypos<0){
      yspeed=yspeed*-1;
    }
  }
}
