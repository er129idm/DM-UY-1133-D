RecursiveCircles myRecCircle;

ArrayList<RecursiveCircles> recCircle = new ArrayList<RecursiveCircles>();



void setup(){
  size(1000, 1000);
  
  
  
  
}

void draw(){
  
  background(255, 255, 255);
  
  myRecCircle.randomDisplay(int(random(10)));
  
  for (int i = 0; i < recCircle.size(); i++){
    recCircle.get(i).drawCircle(

}


class RecursiveCircles{
  color clr;
  int cnt;
  int x;
  int y;
  float radius;
  
  RecursiveCircles(){
    clr = color(255, 255, 255);
    cnt = 0;
    x = 500;
    y = 500;
    radius = 1000;
  }
  
  void drawCircle(){
    clr = color(int(random(255)), int(random(255)), int(random(255)), int(random(255)));
    x = int(random(1000));
    y = int(random(1000));
    radius = int(random(1000));
  
    fill(clr);
    ellipse(x, y, radius, radius);
    if (radius > 2){
      radius *= 0.75f;
      drawCircle();
    }
  }
  
  void randomDisplay(int numCircle){
    for (int i = 0; i < numCircle; i++){
      recCircle.add(new RecursiveCircles());
    }
  } 
}

}
