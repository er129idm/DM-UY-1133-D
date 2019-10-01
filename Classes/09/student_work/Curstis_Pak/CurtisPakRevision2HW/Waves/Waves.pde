Wave[] waves = new Wave[1000];

void setup() {
  size(1080, 1080);
  for (int i = 0; i < waves.length; i++){
    waves[i] = new Wave(random(0,900), random(height/2, 900), random(300,900), random(0,50), random(15, 20), 180, 0, PI);
  
}
}
void draw() {
  background(245, 245, 220); // creating beige background similar to the piece
    for (int i = 0; i < waves.length; i++){
      waves[i].move();
      waves[i].display();
    }
  triangle(width/3, height - 270, width/2, height/2, width - 360, height - 270);
  
  
  //rect(0, height/2 , 1080, 1080);
}
  


class Wave {
  color c;
  float globalX; // moving the wave in the x coordinate
  float globalY; // moving the wave in the y coordinate
  float ellipseX;
  float ellipseY;
  float speedX;
  float speedY;
  float rotation;
  float starting;
  float stopping;

  Wave(float tempGlobalX, float tempGlobalY, float tempEllipseX, float tempEllipseY, float tempSpeedX, float tempRotation, float tempStarting, float tempStopping) {
    globalX = tempGlobalX;
    globalY = tempGlobalY;
    ellipseX = tempEllipseX;
    ellipseY = tempEllipseY;
    speedX = tempSpeedX;
    rotation = tempRotation;
    starting = tempStarting;
    stopping = tempStopping;
  }
  void display(){
    noFill();
    stroke(0, 0, 255);
    strokeWeight(4);
    arc(globalX, globalY, ellipseX, ellipseY, starting, stopping);
    /* rotate(rotation);
    translate(100, 100); */
  }
  
  void move(){
    
    globalX = globalX + speedX;
    globalY = globalY + speedX;
    globalY = constrain(globalY, 700, 1080); // constrain the waves to the ground
    if (globalX > width || globalX < 0){
      speedX = speedX*-1;
    }else if(globalY > height || globalY < 0 ){
      speedY = speedY*-1;
    }
  }
}


  
  


      
    
