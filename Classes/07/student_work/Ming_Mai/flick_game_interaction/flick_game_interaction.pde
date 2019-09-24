//this game is based off of the can tab flicking/ soju cap flicking game
int turn = 0; //defines an integer variable called turn 
float capHealth = 0; //defines a float variable called capHealth (float is compatible with random)
void setup() { 
  size(800, 800); //canvas size
  capHealth = random(200, 300); //sets the capHealth for this "game"
}
 
void draw() {
 
  if (turn == 1) { //if it's player 1's turn...
    background(255); //background white
    
    //the following creates a slanted rectangle
    translate(400, -100); 
    rotate(radians(30));
    rectMode(CENTER);
    fill(0);
    rect(width/2, height/2, 100, 600);
    
  } else { //otherwise do this
    background(255); //background white
    
    //the following creates a slanted rectangle but the other way
    translate(-200, 200); 
    rotate(radians(340));  
    rectMode(CENTER);
    fill(0);
    rect(width/2, height/2, 100, 600);
  }
 
  text("Player " + str(turn) + "'s turn.", 200, 100); //this displays whose turn it is 
  text("Health remaining: " + str(capHealth), 200, 200); //this display's the bottle cap's health
 
 //this is the endscreen 
  if (capHealth <= 0) { //if the capHeath is less than or equal to 0...
    background(255, 0, 0); //make the screen red
    String endScreen = "Player " + str(turn) + " wins!"; //create an endscreen string
    text(endScreen, width/2, height/2); //display the endscreen string
    noLoop(); //this makes sure players can't change the winner
  }
}
 
void keyReleased() { //this is interaction based on when a key is released
  if (turn == 0) { //if it's player 0's turn right now
    turn = 1; //set the turn to player 1 (oscillate)
    capHealth = capHealth-(random(10, 20)); //remove health everytime a turn passes
  } else { //otherwise
    turn = 0; //set the turn to 0 (if it's turn 1)
    capHealth = capHealth-(random(10, 20)); //remove health everytime a turn passes
  }
}

//uncomment the section below to take a screen capture of the sketch
//void mousePressed(){
//save("screenshot.png");
//}
