String[] dinner={"chicken", "fish", "sea urchin", "pasta", "ice cream"};
int meal=0;
PFont f;
int fntSize=10;
String selection = "what's for dinner?";
boolean tryAgain = true;

void setup() {

  size(500, 500);
  background(0);
  f=createFont("Helvetica-Bold", 36, true);
}

void draw() {

  background(0);
  fill(255);
  textFont(f, 48);
  textAlign(CENTER);

  if (tryAgain == true) {
    fill(255,0,0);
    text("what's for dinner?", width/2, height/2);
  } else {
    fill(0,255,0);
    text(selection, width/2, height/2);
  }
}

void mouseClicked () {

  //array index ID 'meal' neads to be a whole number but 'random' returns a float
  //wrapping it in (int) coverts the float to an int
  //random is between 0 and 5 which means bewteen 0.0001 and 4.9999 which converts to 
  // bewteen 0 and 4 as an int

  meal = int(random(0, 5));

  //passes the string to the text
  selection = dinner[meal];

  // Flips the tryAgain boolean.
  tryAgain = !tryAgain;
  
}
