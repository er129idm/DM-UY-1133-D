//Ali DeCesare
//September 12 2019
//Assignment 3: all in the console
//MadLibs

//creating strings for each of the word types to be randomized

String[] adjective = {"perfect", "sudden", "crooked", "pretty", "nifty", "fuzzy", "empty"};
String[] noun = {"gate", "nation", "bubble", "cakes", "school", "glove", "office"};
String[] plural_noun = {"notes", "books", "bags", "cats", "flowers", "sisters", "scales"};
String[] game = {"checkers", "chess", "cribbage", "gin rummy", "poker", "solitaire", "tag"};
String[] verb_ing = {"performing", "running", "jumping", "sleeping", "bouncing", "begging", "working"};
String[] plant = {"apple tree", "sunflower", "palm tree", "fern", "daisy", "orange tree", "rose bush"};
String[] body_part = {"hand", "foot", "leg", "torso", "pinky finger", "head", "mouth"};
String[] place = {"home", "New York City", "Paris", "Antarctica", "Australia", "Canada", "The Sahara Desert"};
String[] number = {"42", "37", "95", "146,000", "425", "35", "one million"}; 

void setup(){
 
  noLoop();
  
}

void draw(){
  
  //creating the actual randomization of the strings
  //had to do one for each time a blank shows up because I kept getting the same randomized word for every time the same part of speech showed up
  //example: every time an adjective was called, it was always the same adjective
  
  String randomAdjective1 = adjective[int(random(0, adjective.length))];
  String randomAdjective2 = adjective[int(random(0, adjective.length))];
  String randomAdjective3 = adjective[int(random(0, adjective.length))];
  
  String randomNoun1 = noun[int(random(0, noun.length))];
  String randomNoun2 = noun[int(random(0, noun.length))];
  String randomNoun3 = noun[int(random(0, noun.length))];
  
  String randomPluralNoun1 = plural_noun[int(random(0, plural_noun.length))];
  String randomPluralNoun2 = plural_noun[int(random(0, plural_noun.length))];
  String randomPluralNoun3 = plural_noun[int(random(0, plural_noun.length))];
  String randomPluralNoun4 = plural_noun[int(random(0, plural_noun.length))];
  
  String randomGame = game[int(random(0, game.length))];
  
  String randomVerb_ing1 = verb_ing[int(random(0, verb_ing.length))];
  String randomVerb_ing2 = verb_ing[int(random(0, verb_ing.length))];
  String randomVerb_ing3 = verb_ing[int(random(0, verb_ing.length))];
  String randomVerb_ing4 = verb_ing[int(random(0, verb_ing.length))];
  
  String randomPlant = plant[int(random(0, plant.length))];
  
  String randomBodyPart = body_part[int(random(0, body_part.length))];
  
  String randomPlace = place[int(random(0, place.length))];
  
  String randomNumber = number[int(random(0, number.length))];
  
  //adding the randomized words to the madlib template
  /*this is where I'm having an issue because everytime I call "randomAdjective" or any of the randomized words, it's the same word 
  every time it's called. Is there a way to avoid this (that doesn't involve creating a different randomization for each iteration of the variable?*/
  
  /* ok so I ended up doing a different randomization for every blank space, but I'm still getting some overlap with the same word being generated. 
  Might just be because I don't have a big enough pool of words to have a different randomization every time?*/
  
  //3 adjectives, 3 nouns, 4 plural nouns, 1 game, 4 verb_ing, 1 plant, 1 body part, 1 place, 1 number
  
       println("A vacation is when you take a trip to some " 
              + randomAdjective1 + " place with your " 
              + randomAdjective2 + " family. Usually you go to some place that is near a/an " 
              + randomNoun1 + " or up on a/an " 
              + randomNoun2 + ". A good vacation place is one where you can ride " 
              + randomPluralNoun1 + " or play " 
              + randomGame + " or go hunting for " 
              + randomPluralNoun2 + ". I like to spend my time " 
              + randomVerb_ing1 + " or " 
              + randomVerb_ing2 + ". When parents go on a vacation, they spend their time eating three " 
              + randomPluralNoun3 + " a day, and fathers play golf, and mothers sit around " 
              + randomVerb_ing3 + ". Last summer, my little brother fell in a/an " 
              + randomNoun3 + " and got poison " 
              + randomPlant + " all over his " 
              + randomBodyPart + ". My family is going to go to " 
              + randomPlace + " for vacation this year, and I will practice " 
              + randomVerb_ing4 + ". Parents need vacations more than kids because parents are always very " 
              + randomAdjective3 + " and because they have to work " 
              + randomNumber + " hours every day all year making enough " 
              + randomPluralNoun4 + " to pay for the vacation.");

}
