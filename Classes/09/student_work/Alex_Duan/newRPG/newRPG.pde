PImage imgHero;
Slime mySlime; 

String[]monster = {"slime", "wolf", "spider"};
int heroHealth = 0;
int heroAttack = 0;
int slimeHealth = 0;
int slimeAttack = 0;
int slimeX = 0;
int slimeY = 0;

Boolean enterArrowIsHeld = false;
Boolean upArrowIsHeld = false;
Boolean leftArrowIsHeld = false;
Boolean downArrowIsHeld = false;
Boolean rightArrowIsHeld = false;
float xPosition, yPosition;
float movementSpeed = 5.0;

void setup() {
  size(900, 900);

  imgHero = loadImage("hero.jpg");
  xPosition = width/2;
  yPosition = height/2;
  background(0);
  noStroke();
  heroHealth = int(random(60, 75));
  heroAttack = int(random(25, 55));
  mySlime = new Slime(int(random(0, width)), int(random(0, height)), 5, int(random(15, 30)), int(random(20, 25)));
}

void draw() {
  background(0);
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

  image(imgHero, xPosition, yPosition, 100, 100);
  slimeHealth = mySlime.getSlimeHealth();
  slimeAttack = mySlime.getSlimeAttack();
  mySlime.move();
  mySlime.display();
  int slimeX = mySlime.locateX();
  int slimeY = mySlime.locateY();
  //String randomMonster = monster[int(random(0, monster.length))];
  //if (randomMonster == "slime") {
    
    float slimeDistanceX = abs(slimeX - xPosition);
    float slimeDistanceY = abs(slimeY - yPosition);
    
    boolean slimeIsOverlappingX = false;
    boolean slimeIsOverlappingY = false;
    
    if (slimeDistanceX < 50) { slimeIsOverlappingX = true; }
    if (slimeDistanceY < 50) { slimeIsOverlappingY = true; }
    
    if (slimeIsOverlappingX && slimeIsOverlappingY) {
      
      println("WE ARE OVERLAPPING!");
      
      println("Press enter to continue");
      if (enterArrowIsHeld == true) {
        println("Hero meets Slime, Slime rushes Hero!");
        println("Press enter to continue");
        if (enterArrowIsHeld == true) {
          println("Hero attacks Slime for " + heroAttack);
          println("Press enter to continue");
          if (enterArrowIsHeld == true) {
            println("Hero attacks Slime for " + heroAttack);
            slimeHealth = slimeHealth - heroAttack;
            println("Press enter to continue");
            if (enterArrowIsHeld == true) {
              while (slimeHealth > 0) {
                println("Slime health is " + slimeHealth);
                println("Press enter to continue");
                if (enterArrowIsHeld == true) {

                  println("Slime attacks Hero for " + slimeAttack);
                  println("Press enter to continue");
                  if (enterArrowIsHeld == true) {

                    heroHealth = heroHealth - slimeAttack;
                    println("Hero health: " + heroHealth);
                    println("Press enter to continue");
                    if (enterArrowIsHeld == true) {

                      if (heroHealth <= 0) {
                        println("Hero health is " + heroHealth + " Hero has died");                           
                        exit();
                        return;
                      }
                      println("Hero attacks Slime for " + heroAttack);               
                      slimeHealth = slimeHealth - heroAttack;
                    }
                  }
                }
              }
            }
          }
        }
      }
    //}
  }

  ////how many times you will face monsters
  //for (int i = 0; i < 4; i++) {

  //  println(".........");

  //  //what monster you're gonna face each loop
  //  String randomMonster = monster[int(random(0, monster.length))];
  //  if (xPosition == random(1080) && yPosition == random(1080)){
  //    println("Hero meets " + randomMonster + ", " + randomMonster + " rushes Hero!");
  //    //slime
  //    if (randomMonster == "slime") {
  //      //randomly chooses health and attack of slime
  //      int slimeHealth = int(random(15, 30));
  //      int slimeAttack = int(random(20, 25));
  //      println("Hero attacks " + randomMonster + " for " + heroAttack);

  //      println(".........");

  //      slimeHealth = slimeHealth - heroAttack;
  //      //repeat until slime is dead
  //      while(slimeHealth > 0) {
  //        println("Slime health is " + slimeHealth);

  //        println(".........");

  //        println("Slime attacks " + randomHero + " for " + slimeAttack);

  //        println(".........");

  //        heroHealth = heroHealth - slimeAttack;
  //        println("Hero health: " + heroHealth);

  //        println(".........");

  //        // if hero dies before slime then program ends
  //        if (heroHealth <= 0) {
  //          println("Hero health is " + heroHealth + " Hero has died");

  //          println(".........");

  //          exit();
  //          return;
  //        }
  //        println("Hero attacks " + randomMonster + " for " + heroAttack);

  //        println(".........");

  //        slimeHealth = slimeHealth - heroAttack;
  //      }
  //    }
  //    //wolf
  //    if (randomMonster == "wolf") {
  //      //randomly sets health and attack of wolf
  //      int wolfHealth = int(random(50, 70));
  //      int wolfAttack = int(random(45, 55));
  //      println("Hero attacks " + randomMonster + " for " + heroAttack);

  //      println(".........");

  //      wolfHealth = wolfHealth - heroAttack;
  //      //repeat until wolf is dead
  //      while(wolfHealth > 0) {
  //        println("Wolf health is " + wolfHealth);

  //        println(".........");

  //        println("Wolf attacks " + randomHero + " for " + wolfAttack);

  //        println(".........");

  //        heroHealth = heroHealth - wolfAttack;
  //        println("Hero health: " + heroHealth);

  //        println(".........");

  //        //if hero dies before program ends
  //        if (heroHealth <= 0) {
  //          println("Hero health is " + heroHealth + " Hero has died");

  //          println(".........");

  //          exit();
  //          return;
  //        }
  //        println("Hero attacks " + randomMonster + " for " + heroAttack);

  //        println(".........");

  //        wolfHealth = wolfHealth - heroAttack;
  //      }
  //    }
  //    //spider
  //    if (randomMonster == "spider") {
  //      //randomly sets health and attack of spider
  //      int spiderHealth = int(random(30, 51));
  //      int spiderAttack = int(random(30, 40));
  //      println("Hero attacks " + randomMonster + " for " + heroAttack);

  //      println(".........");

  //      spiderHealth = spiderHealth - heroAttack;
  //      //repeat until spider dies
  //      while(spiderHealth > 0) {
  //        println("Spider health is " + spiderHealth);

  //        println(".........");

  //        println("Spider attacks " + randomHero + " for " + spiderAttack);

  //        println(".........");

  //        heroHealth = heroHealth - spiderAttack;
  //        println("Hero health: " + heroHealth);

  //        println(".........");

  //        //if hero dies beore program ends
  //        if (heroHealth <= 0) {
  //          println("Hero health is " + heroHealth + " Hero has died");

  //          println(".........");

  //          exit();
  //          return;
  //        }
  //        println("Hero attacks " + randomMonster + " for " + heroAttack);

  //        println(".........");

  //        spiderHealth = spiderHealth - heroAttack;
  //      }
  //    }
  //  } 
  //heroHealth = heroHealth + 13;
  //println("Hero defeats " + randomMonster + " and continues on his journey");

  //println(".........");

  //}
  //// after 4 runs hero is done and program restarts
  //println("Hero completes his journey and goes home");

  //println(".........");
}

void keyPressed() {

  if (key == CODED) {
    /// Move Character UP
    if (keyCode == ENTER) {
      enterArrowIsHeld = true;
    }

    /// Move Character UP
    if (keyCode == UP) {
      upArrowIsHeld = true;
    }

    /// Move Character LEFT
    if (keyCode == LEFT) {
      leftArrowIsHeld = true;
    }

    /// Move Character DOWN
    if (keyCode == DOWN) {
      downArrowIsHeld = true;
    }

    /// Move Character RIGHT
    if (keyCode == RIGHT) {
      rightArrowIsHeld = true;
    }
  }
}
  void keyReleased() {

    if (key == CODED) {
      /// Move Character UP
      if (keyCode == ENTER) {
        enterArrowIsHeld = false;
      }
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
