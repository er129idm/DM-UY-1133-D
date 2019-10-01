// Jason's Week 4 Game


int totalTraps = 100;
ArrayList<Traps> bombs = new ArrayList<Traps>();
int totalTreasure = 1;
ArrayList<Treasure> goal = new ArrayList<Treasure>();

Players player1;
Players player2;
boolean wHeld = false, aHeld = false, dHeld = false, sHeld = false;
boolean iHeld = false, jHeld = false, lHeld = false, kHeld = false;

void setup() {
  size(1080, 1080);

  player1 = new Players(30, 30, 30, true);
  player2 = new Players(30, 970, 90, false);

  for (int i = 0; i < totalTraps; i++) {
    bombs.add(new Traps());
  }
  for (int f = 0; f < totalTreasure; f++) {
    goal.add(new Treasure());
  }
}

void draw() {

  background(0);

  player1.display();
  player2.display();


  for (int i = 0; i < bombs.size(); i++) {
    
    bombs.get(i).checkOverlap(player1.playerXPosition, player1.playerYPosition, 1);
    bombs.get(i).checkOverlap(player2.playerXPosition, player2.playerYPosition, 2);
    bombs.get(i).display();
 

    for (int f = 0; f < goal.size(); f++) {
      goal.get(f).checkOverlap(player1.playerXPosition, player1.playerYPosition);
      goal.get(f).checkOverlap(player2.playerXPosition, player2.playerYPosition);
      goal.get(f).display();
    }
  }

  {





  // the controls for player1  
  if (wHeld) {
    player1.playerYPosition = player1.playerYPosition - 3.0;
  }
  if (aHeld) {
    player1.playerXPosition = player1.playerXPosition - 3.0;
  }
  if (sHeld) {
    player1.playerYPosition = player1.playerYPosition + 3.0;
  }
  if (dHeld) {
    player1.playerXPosition = player1.playerXPosition + 3.0;
  }

  //the controls for player 2

  if (iHeld) {
    player2.playerYPosition = player2.playerYPosition - 3.0;
  }
  if (jHeld) {
    player2.playerXPosition = player2.playerXPosition - 3.0;
  }
  if (lHeld) {
    player2.playerXPosition = player2.playerXPosition +3.0;
  }
  if (kHeld) {
    player2.playerYPosition = player2.playerYPosition +3.0;
  }
}

}




void keyPressed() {
  if (key== 'w') {

    wHeld = true;
  }
  if (key== 'a') {

    aHeld = true;
  }
  if (key== 'd') {

    dHeld = true;
  }
  if (key== 's') {

    sHeld = true;
  }
  if (key== 'i') {

    iHeld = true;
  }
  if (key== 'j') {

    jHeld = true;
  }
  if (key== 'l') {

    lHeld = true;
  }
  if (key== 'k') {

    kHeld = true;
  }
}

void keyReleased() {
  if (key== 'w') {
    wHeld =false;
  }
  if (key== 'a') {
    aHeld =false;
  }
  if (key== 'd') {
    dHeld =false;
  }
  if (key== 's') {
    sHeld =false;
  }
  if (key== 'i') {
    iHeld =false;
  }
  if (key== 'j') {
    jHeld =false;
  }
  if (key== 'l') {
    lHeld =false;
  }
  if (key== 'k') {
    kHeld =false;
  }
}
