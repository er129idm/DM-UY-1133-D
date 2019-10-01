//James Watson 
// Basketball Game

int gameScreen = 0;//condition for game screen
Ball gameBall;
int value = 0;//condition starts at 0
boolean falling, Shoot, backboard, reset;//variables for ball movement 

void setup() {
  size(1080, 1080); //set size of canvas
   gameBall = new Ball();
  falling = false;//ball not going down 
  Shoot = false;//ball not moving towards basket
  reset = false;//ball does not reset to position
}

void draw () {
  if (gameScreen == 0) {//first screen 
    initScreen();
  } else if (gameScreen == 1) {//second screen
    gameScreen();
  }
}

void initScreen () {
  background(0);//black
  textAlign(CENTER);
  textSize(50);
  text("Basketball", 540, 340);
  text("By James Watson", 540, 440);
  text("Click P to Begin", 540, 540);
}

void gameScreen() {
  background(255);//white   
  if (gameBall.xpos >= width||gameBall.ypos >= height) {
    reset = true;//if ball goes outside border it resets to position
  }
  if (gameBall.xvel > 45) {//how fast ball moves in x
    gameBall.xvel = 45;
  }
  if (gameBall.yvel >45) {//how fast ball moves in y
    gameBall.yvel = 45;
  }
  if (Shoot == false||falling==false) {//shoot ball if both conditions are met and move in arch formation
    gameBall.xvel = (mouseX-width/5)/7;
    gameBall.yvel = (height-500 - mouseY)/7;
  }
  if (Shoot == true||falling==true) {//extra code not needed causes the arc to disappear if deleted
    falling = true;
    if (backboard) {
      gameBall.yvel -= 5 ;
      gameBall.xpos -= 1.25*gameBall.xvel;
    } else {
      gameBall.xpos+= gameBall.xvel;
    }

    gameBall.yvel -= gameBall.accel;
    gameBall.ypos -= gameBall.yvel;
  }

  ellipse(gameBall.xpos, gameBall.ypos, 30, 30);  //draw basketball
  {
    fill(204, 102, 0);//orange
  }
  if (reset == true) {//reset to this state if ball goes outside border 
    gameBall.xpos = width/5;
    gameBall.ypos = height-300;
    gameBall.yvel = 1;
    gameBall.xvel = 1;
    gameBall.accel = 2;
    falling = false;
    Shoot = false;  
    reset = false;
  }
  stroke(204, 102, 0);//orange
  strokeWeight(50);
  line(1080, 1080, 1080, 300);
  line(1080, 400, 750, 400);
}

void keyPressed() {
  if (key == 'p' || key == 'P') {//press p to play change state
    gameScreen = 1;
  } else {
    gameScreen = 0;
  }
}

void startGame() {
  gameScreen=1;//intial screen
}

void mouseClicked() {
  if (value == 0) {
    Shoot = true;//if mouse is clicked it shoots ball in condition set
  }
}
