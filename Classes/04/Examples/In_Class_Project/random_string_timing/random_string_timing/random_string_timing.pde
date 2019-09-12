String[] sounds = {"BOOP", "PLOP", "ZAP"};

void setup() {
}

void draw() {

  String loudSound = sounds[int(random(0, sounds.length))];
  println("\n");
  println(loudSound + "!");
  delay(1000);

  for (int i = 0; i < 10; i++) {
    print("bip. ");
    delay(100);
  }
}
