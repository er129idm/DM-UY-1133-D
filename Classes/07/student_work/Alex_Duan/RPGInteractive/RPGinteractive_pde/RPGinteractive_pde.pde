PImage imgKnight;
PImage imgMage;
PImage imgAssasin;
PImage imgHero;

//array for characters and items
String[]hero = {"knight", "mage", "assasin"};
String[]weapon = {"sword", "staff", "knife"};
String[]monster = {"slime", "wolf", "spider"};
// initialize variables
int heroHealth = 0;
int heroAttack = 0;

Boolean upArrowIsHeld = false;
Boolean leftArrowIsHeld = false;
Boolean downArrowIsHeld = false;
Boolean rightArrowIsHeld = false;
float xPosition, yPosition;
float movementSpeed = 5.0;

void setup() {
  size(1080,1080);
  // Images must be in the "data" directory to load correctly
  imgKnight = loadImage("knight.png");
  imgMage = loadImage("mage1.png");
  imgAssasin = loadImage("assasin.jpg");
  
  xPosition = width/2;
  yPosition = height/2;
  background(0);
  noStroke();
}

void draw() {
  if (upArrowIsHeld) {
    yPosition = yPosition - movementSpeed;
  }
  if (leftArrowIsHeld) {
    xPosition = xPosition - movementSpeed;
  }
  if (downArrowIsHeld) {
    yPosition = yPosition + movementSpeed;
  }
  if (rightArrowIsHeld) {
    xPosition = xPosition + movementSpeed;
  }
  //choose characters randomly
  String randomHero = hero[int(random(0, hero.length))];
  delay (2500);
  println(".........");
  delay (2000);
  println("You are born in the world and your job is a " + randomHero);
  delay (2500);
  println(".........");
  delay (2000);
  //set health and attack based on what character
  if (randomHero == "knight") {
    imgHero = imgKnight;
    heroHealth = 75;
    heroAttack = 25;
  }
  if (randomHero == "mage") {
    imgHero = imgMage;
    heroHealth = 55;
    heroAttack = 35;
  }
  if (randomHero == "assasin") {
    imgHero = imgAssasin;
    heroHealth = 30;
    heroAttack = 50;
  }
  String randomWeapon = weapon[int(random(0, weapon.length))];
  println("You go to the weapon master and he gives you a " + randomWeapon);
  delay (2500);
  println(".........");
  delay (2000);
  println("You are all ready and decide to set off on your adventure");
  pushMatrix();
  image(imgHero, xPosition, yPosition);
  popMatrix();
  //how many times you will face monsters
  for (int i = 0; i < 4; i++) {
    delay (2500);
    println(".........");
    delay (2000);
    //what monster you're gonna face each loop
    String randomMonster = monster[int(random(0, monster.length))];
    float xMonster = random(0,1080);
    float yMonster = random(0,1080);
    if (xPosition == xMonster && yPosition == yMonster){
    println("Hero meets " + randomMonster + ", " + randomMonster + " rushes Hero!");
    //slime
    if (randomMonster == "slime") {
      //randomly chooses health and attack of slime
      int slimeHealth = int(random(15, 30));
      int slimeAttack = int(random(20, 25));
      println("Hero attacks " + randomMonster + " for " + heroAttack);
      delay (2500);
      println(".........");
      delay (2000);
      slimeHealth = slimeHealth - heroAttack;
      //repeat until slime is dead
      while(slimeHealth > 0) {
        println("Slime health is " + slimeHealth);
        delay (2500);
        println(".........");
        delay (2000);
        println("Slime attacks " + randomHero + " for " + slimeAttack);
        delay (2500);
        println(".........");
        delay (2000);
        heroHealth = heroHealth - slimeAttack;
        println("Hero health: " + heroHealth);
        delay (2500);
        println(".........");
        delay (2000);
        // if hero dies before slime then program ends
        if (heroHealth <= 0) {
          println("Hero health is " + heroHealth + " Hero has died");
          delay (2500);
          println(".........");
          delay (2000);
          exit();
          return;
        }
        println("Hero attacks " + randomMonster + " for " + heroAttack);
        delay (2500);
        println(".........");
        delay (2000);
        slimeHealth = slimeHealth - heroAttack;
      }
    }
    //wolf
    if (randomMonster == "wolf") {
      //randomly sets health and attack of wolf
      int wolfHealth = int(random(50, 70));
      int wolfAttack = int(random(45, 55));
      println("Hero attacks " + randomMonster + " for " + heroAttack);
      delay (2500);
      println(".........");
      delay (2000);
      wolfHealth = wolfHealth - heroAttack;
      //repeat until wolf is dead
      while(wolfHealth > 0) {
        println("Wolf health is " + wolfHealth);
        delay (2500);
        println(".........");
        delay (2000);
        println("Wolf attacks " + randomHero + " for " + wolfAttack);
        delay (2500);
        println(".........");
        delay (2000);
        heroHealth = heroHealth - wolfAttack;
        println("Hero health: " + heroHealth);
        delay (2500);
        println(".........");
        delay (2000);
        //if hero dies before program ends
        if (heroHealth <= 0) {
          println("Hero health is " + heroHealth + " Hero has died");
          delay (2500);
          println(".........");
          delay (2000);
          exit();
          return;
        }
        println("Hero attacks " + randomMonster + " for " + heroAttack);
        delay (2500);
        println(".........");
        delay (2000);
        wolfHealth = wolfHealth - heroAttack;
      }
    }
    //spider
    if (randomMonster == "spider") {
      //randomly sets health and attack of spider
      int spiderHealth = int(random(30, 51));
      int spiderAttack = int(random(30, 40));
      println("Hero attacks " + randomMonster + " for " + heroAttack);
      delay (2500);
      println(".........");
      delay (2000);
      spiderHealth = spiderHealth - heroAttack;
      //repeat until spider dies
      while(spiderHealth > 0) {
        println("Spider health is " + spiderHealth);
        delay (2500);
        println(".........");
        delay (2000);
        println("Spider attacks " + randomHero + " for " + spiderAttack);
        delay (2500);
        println(".........");
        delay (2000);
        heroHealth = heroHealth - spiderAttack;
        println("Hero health: " + heroHealth);
        delay (2500);
        println(".........");
        delay (2000);
        //if hero dies beore program ends
        if (heroHealth <= 0) {
          println("Hero health is " + heroHealth + " Hero has died");
          delay (2500);
          println(".........");
          delay (2000);
          exit();
          return;
        }
        println("Hero attacks " + randomMonster + " for " + heroAttack);
        delay (2500);
        println(".........");
        delay (2000);
        spiderHealth = spiderHealth - heroAttack;
      }
    }
    } 
  heroHealth = heroHealth + 13;
  println("Hero defeats " + randomMonster + " and continues on his journey");
  delay (2500);
  println(".........");
  delay (2000);
  }
  // after 4 runs hero is done and program restarts
  println("Hero completes his journey and goes home");
  delay (2500);
  println(".........");
  delay (2000);
}

void keyPressed() {

  if (key == CODED) {
    /// Move Character UP
    if (keyCode == UP) {
      upArrowIsHeld = true;
      downArrowIsHeld = false;
      leftArrowIsHeld = false;
      rightArrowIsHeld = false;
    }

    /// Move Character LEFT
    if (keyCode == LEFT) {
      upArrowIsHeld = false;
      downArrowIsHeld = false;
      leftArrowIsHeld = true;
      rightArrowIsHeld = false;
    }

    /// Move Character DOWN
    if (keyCode == DOWN) {
      upArrowIsHeld = false;
      downArrowIsHeld = true;
      leftArrowIsHeld = false;
      rightArrowIsHeld = false;
    }

    /// Move Character RIGHT
    if (keyCode == RIGHT) {
      upArrowIsHeld = false;
      downArrowIsHeld = false;
      leftArrowIsHeld = false;
      rightArrowIsHeld = true;
    }
  }
}

void keyReleased() {

  if (key == CODED) {
   /// Move Character UP
   if (keyCode == UP) {
      upArrowIsHeld = false;
  }

  /// Move Character LEFT
  if (keyCode == LEFT) {
    leftArrowIsHeld = false;
  }

  /// Move Character DOWN
  if (keyCode == DOWN) {
    downArrowIsHeld = false;
  }

  /// Move Character RIGHT
  if (keyCode == RIGHT) {
    rightArrowIsHeld = false;
  }
 }
}
