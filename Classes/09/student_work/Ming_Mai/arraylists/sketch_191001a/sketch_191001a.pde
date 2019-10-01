ArrayList<Ball> balls = new ArrayList<Ball>(); //this creates an arraylist Ball which contains balls

void setup() {
  size(500, 500); //canvas size 500 by 500
}

void draw() {
  background(0);
  for (int i=0; i<balls.size(); i++) { //declares i starting at 0, keep on going while i is less than the number of balls, add 1 
    balls.get(i).display(); //calls the display function
    balls.get(i).meld(); //calls the meld function
  }
}

void keyPressed() { //when a key is pressed(or held down)
  color c = 0; //declares variable c
  float k = random (10); //declares variable k
  if (k < 5) { //make approxiamately half the balls green
    c = color (34, 139, 34); 
  } else { // and the other half random colored
    c = color(random(255), random(255), random(255));
  }
  balls.add(new Ball( c, random(500), random(500), 10.0)); // create a new ball 
}
