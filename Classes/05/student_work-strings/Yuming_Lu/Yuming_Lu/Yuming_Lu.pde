//set different mood into the string
//begin with the question How Are You Today
String[] mood = {"happy", "sad", "stunned", "lonely", "relaxed", "confused", "helpless", "uncertain", "angry", "delighted", };
int feeling = 0;
PFont f;
int fntSize = 10;
String selection = "How Are You Today?";

//set the property for the canvas and font
void setup() {
  size(500, 500);
  f=createFont("Helvetica-Bold", 36, true);
}

void draw() {
  //set the background color to be changing accoring to the mouse position
  fill(mouseX, value, mouseY);
  rect(0, 0, 500, 500);
  text("How Are You?", width/2, height/2);
  fill(mouseX, mouseY, 50);
  textFont(f, 40);
  textAlign(CENTER);
  text(selection, width/2, height/2);
  println("Have a nice day");
  delay(2000);
}

//when mouse is clicked, choose the words from string
void mouseClicked() {
  //choose from the selection
  feeling=int(random(0, 9)); 
  //sets the string for the text
  selection=mood[feeling];
}

//set the g value of the background when mouse is moved
int value = mouseX;
void mouseMoved() {
  value = value + 5;
  if (value > 255) {
    value = 0;
  }
}
