//array for characters and items
String[]hero = {"knight", "mage", "assasin"};
String[]weapon = {"sword", "staff", "knife"};
String[]monster = {"slime", "wolf", "spider"};
// initialize variables
int heroHealth = 0;
int heroAttack = 0; 
void setup() {
}

void draw() {
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
    heroHealth = 75;
    heroAttack = 25;
  }
  if (randomHero == "mage") {
    heroHealth = 55;
    heroAttack = 35;
  }
  if (randomHero == "assasin") {
    heroHealth = 30;
    heroAttack = 50;
  }
  String randomWeapon = weapon[int(random(0, weapon.length))];
  println("You go to the weapon master and he gives you a " + randomWeapon);
  delay (2500);
  println(".........");
  delay (2000);
  println("You are all ready and decide to set off on your adventure");
  //how many times you will face monsters
  for (int i = 0; i < 4; i++) {
    delay (2500);
    println(".........");
    delay (2000);
    //what monster you're gonna face each loop
    String randomMonster = monster[int(random(0, monster.length))];
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
