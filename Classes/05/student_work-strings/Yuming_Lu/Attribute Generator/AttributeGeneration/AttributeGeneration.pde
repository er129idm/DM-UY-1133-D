String[] flavor ={"vanilla", "banana", "strawberry", "coconut", "pineapple", "sea", "mint", "ginger", "apple", "chocolate", "coffee"};
String[] object ={"bubbletea", "dumpling", "noodle", "aloe", "cat", "dog", "dolphin", "elephant", "tree", "poppy", "hamburger"};

void setup() {
}


void draw() { 

  String randomFlavor = flavor[int(random(0, flavor.length))];
  String randomObject = object[int(random(0, flavor.length))];


  println("\n");
  println("Hello, human being");
  delay(3000);
  println("Can I tell you a secret?");
  delay(3000);
  println("Every human being is born with a second self");
  delay(3000);
  println("which is his hidden attribute");
  delay(3000);
  println("For example, my hidden attribute is a coconut flavored bubbletea");
  delay(3000);
  println("My mom is a chicken flavored rice dumpling");
  delay(3000);
  println("Do you know what is your hidden attribute?");
  delay(3000);
  println("Let's test it out!");
  delay(3000);
  println("Sit still in front of the computer");
  delay(3000);
  println("Let me read your mind");
  delay(3000);
  println("Don't rush");
  delay(3000);
  println("Let's wait together");
  delay(3000);
  println("10");
  delay(3000);
  println("9");
  delay(3000);
  println("8");
  delay(3000);
  println("7");
  delay(3000);
  println("6");
  delay(3000);
  println("5");
  delay(3000);
  println("4");
  delay(3000);
  println("3");
  delay(3000);
  println("2");
  delay(3000);
  println("1");
  delay(3000);
  println("Ta da !!!!!");
  delay(3000);
  println("You are a " + randomFlavor + " flavored " + randomObject + ".");
  delay(6000);
}
