// Emma Cherveny
// Homework due: Tuesday, 9/17/19
// Effie -- Creative Coding

String[]verbing = {"working", "using social media", "smiling", "getting tattoos"};
String[]place = {"California", "the Upper West Side", "Long Island"};
String[]object = {"bricks", "booze", "a smirk"};
String[]food = {"burger", "chickpea salad sandwich", "single strip of jerkey"};
String[]adjective = {"a spooky", "a regrettable", "an awesome", "an insane"};
String[]animal = {"horse", "cat", "dog", "mouse", "bear", "armadillo"};
String[]sleepy = {"!!!!!!!!!!!!!!", "xxxxxxxxxxxxx"};

void setup() {

  String randomVerbing = verbing[int(random(0, verbing.length))];
  String randomPlace = place[int(random(0, place.length))];
  String randomObject = object[int(random(0, object.length))];
  String randomFood = food[int(random(0, food.length))];
  String randomAdjective = adjective[int(random(0, adjective.length))];
  String randomAnimal = animal[int(random(0, animal.length))];

  println("\n");

  println("My friends and I decided to take a break from" + "\n" + randomVerbing + " and roadtrip to some place called...");
  delay (2000);
  println("\n" + " '" + randomPlace + ".' " + "\n");
  delay (2000);
  println("What " + randomAdjective + " adventure it was going to be!" + "\n");
  delay (2000);
  println("With our backpacks full of the necessities: food, clothing and " + randomObject + ",");
  delay (2000);
  println("\n" + "we headed to the nearest auto-shop so that we could rent a car." + "\n");
  delay (3000);
  println("We drove on and off for days before stopping for a " + randomFood + " and finally reaching a hotel to get some sleep.");
  delay (5000);

  for (int i = 0; i < int(random(1, 3)); i++) {
    String randomSleepy = sleepy[int(random(1, sleepy.length))];
    println("\n" + "zzzzzzzzzzz" + "\n");
    delay(900);
    print("snoreeeee" + "\n");
    delay(700);
    print("\n" + "zzzzz" + "\n");
    delay(1500);
  }

  delay(1000);
  println("\n" + "The next morning," + "\n" + "we hiked up a " + randomAnimal + " trail and met some really cool people." + "\n");
  delay (2000);
  println("We ended up staying for coffee and then made our way back on the road.");
  delay (3000);
  println("But after a few hours had gone by, it started thrundering! Oh no!" + "\n");
  delay (3000);
  println("The storm was heading our way so we decided to go back to " + randomVerbing + ".");
  println("We knew that was our only chance of finding our way to our car!" + "\n");
  println("Before we knew it, it was raining " + randomAnimal + "s and " + randomAnimal + "s!" + "\n" + "How crazy!?" + "\n");
  delay (5000);
  println("And that's when we knew it! We were through with this place and ready to go home." + "\n");
  delay (2000);
  println("We hitchiked our way back to the car and stopped for a snack" + "\n");
  println("and made it home safe & sound without looking back.");
  println("the end :) ");
  delay (5000);
}
