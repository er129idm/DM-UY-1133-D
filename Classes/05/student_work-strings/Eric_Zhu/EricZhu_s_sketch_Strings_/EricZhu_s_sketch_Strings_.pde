

String[] letter = {"a", "b", "c", "d","e","f", "g", "h",
"i","j","k", "l", "m", "n","o","p", "q", "r", 
"s","t","u", "v", "w", "x","y","z"};
String[] consonant = {"b", "c", "d","f", "g", "h",
"j","k", "l", "m", "n","p", "r", 
"s","t", "v", "w"};
String[] vowel = {"a","e","i","o"};


void setup() { 
  println("\n");
   
  println("This is a vocabulary game.");

   delay(3000);
   println("You need to take out a piece of paper and a pen.");
   
   delay(3000);
   println("You have 30 seconds to do that.");
   delay(1000);
   println("30");
   delay(1000);
   println("29");
   delay(1000);
   println("28");
   delay(1000);
   println("27");
   delay(1000);
   println("26");
   delay(1000);
   println("25");
   delay(1000);
   println("24");
   delay(1000);
   println("23");
   delay(1000);
   println("22");
   delay(1000);
   println("21");
   delay(1000);
   println("20");
   delay(1000);
   println("19");
   delay(1000);
   println("18");
   delay(1000);
   println("17");
   delay(1000);
   println("16");
   delay(1000);
   println("15");
   delay(1000);
   println("14");
   delay(1000);
   println("13");
   delay(1000);
 println("12");
   delay(1000);
   println("11");
   delay(1000);
   println("10");
   delay(1000);
   println("9");
   delay(1000);
   println("8");
   delay(1000);
   println("7");
   delay(1000);
   println("6");
   delay(1000);
   println("5");
   delay(1000);
   println("4");
   delay(1000);
   println("3");
   delay(1000);
   println("2");
   delay(1000);
   println("1");
   delay(1000);
   
   println("Here comes the rule! ");
   delay(3000);
   println("The screen will appear something like this 'C_T'.");

   delay(3000);
   println(" And, you need to think about any letter that can make it an English word.");

   delay(4000);
   println("Write down any letter that is correct.");

   delay(3000);
   println("People who has the most correct answer will be the winner.");
   

   delay(4000);
   println("You have only 20 senconds to come up with possible answers.");

   delay(4000);


  
  noLoop();
}

void draw() {

  String randomLetter1 = letter[int(random(0, letter.length))];
  String randomLetter2 = letter[int(random(0, letter.length))];
  String randomConsonant = consonant[int(random(0, consonant.length))];
   String randomVowel = vowel[int(random(0, vowel.length))];
  
  String randomThreeLetterWord1 =randomLetter1 + "_" + randomLetter2;
  String randomThreeLetterWord2 =randomConsonant +  randomVowel +"_";
  String randomFourLetterWord =randomConsonant+"a" + "_"  + "e";
  
  
  String [] word={randomThreeLetterWord1,randomThreeLetterWord2,randomFourLetterWord };
  String randomWord = word[int(random(0, word.length))];


   println("The GAME BEGINS IN ...");
   delay(1000);
   println("3");
   delay(1000);
   println("2");
   delay(1000);
   println("1");
   delay(1000);
    println("GO!");
    delay(1000);
    
    println(randomWord);
    
    
     println("20 "+randomWord);
   delay(1000);
   println("19");
   delay(1000);
   println("18 "+randomWord);
   delay(1000);
   println("17");
   delay(1000);
   println("16 "+randomWord);
   delay(1000);
   println("15");
   delay(1000);
   println("14 "+randomWord);
   delay(1000);
   println("13");
   delay(1000);
   println("12 "+randomWord);
   delay(1000);
   println("11");
   delay(1000);
   println("10 "+randomWord);
   delay(1000);
   println("9");
   delay(1000);
   println("8 "+randomWord);
   delay(1000);
   println("7");
   delay(1000);
   println("6 "+randomWord);
   delay(1000);
   println("5");
   delay(1000);
   println("4 "+randomWord);
   delay(1000);
   println("3");
   delay(1000);
   println("2 "+randomWord);
   delay(1000);
   println("1");
   delay(1000);
   println("TIME'S UP");
    println("How many answers do you have? ");
    println("PRESS 'R' TO PLAY A AGAIN!!!!! ");
}


void keyTyped() {
    if (key == 'r' || key == 'R') {
     redraw();}
}
