PImage img;
boolean enterKeyIsHeld = false; 
String[] image = {"smilingpuppy.jpg", "pigonastrawberry.jpg", "goofycat.jpg", "mouseonswing.jpg", "babygiraffe.jpg"};
//stores an array of images 


String randomImage = image[int(random(0, image.length))]; //sets that images are shown randomly
float xPosition, yPosition; //help position elements of text

int state = 0; // alows me to change state of sketch

void setup() {
  size(1080, 1080); 
  xPosition = width/2; //will set position to half of width
  yPosition = height/2; //will set position to half of height
  background(0);
}

void draw() {
  state = 0;
  textSize(30);
  fill(255);
  text("Hello user! Having a bad day? Let's see what we can do about that... Click 'Enter' for a surprise", xPosition, yPosition);
}

void keyPressed() {
  if (key == CODED); 
  {
    if (key == ENTER); 
    {
      enterKeyIsHeld = true;
      //don't know how to do this with left and right mouse
      state = 1; //changes screen
    }

    if (state == 1) {
      img = loadImage(randomImage); 
      image(img, xPosition, yPosition);
    }
  } 
}
 
