//Jaye Williams
//Homework 4 (9/12/19)

//create the various arrays required for story
String[] characters = {"magician", "troll", "college student", "fairy", "elf"};
String[] locations = {"bar", "library", "bookstore", "hospital"};
String[] emotions = {"angry", "cheerful", "stressed", "sad", "playful"};
String[] interactions = {"Are you ok?", "How are you?", "Hello there.", "Good afternoon.", "Sup?"};
String[] reactions = {"None of your business.", "Has anyone seen my magical bunny?", "It's been years since I've been here.", "I am doing just fine, thank you.", "Hmph."};
String[] staffReaction = {"Well then.", "That was interesting.", "Just another casual day at work.", "I need everyone to leave for you have made me rather uncomfortable."};

//set up program
void setup(){
}

void draw(){
  //choose random character
  int c = int(random(0,4));
  
  //choose random location
  int l = int(random(0,3));
  
  //choose random emotion
  int e = int(random(0,4));
  int e2 = int(random(0,4));
  
  //choose ramdom interaction
  int i = int(random(0,4));
  
  //choose random reaction
  int r = int(random(0,5));
  
  //choose random staff reaction
  int sr = int(random(0,3));
  
  //print out story using random inputs
  println("You and a(n) " + emotions[e] + " " + characters[c] + " walk into a " + locations[l] + " at the same time.");
  
  //add delay to time story
  delay(2500);
  
  //continue printing story lines and adding delays
  println("Being a decent human being, you look over at the " + characters[c] + " and say, " + interactions[i]);
  delay(2500);
  
  println("The " + characters[c] + " looks over at you and answers with " + reactions[r]);
  delay(2500);
  
  println("You simply nod.");
  delay(2500);
  
  println("The " + locations[l] + "'s " + emotions[e2] + " employee looks towards you and the " + characters[c] + " and says " + staffReaction[sr]);
  println("\n");
  delay(3500);
  
  println("But in parallel universe number c" + int(random(0,1000000000)) + " things went a little differently...");
  println("\n");
  delay(3500);
}
