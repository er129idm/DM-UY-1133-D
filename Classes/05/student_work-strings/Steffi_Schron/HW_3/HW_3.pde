//Define Strings
String[] colors = {"red", "yellow", "green", "purple"};
String[] objects = {"house", "window", "corvette"};
String[] verbs = {"wear", "walk", "say", "think"};
String[] plurals = {"words", "feelings", "people"};

void setup() {

//Define Format

  String randomColor = colors[int(random(0, colors.length))];
  String randomObject = objects[int(random(0, objects.length))];
  String randomVerb = verbs[int(random(0, verbs.length))];
  String randomPlurals = plurals[int(random(0, plurals.length))];
  
  println("\n");
  
//Song Lyrics
  
  println("I have a " +  randomColor + randomObject  + " with a blue window" );
  delay(900);
  println(randomColor + "is the " + randomObject + " of all that I wear");
  delay(900);
  println("Blue are the" + randomPlurals + "and all the" + randomPlurals + "are too");
  delay(900)
  ;
  println("I have a" + randomObject + "and she is so blue");
  delay(900)
  ;
  println(randomColor + "are the" + randomPlurals + "here that walk around");
  ;
  delay(900)
  ;
  println("Blue like my" + randomObject + "it's in and outside");
  delay(900)
  ;
  println(randomColor + "are the" + randomObject + "I say and what I think")
  ;
  delay(900)
  ;
  println("Blue are the" + randomPlurals + "that" + randomVerb + "inside me");
  delay(900)
  ;
  println("Im blue da ba dee da ba dai");
  delay(900);
  ;
  println("da ba deeeee da ba dai");
  delay(900);
  ;
  
int[] numbers = { 50, 120, 30 };  // Variables
int a = numbers[0] + numbers[1];  // Variable 'a' equals170
int b = numbers[1] + numbers[2];  // Variable 'b' equals 150
// Random
String[] words = { "yeah", "boo-yeah","classic","oooooo"};
int index = int(random(words.length));  // Same as int(random(4))
println(words[index]);  // Print word
}
