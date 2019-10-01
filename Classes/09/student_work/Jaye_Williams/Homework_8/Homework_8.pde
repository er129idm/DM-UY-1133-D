//Jaye Williams
//Class 8 (9/26/19) Homework

//create any needed variables/objects
int state;
int totalSquares = 10;
int counter = 0;
ArrayList<Objective> squares = new ArrayList<Objective>();

//setup
void setup() {
  //canvas size
  size(1080, 1080);

  //create all the squares
  for (int i = 0; i < totalSquares; i++) {
    squares.add(new Objective());
  }

  //set state
  state = 1;
}

//draw
void draw() {

  //create what will be in state 1 (start screen)
  if (state == 1) {
    //create background
    background(100);

    //align and display text
    textSize(40);
    textAlign(CENTER, CENTER);
    text("Welcome to Pin the Tail", 540, 540);
    textAlign(CENTER, BOTTOM);
    text("Press 'Enter' to Start", 540, 810);
  } else if (state == 2) {
    //set background
    background(0);

    //align text and display
    textAlign(TOP, LEFT);

    int totalSquaresFound = 0;
    for (int i = 0; i < squares.size(); i++) {
      if (squares.get(i).found) {
        totalSquaresFound++;
      }
    }

    counter = totalSquaresFound;

    text(("You have found: " + totalSquaresFound), 100, 100);

    //make various 
    for (int i = 0; i < squares.size(); i++) {
      squares.get(i).found(mouseX, mouseY);
      squares.get(i).display();
    }
  } else if (state ==3) {
    //change background
    background(0, 43, 100);

    //align text and display
    textAlign(CENTER, CENTER);
    text("Congratulations! You pinned all the tails", 540, 540);
  }
  if (counter == 10) {
    //change state
    state = 3;
  }
}

//set up keyPressed function
void keyPressed() {
  //allow state to change when hitting enter
  if (key == ENTER) {
    state = 2;
  }
}

//set up mouseClicked function
void mouseClicked() {
  //counter +=1;
}
