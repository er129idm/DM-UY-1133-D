class Ball{ //define class Ball (note the uppercase)
  int c; //declare the class's properties color, xposition, yposition, diameter
  float x;
  float y;
  float dia;
  
  Ball(int tc, float tx, float ty, float tdia){ //this allows the function to take on variables
    c = tc; 
    x = tx;
    y = ty;
    dia = tdia;
  }
  
  //what happens when draw is called
  void display(){ 
   noStroke();
   fill(c); //fill color
   ellipse(x, y, dia, dia); //create an ellipse
  }
  //this function makes balls outside a certain range fade away
  void meld(){
   if ((x < 100) || (x>400) || (y<100) || (y>400)){  
   c = lerpColor(c, 0, 0.50);}
  }
}

 
