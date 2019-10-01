PImage img;
boolean enterKeyIsHeld = false; //WHAT'S THE POINT OF THIS? When i delete, code works just the same
String[] image = {"smilingpuppy.jpg", "pigsleepingonaberry.jpg", "goofycat.jpg", "mouseonswing.jpg", "babygiraffe.jpg"};
//stores an array of images 


String randomImage = image[int(random(0, image.length))]; //sets that images are shown randomly
float xPosition, yPosition; 

int state = 0; // alows me to change state of sketch

void setup() {
  size(1080, 1080); 
  xPosition = width/2; //will set position to half of width
  yPosition = height/2; //will set position to half of height
}

void draw() {
  if (state == 0) { 
    background(0);
    textSize(30);
    fill(255);
    textAlign(CENTER); //changes allignment to center
    text("Hello user! Having a bad day? Let's see what we can do about that... \n Click 'Enter' for a surprise", xPosition, yPosition);
  }
  if (state == 1) { //sets what appears at state 1
    background(0);
    imageMode(CENTER);
    img = loadImage(randomImage); 
    image(img, xPosition, yPosition, xPosition, yPosition);
  }
}

void keyPressed() {
  if (key == CODED); 
  {
    if (key == ENTER); 
    { //sets what key activates change; discovered that any key works though????
      state = 1; //changes state when ENTER pressed
      enterKeyIsHeld = true;//don't know how to do this with left and right mouse
    }
  }
}
