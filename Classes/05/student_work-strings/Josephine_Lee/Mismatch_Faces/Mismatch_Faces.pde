String[] brows = {"=  =", "-  -", "^  ^"};//The string for the brows of the emoticon
String[] eyes = {"o  o", "*  *", "$  $"};//The string for the eyes of the emoticon
String[] nose = {" .. "};//The string for the nose of the emoticon
String[] mouth = {" __ ", " 0 ", " ~~ ", " U "};//The string for the mouth of the emoticon

void setup() {
}

void draw() {

  String randomBrows = brows[int(random(0, brows.length))];//Chooses a random brow from the string
  String randomEyes = eyes[int(random(0, eyes.length))];//Chooses a random eye from the string
  String randomNose = nose[int(random(0, nose.length))];//Chooses a random nose from the string 
  String randomMouth = mouth[int(random(0, mouth.length))];//Chooses a random mouth from the string

  println("\n");//Skips a line from each emoticon

  println(randomBrows);//Prints the brow in the console
  delay(10);
  println(randomEyes);//Prints the eyes in the console
  delay(10);
  println(randomNose);//Prints the nose in the console
  delay(10);
  println(randomMouth);//Prints the mouth in the console
  delay(1000);
}
