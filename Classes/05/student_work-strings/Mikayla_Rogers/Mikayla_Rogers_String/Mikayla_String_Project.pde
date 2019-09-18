String[]shelter = {"shielding you from sunstroke", "sheltering you from moonstroke"};
String[]adjectives = {"mine, redeemed, loved, paid for"};
String[]exclamations = {"!!!!!!!!!!!!!!", "xxxxxxxxxxxxx"};

void setup() {
}

void draw() {

  String randomShelter = shelter[int(random(0, shelter.length))];
  String randomAdjectives = adjectives[int(random(0, adjectives.length))];

  println("\n");

  println("right at your side" + "\n" + randomShelter + ".");
  delay (2500);
  println("\n" + "be still.............");
  delay (2000);
  println("x" + " " + randomAdjectives + " " + "x");

  delay (2000);

  for (int i = 0; i < int(random(1, 4)); i++) {
    String randomExclamation = exclamations[int(random(1, exclamations.length))];
    println("\n" + "~~ wave ~~" + "\n");
    delay(1000);
    print("after" + "\n");
    delay(1000);
    print("\n" + "~ ~ wave ~ ~" + "\n");
    delay(900);
    println("\n" + randomExclamation);
  }

  delay(1000);
  println("\n" + "no darkness no fear" + "\n" + "((...just love))");
  delay (1000);
  println("\n" + "x");
  delay (2000);
}
