class Ball { 
  /// Define variables for this class type.  
  float c; 
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float dia;
  boolean intersect;

  /// This constructor allows you to set starting values for each variable.
  Ball(float tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed, float tempDia, boolean tempIntersect) { 
    c=tempC;
    xpos=tempXpos;
    ypos=tempYpos;
    xspeed=tempXspeed;
    yspeed=tempYspeed;
    dia=tempDia;
    intersect = tempIntersect;
  }

  /// Draw function for the Ball class. 
  void display() { 
    noStroke();
    /// Draw red if the mouse has hovered over this object.
    if (intersect) {
      fill(c);
    } else {
      fill(255, 0, 0);
    }
    ellipse(xpos, ypos, dia, dia);
  }

  /// Logic to move the Ball object around the screen. 
  void move() { 
    xpos=xpos+xspeed;
    ypos=ypos+yspeed;
    xpos = xpos+xspeed;
    if (xpos>width || xpos<0) {
      xspeed = xspeed*-1;
    } else if (ypos>height || ypos<0) {
      yspeed=yspeed*-1;
    }
  }

  /// Takes an incoming position (from the mouse) and checks if it intersects
  /// with this ball object, thus being a mouse hover.
  void touch(int mx, int my) {
    if ( mx > xpos - dia/2 && mx < xpos + dia/2 && my > ypos-dia/2 && my < ypos + dia/2) {
      //if it does the interesect var is set to false from true and un in display the color is changed      
      intersect = false;
    }
  }
}
