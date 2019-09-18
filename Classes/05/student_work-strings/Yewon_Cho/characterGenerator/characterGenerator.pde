//Produce a sketch that takes place entirely in the debug console.

//This can be a piece of generative poetry, an animation, abstract illustration, etc...

//Use at least one array of Strings, and include at least one instance 
//of using random() to produce an index number to fetch a random item from an array.


//Character generator

String[] name = {"Alec", "Beth", "Mark", "Rachel", "Chloe", "Bob", "Alice", "Trudy", "Phil", "Claire"};
String[] age = {"11", "18", "21", "23", "28", "32", "37", "40", "44", "59", "80"};
String[] eyeColor = {"brown", "blue", "green", "gold", "purple"};
String[] hairColor = {"blonde", "brunette", "pink", "black", "blue", "white"};
String[] personality = {"kind", "grumpy", "energetic", "dramatic", "snobby", "mean", "complicated"};
String[] favMovie = {"Kill Bill", "Mean Girls", "Citizen Kane", "The Avengers", "Legally Blonde", 
                      "Titanic", "Star Wars", "Star Trek", "Frozen"};            
        
void setup() {}

void draw() {
  String randomName = name[int(random(0, name.length))];
  String randomAge = age[int(random(0, age.length))];
  String randomEyeColor = eyeColor[int(random(0, eyeColor.length))];
  String randomHairColor = hairColor[int(random(0, hairColor.length))];
  String randomPersonality = personality[int(random(0, personality.length))];
  String randomFavMovie = favMovie[int(random(0, favMovie.length))];
  
  println("\n");
  
  println("Your character's name is " + randomName, ".");
  println(randomName + " is " + randomAge + " years old.");
  println(randomName + " has " + randomEyeColor + " eyes and " + randomHairColor + " hair.");
  println("People say that" + randomName + " is a " + randomPersonality + " person.");
  println(randomName + "'s favorite movie is " + randomFavMovie + ".");

  delay(1500);
  
}


//Q. How do I get rid of the blank space surrounding an object from an array?
