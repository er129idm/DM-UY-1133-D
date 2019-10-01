// Draws a random number of recursive circles on the screen
// RGBA values are also random
// Uses arrayList and custom class 

RecursiveCircle myRecCircle;

ArrayList<RecursiveCircle> recCircle = new ArrayList<RecursiveCircle>();



void setup(){
  size(1000, 1000);
  myRecCircle = new RecursiveCircle();
}

void draw(){
  
  background(255, 255, 255);
  
  myRecCircle.randomDisplay(int(random(10)));
  
  for (int i = 0; i < recCircle.size(); i++){
    recCircle.get(i).drawCircle();
  }
  
  delay(1500);
  
  
}


class RecursiveCircle{
  color clr;
  int x;
  int y;
  float radius;
  
  RecursiveCircle(){
    clr = color(int(random(255)), int(random(255)), int(random(255)), int(random(255)));
    x = int(random(1000));
    y = int(random(1000));
    radius = int(random(1000));
  }
  
  void drawCircle(){
    fill(clr);
    ellipse(x, y, radius, radius);
    if (radius > 2){
      radius *= 0.75f;
      drawCircle();
    }
  }
  
  void randomDisplay(int numCircle){
    for (int i = 0; i < numCircle; i++){
      recCircle.add(new RecursiveCircle());
    }
  } 
}
