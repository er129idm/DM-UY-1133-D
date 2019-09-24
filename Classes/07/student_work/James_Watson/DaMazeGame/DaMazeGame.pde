Boolean FirstScreen = true; //First Condition for Main Menu
Boolean upArrowIsHeld = false; //Condition To Move Up
Boolean leftArrowIsHeld = false; //Condition to Move Left
Boolean downArrowIsHeld = false; // Condition to Move Down 
Boolean rightArrowIsHeld = false; // Condition to Right 
float xPosition, yPosition; // The square moves based off x and y positions 
float movementSpeed = 10.0; //How Fast the square is moving
float scale = 0.25; // Shrinks the square to fit in maze

void setup() {
  size(1080, 1080); //Create canvas
  xPosition = 50; //Start at this X
  yPosition = 50; //Start at this Y
  rectMode(CENTER); //All rectangles will be centered
  background(255); //Make background black
  noStroke(); // No border

}
//Condition to draw rectangle as black and not as color of strokes
void defineRect(float a, float b){
  rectMode(CENTER);
  fill(0);
  stroke(10);
  rect(a, b, 0.5, 0.5);
}
 
void draw() {
  background(0); //Background is Black
  save("DaMazeGame.png");
  
if(FirstScreen == true){//If you are on main menuy then play following sequence"
  textAlign(CENTER); //Put Text in middle of Screen
  textSize(30); //Set Size of text
  text("MazeRunner by James Watson", 540, 340);
  text("There is One Rule if Your Square Touches The Line You're Out", 540,440);
  text("If That Happens. Press Left Click To Go Back and Try Again",540,540);
  text("Left Click To Begin...Good Luck",540,640); 
  //Text for Main Menu
}

else{ // If not on main menu is false then cut to second screen
  stroke(255);//Color of lines as white
  strokeWeight(100);//Set lines as thick
  //draw maze
  line(0,0,0,500);
  line(0,500,300,300);
  line(300,300, 300,0);
  line(300,0,540,0);
  line(540,0,700,300);
  line(700,300,800,300);
  line(800,300,1080,0);
  line(1080,0,1080,540);
  line(1080,540,540,540);
  line(540,540,540,810);
  line(540,810,810,810);
  line(810,810,1080,1080);
  line(1080,1080,300,1080);
  line(300,1080,300,540);
  line(300,540,0,1080);
  
  if (upArrowIsHeld) {//Move square up
    yPosition = yPosition - movementSpeed;
  }
  if (leftArrowIsHeld) {//Move square left
    xPosition = xPosition - movementSpeed;
  }
  if (downArrowIsHeld) {//Move square down
    yPosition = yPosition + movementSpeed;
  }
  if (rightArrowIsHeld) {//Move square right
    xPosition = xPosition + movementSpeed;
  }
  if (yPosition >= 1080) {//Set Bounds So square repeats if it exceeds it(Loops) on Y
      yPosition = yPosition - (1080/scale);
    }
    if (yPosition <= 0) {
      yPosition = yPosition + (1080/scale);
    }
    
    if (xPosition >= 1080) {//Set Bounds So square repeats if it exceeds it(loops) on Y
      xPosition = xPosition - (1080/scale);
    }
    if (xPosition <= 0) {
      xPosition = xPosition + (1080/scale);
    }

    if (upArrowIsHeld) {
      yPosition = yPosition - movementSpeed;
    }
    if (leftArrowIsHeld) {
      xPosition = xPosition - movementSpeed;
    }
    if (downArrowIsHeld) {
      yPosition = yPosition + movementSpeed;
      }
    if (rightArrowIsHeld) {
       xPosition = xPosition + movementSpeed;
     }
     scale(scale);//Redefine scale of rectangle based on its position 
     defineRect(xPosition, yPosition);
     
}
  
}

void mouseClicked(){

if(FirstScreen == true){//If on main menu click to go to second screen and vice vera
  FirstScreen = false; 
}
else{
  FirstScreen = true; 
}

}

void keyPressed() {//change special code for up,down,right, and left keys to move square. (CODE FROM CLASS).
if (key == CODED) {
    /// Move Character UP
    if (keyCode == UP) {
      upArrowIsHeld = true;
      downArrowIsHeld = false;
      leftArrowIsHeld = false;
      rightArrowIsHeld = false;
    }

    /// Move Character LEFT
    if (keyCode == LEFT) {
      upArrowIsHeld = false;
      downArrowIsHeld = false;
      leftArrowIsHeld = true;
      rightArrowIsHeld = false;
    }

    /// Move Character DOWN
    if (keyCode == DOWN) {
      upArrowIsHeld = false;
      downArrowIsHeld = true;
      leftArrowIsHeld = false;
      rightArrowIsHeld = false;
    }

    /// Move Character RIGHT
    if (keyCode == RIGHT) {
      upArrowIsHeld = false;
      downArrowIsHeld = false;
      leftArrowIsHeld = false;
      rightArrowIsHeld = true;
    }
  }
}

void keyReleased() {
}
