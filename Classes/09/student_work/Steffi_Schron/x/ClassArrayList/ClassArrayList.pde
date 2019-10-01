Cube[] cubes =  { 
  new Cube(100, 400, 20), 
  new Cube(700, 400, 80) 
};

void setup() {
  size(400, 400);
}

void draw() {
  background(33);

  for (Cube c : cubes) {
    c.update();
    c.display();
    c.checkBoundaryCollision();
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
  }
    if (xpos > width || xpos < 0) {
      xspeed = xspeed * -1;
    }else if (ypos > height || ypos < 0) {
  yspeed = yspeed *-1; 
    translate(width/2, height/2);
    rotate (PI/6.0);
    rect(xpos,ypos,dia,dia);
    ]
  
