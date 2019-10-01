//Color_Function
PImage img;
int i = 1;

void setup () {
  size(1080, 1080);
  background(0);
  img = loadImage("gudatama.png");
  //Starting text
  textSize(32);
  text("Would You Like Me To Draw Something For You\na.Yes      b.No", 200, 200);
}


void draw() {
  //For the pen tool
  float mappedXColor = map(mouseX, 0, width, 0, 255);
  float mappedYColor = map(mouseY, 0, width, 0, 255);

  fill(0, mappedYColor, mappedXColor);
  if (keyPressed) {
    if (key == 'o' || key == 'O') {
      stroke(255, 89, 0);
      fill(255, 89, 0);
      ellipse(mouseX, mouseY, 32, 32);
    }
  }
  if (keyPressed) {
    if (key == 'i' || key == 'I') {
      stroke(115, 48, 13);
      fill(115, 48, 13);
      ellipse(mouseX, mouseY, 32, 32);
    }
  }
  if (keyPressed) {
    if (key=='j' || key=='J') {
      stroke(mappedYColor, 0, mappedXColor);
      fill(mappedYColor, 0, mappedXColor);
      ellipse(mouseX, mouseY, 32, 32);
    }
  }
}
void keyPressed() {
  textSize(32);
  if (i == 1) {

    fill(0);
    //Answer to the first question
    if (keyPressed) {
      if (key == 'a' || key =='A') {
        background(0);
        fill(255);
        text("Yay! Let's Draw A House. Click c", 200, 200);
      }
    }
    //Answer to the first question
    if (keyPressed) {
      if (key == 'b' || key == 'B') {
        background(0);
        fill(255);
        text("Alright, here's gudatama instead then.", 100, 200);
        delay(100);
        image(img, 200, 200, width/2, height/2);
        fill(255);
        text("To start over click u", 700, 200);
      }
    }
    //Answer to the second question
    if (keyPressed) {
      if (key == 'c' || key == 'C') {
        background(0);
        drawHouse();
        fill(255);
        text("Would You Like Me To Color It?\ne.Yes        f.No", 200, 100);
      }
    }
    //Answer to the second question
    if (keyPressed) {
      if (key == 'f' || key== 'F') {
        background(0);
        fill(255);
        drawHouse();
        fill(255);
        text("Alright. Color it yourself.", 100, 100);
        textSize(20);
        text("Hold o for an orange pen \n Hold i for a brown pen \n Hold j for a gradient pen", 800, 100);
        fill(255);
        text("To start over click u", 800, 200);
      }
    }
    //Answer to the second question
    if (keyPressed) {
      if (key == 'e' || key == 'E') {
        background(0);
        colorHouse();
        fill(255);
        text("Ok time for the sun \nclick g for the sun", 300, 50);
      }
    }
    //To make the sun and cover the last text without taking away the house
    if (keyPressed) {
      if (key == 'g' || key == 'G') {
        fill(0);
        stroke(0);
        rect(300, 10, 300, 100);
        colorSun();
        fill(255);
        text("OK It's Done", 50, 50);
        fill(255);
        text("To start over click u", 700, 200);
      }
    }
    //Restarts the program
    if (keyPressed) {
      if (key=='u' || key =='U') {
        background(0);
        fill(255);
        text("Would You Like Me To Draw Something For You\na.Yes      b.No", 200, 200);
      }
    }
  }
}

//Outline of the house
void drawHouse() {

  stroke (255);
  strokeWeight(4);
  fill(0);
  rect(100, 450, 700, 450);//base
  triangle(100, 450, 450, 150, 800, 450);//roof
  rect(350, 650, 200, 250);//door
  ellipse(390, 800, 20, 20);//door handle
}
//Makes a colored house
void colorHouse() {
  fill(0, 42, 255);
  triangle(100, 450, 450, 150, 800, 450);
  fill(255, 121, 5);
  rect(100, 450, 700, 450);
  fill(102, 52, 0);
  rect(350, 650, 200, 250);
  fill(234, 242, 0);
  ellipse(390, 800, 20, 20);
}


//Makes the sun
void colorSun() {
  fill(255, 255, 51);
  ellipse(200, 200, 100, 100);
}
