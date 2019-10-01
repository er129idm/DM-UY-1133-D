//Jaye Williams
//Class 7 (9/24/19) Homework

//allow images to be uploaded into program
PImage img1;
PImage img2;
PImage img3;

//define any needed variables
int state = 0;

//setup
void setup() {
  //canvas size
  size(1080, 1080);
  
  //load images
  img1 = loadImage("charlie.png");
  img2 = loadImage("meredith.png");
  img3 = loadImage("both.jpg");
}

void draw() {
  //create what will be in state 0 (starting screen)
  if (state == 0) {
    state0();
    
    //state1
  } else if (state == 1) {
    state1();
    
    //state 2
  } else if (state == 2) {
    state2();
  }
}

//state0 function
void state0() {
  background(0, 0, 0);
  
  //size and align text
  textSize(60);
  textAlign(CENTER, CENTER);
  
  //display message
  text("Want to see something cute?", 540, 540);
  
  //change state
  state = 1;
}

//state1 function
void state1() {
  //set delay to read words
  delay(3000);
  
  //set background
  background(147, 212, 98);
  
  //change what is displayed
  text("Cool :)", 540, 540);
  
  //change state
  state = 2;
}

//state2 function
void state2() {
  //add delay
  delay(5000);
  
  //change background
  background(235, 74, 151);
  
  //display text
  text("Press 'a', 'b', or 'c' on your keyboard", 540, 540);
}

//set up keyPressed funciton
void keyPressed() {
  //if a is pressed show first image
  if (key == 'A' || key == 'a') {
    image(img1, 0, 0);

    //if b is pressed show second image
  } else if (key == 'B' || key == 'b') {
    image(img2, 0, 0);

    //if c is pressed show third image
  } else if (key == 'C' || key == 'c') {
    image(img3, 0, 0);

    //set up way to save screen to a png
  } else if (key == 's' || key == 'S') {
    save("picture.png");
  }
}
