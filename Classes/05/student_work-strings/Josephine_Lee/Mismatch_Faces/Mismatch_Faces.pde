String[] brows = {"=  =", "-  -", "^  ^"};
String[] eyes = {"o  o","*  *","$  $"};
String[] nose = {" .. "};
String[] mouth = {" __ "," 0 "," ~~ "," U "};

void setup() {
}

void draw() {
  
    String randomBrows = brows[int(random(0, brows.length))];
    String randomEyes = eyes[int(random(0, eyes.length))];
    String randomNose = nose[int(random(0, nose.length))];
    String randomMouth = mouth[int(random(0, mouth.length))];
    
    println("\n");
    
    println(randomBrows);
    delay(10);
    println(randomEyes);
    delay(10);
    println(randomNose);
    delay(10);
    println(randomMouth);
    delay(1000);
    
    
}
