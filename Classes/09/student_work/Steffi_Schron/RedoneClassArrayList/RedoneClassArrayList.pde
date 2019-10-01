ArrayList<Cube> cubes = new ArrayList<Cube>();

void setup() {
  size(500, 500);
}

void draw() {
  background(90, 70, 90);

  for (int i=0; i<cubes.size(); i++) {
    cubes.get(i).move(); 
    cubes.get(i).display();
    if (cubes.get(i).intersect == false) {
      cubes.reflect(i);
    }
  }
}

class Cube {
  //define variables
  float c; 
    float xpos; 
    float ypos; 
    float xspeed; 
    float yspeed; 
    float dia; 
    boolean collide; 

    //values
    Cube(float tempC, float tempXpos, float tempyYpos, float tempXspeed, float tempYspeed, float tempDia) {
    c=tempC; 
      xpos=tempXpos; 
      ypos=tempYpos; 
      xspeed=tempXspeed; 
      yspeed=tempYspeed; 
      dia=tempDia;
  }

  //function
  void display() {
    noStroke(); 
      fill(c); 
      rect(xpos, ypos, dia, dia);
  }

  //cube functions
  void move() {
    xpos = xpos + xspeed; 
    ypos = ypos + yspeed;
  if (xpos > width || xpos < 0) 
    xspeed = xspeed * -1;
   else if (ypos > height || ypos < 0) 
    yspeed = yspeed *-1; 
      translate(width/2, height/2); 
      rotate (PI/6.0); 
  }
