//wk07_ex02_discreetFunctions
//add multiple function calls

//declare gloabal vars - these will be accessible everywhere
//you do this when you want to provide access to the vars 
//across functions
float x=1;
float y=1;
float speedX=1;
float speedY=1.5;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  move(); //function changes the xy position of the ball
  bounce(); //function holds a conditional which checks the edges
  display(); //function draw the ball
}

//move function
void move() {
  x = x+speedX;
  y = y+speedY;
}

//bounce function
void bounce() {
  if (x <= 0 || x >= width) {
    speedX = speedX * -1;
  } else if (y <= 0 || y >= height) {
    speedY = speedY * -1;
  }
}

//display function
void display() {
  fill(255);
  noStroke();
  ellipse(x, y, 25, 25);
}
