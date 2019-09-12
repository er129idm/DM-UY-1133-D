String[] places = {"forest", "classroom", "subway", "chat-room"};
String[] senses = {"cool", "humid", "hot", "dry", "dusty"};
String[] smells = {"spicy", "funky", "cheesy", "floral"};
String[] creatures = {"rat", "pigeon", "dog", "cat", "NYU Student"};

void setup() {
}

void draw() {

  String randomPlace = places[int(random(0, places.length))];
  String randomSense = senses[int(random(0, senses.length))];
  String randomSmell = smells[int(random(0, smells.length))];
  
  println("\n");
  
  println("You enter a " + randomSmell + " " + randomPlace + ".");
  delay(1000);
  println("The air is " + randomSense + " here...");

  delay(1000);
  
  for (int i = 0; i < int(random(1,10)); i++) {
    String randomCreature = creatures[int(random(0, creatures.length))];
    println("A wild " + randomCreature + " runs across your foot!");
    delay(500);
  }
  
  delay(500);
  println("\nYou escape and move on to the next room...");
  delay(3000);
}
