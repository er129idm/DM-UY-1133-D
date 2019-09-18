String[] players = {"2", "4", "6", "8", "10"}; // the number of players that are present 
String[] scored = {"2", "3"}; // the amount of points scored 
String[] points = {"5", "10", "15", "20", "25"}; // the total amount of points scored 
String[] names = {"Anthony Davis", "Kawhi Leonard", "Lebron James", "Damian Lillard", "Kevin Durant", "Stephen Curry"}; // names of different players
String[] names2 = {"Russell Westbrook", "James Harden", "Giannis Antetokounmpo", "Paul George"}; // another set of names
void setup() {
}

void draw(){
  String randomScored = scored[int(random(0, scored.length))]; // random amount of points scored 
  String randomPoints = points[int(random(0, points.length))]; // random points of points scored in total
  String randomNames2 = names2[int(random(0, names2.length))]; // another random instance of an array of players
  String randomPlayers = players[int(random(0, players.length))]; // random amount of players
  println("\n");
  delay(2000); // adding delay for better readability 
  println("There are currently " + randomPlayers + " " + "basketball players at the courts today.");
  int teamNumber = int(randomPlayers) / 2;
  delay(2000); // adding delay for better readability
  println("They are split up into two separate teams of " +  teamNumber); // creating a line of text for the story 
  delay(2000); // adding delay for better readability 
  for (int i = 0; i < int(random(1,2)); i++) { // for loop to cycle through random players and number of points 
     String randomNames = names[int(random(0, names.length))]; 
     println("We have " + randomNames + " on one team and");
     println(randomNames2 + " on the other team");
  delay(2000); // adding delay for better readability
  String randomScored2 = randomScored + 1; // using the next integer over to get another score for the second player 
  println(randomNames + " just scored " + randomScored + " points, he has scored " + randomPoints + " points this game");
  delay(2000);
  println("On the other other team");
  delay(2000);
  println(randomNames2 + " has scored " + randomScored2 + " this game"); // second player
  delay(100000);
  }
  

}
