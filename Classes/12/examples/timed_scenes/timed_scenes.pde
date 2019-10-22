/* == Example ==
   Most basic "timed scenes" implementation
   - e. Rieper / 2019                         */
   
int currentState = 0;

void setup() {
  size(640, 640);
  frameRate(30);
}

void draw() {
  background(0);
  textAlign(CENTER);
  textSize(24);
  
  /// "1000 * number of seconds"
  if (millis() > 1000 * 5) { currentState = 1; }
  if (millis() > 1000 * 10) { currentState = 2; }
  if (millis() > 1000 * 15) { currentState = 3; }
  if (millis() > 1000 * 20) { currentState = 4; }
  /// Etc...
  
  /// Draw the corresponding state
  if (currentState == 0) { drawScene00(); }
  if (currentState == 1) { drawScene01(); }
  if (currentState == 2) { drawScene02(); }
  if (currentState == 3) { drawScene03(); }
  if (currentState == 4) { drawScene04(); }
  /// Etc...
  
  println("currentState: " + currentState);
  
}

void drawScene00() {
  background(#AAAAAA);
  text("Scene ZERO at: " + millis(), width/2, height/2);
}

void drawScene01() {
  background(#FF0072);
  text("Scene ONE at: " + millis(), width/2, height/2);
}

void drawScene02() {
  background(#00FF00);
  text("Scene TWO at: " + millis(), width/2, height/2);
}

void drawScene03() {
  background(#0000FF);
  text("Scene THREE at: " + millis(), width/2, height/2);
}

void drawScene04() {
  background(#FF0000);
  text("Scene FOUR at: " + millis(), width/2, height/2);
}
