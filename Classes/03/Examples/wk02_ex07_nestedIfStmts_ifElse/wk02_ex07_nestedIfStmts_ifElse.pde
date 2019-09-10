//wk02_ex07_nestedIfStatements_ifElse
// We are using nested IF statements to maintain
// a basic state-system.

//initialize variables
float posX = 10;
float posY = 10;

float move = 1;

int state = 0;

void setup() {
  size(500, 500);
}

void draw() {

  // Visual style
  background(255);
  color(0);
  strokeWeight(2);

  // Draw a line relative to the sketch dimension
  line(width/2, height/2, posX, posY);

  /* series of conditionals check the which number is assigned to the state var
   it will run the snippet of code inside the braces of that state until
   the posX or posY var exceeds the requirements of the second nested
   if statement at which point it changes the value of the state var */

  //.state is initially set to 0 so this code will run first
  if (state == 0) {
    
    //increase the PosX by 1
    posX = posX + 1;
    
    //check the val of posX
    //if it exceeds the width of the screen-10
    //set the val of posX to width-10 and change the val of state to 1
    
    if (posX >= width-10) { 
      posX = width-10;
      state = 1;
    }
    //if the val of state is 1 this code block will run
  }
  
  else if (state == 1) {
    posY = posY+1;
    if (posY >= height-10) {
      posY = height-10;
      state = 2;
    }
    //if the val of state is 2 this code block will run
  }
  
  else if (state == 2) {
    posX = posX-1;
    if (posX <= 10) {
      posX = 10;
      state = 3;
    }
    //if the val of state is 3 this code block will run
  }
  
  else if (state == 3) {
    posY = posY-1;
    if (posY <= 10) {
      posY = 10;
      state = 0;
    }
  }
}
