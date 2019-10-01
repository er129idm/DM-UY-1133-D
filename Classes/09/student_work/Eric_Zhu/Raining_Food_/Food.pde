class Ball { 
  /// Define variables for this class type.  

  float xpos;
  float ypos;
  boolean scoreb;
  float dia;
  boolean intersect;
  boolean missb;

  /// This constructor allows you to set starting values for each variable.
  Ball( float tempXpos, float tempYpos,  float tempDia, boolean tempIntersect) { 

    xpos=tempXpos;
    ypos=tempYpos;

    dia=tempDia;
    intersect=tempIntersect;
    scoreb=false;
    missb=false;
  }

  /// Draw function for the Ball class. 
  void display() { 
    noStroke();
    if(firstlevel){
    image(Food1pic,xpos, ypos, dia, dia);
  }
    if(secondlevel){image(Food2pic,xpos, ypos, 40, 40);
  }
      if(thirdlevel){image(Food3pic,xpos, ypos, 45, 45);
  }
        if(forthlevel){image(Food4pic,xpos, ypos, 45, 45);
  }
    }
    void display2(){
     if(forthlevel){image(Food42pic,xpos, ypos, 45, 45);
  }
    }

  /// Logic to move the Ball object around the screen. 
  void move(float xspeed, float yspeed) { 
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
  void touch() {
    if (  ypos>=1080) {
      //if it does the interesect var is set to false from true and un in display the color is changed      
      intersect = false;
      
    }
  }
  void score(){

  if(xpos>420&&xpos<620&&ypos>920&&ypos<1080){
    scoreb=true;
  }else{scoreb=false;
}
  }
  
  
    void score2(){

  if(xpos>houseXpos-100&&xpos<houseXpos+100&&ypos>920&&ypos<1080){
    scoreb=true;
  }else{scoreb=false;
}
  }
  
  
  void miss(){
    if(xpos<420&&ypos>920&&ypos<1080||xpos>620&&ypos>920&&ypos<1080){
      missb=true;
    }else{missb=false;
}  
  }
    void miss2(){
    if(xpos<houseXpos-100&&ypos>920&&ypos<1080||xpos>houseXpos+100&&ypos>920&&ypos<1080){
      missb=true;
    }else{missb=false;
}  
  }
}
