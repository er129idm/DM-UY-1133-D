//Ming Mai Class 4 Exercise
//this section of code is for determining how many days to list out
int m = month(); //brings in the current month as a number from 1-2
int d = day();   //brings in the current day as a number from 1-31
int y = year();  //brings in the current year

int daysInMonth = 0;// keeps track of number of days in current month | creates an integer variable

String[] mo = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}; //the array "mo" contains the written version of the months
String[] fortune    = new String[6]; //the array "fortune" contains the 6 different possible fortunes

String[] clothes = {"underwear", "socks", "leggings", "jeans", "earrings", "open toed shoes", "timbs"}; //defines array clothes
String[] adjectives = {"green", "Peppa pig", "indigo", "Supreme", "chicken-themed", "no", "black"}; //defines array adjectives

void setup() {

  //indices of array "fortune"
  fortune[0]="The spirits are very happy today! They will do their best to shower everyone with good fortune.";//array index 0
  fortune[1]="The spirits are in good humor today. I think you'll have a little extra fortune.";               //array index 1
  fortune[2]="The spirits feel neutral today. The day is in your hands.";                                      //array index 2
  fortune[3]="This is rare. The spirits feel absolutely neutral today.";                                       //array index 3
  fortune[4]="The spirits are somewhat annoyed / mildly perturbed today. fortune will not be on your side.";   //array index 4
  fortune[5]="The spirits are very displeased today. They will do their best to make your life difficult.";    //array index 5

  //this following section uses if and else to determine how many days in the month
  //the use of OR "||" was used to group months with the same number of days together
  if (m == 12 || m == 10 || m == 8 || m == 7 || m == 5 || m == 3 || m == 1) {
    daysInMonth = 31;
  } else if (m == 11 || m == 9 || m == 6 || m == 4) {
    daysInMonth = 30;
  } else {
    daysInMonth = 28; //the only month with 28 days is February making it the else clause
  }
} //close setup

void draw() {
  String currentMonth = mo[m-1]; //this gives the current month written in English (as opposed to numerical)

  //this tells the user the current date currentMonth gives the written form of the month, d and y were defined as global variables
  println("Today is " + currentMonth + " " + d + ", " + y + ".");
  //this for loop will assign a fortune for each day in the month
  //a local variable, i, is used to iterate over every day until the last day of the month is reached
  for (int i = 1; i <= daysInMonth; i++) {
    //this creates a local variable, luck, which will be the pointer for which fortune to select.
    //it's a random number which is the length of the array of possible fortunes
    int luck= int(random(fortune.length)); //creates local variable luck which returns a number
    String adj= adjectives[int(random(adjectives.length))]; //returns random String from "adjectives" takes a slice from the array
    String clo= clothes[int(random(clothes.length))]; //returns random String from "clothes" takes a slice from the array
    String sentence = currentMonth + " " + i + ". " + fortune[luck] + "\n"; //creates a string with the date and fortune 
    String advice = "To avoid any mishaps, you should wear " + adj + " " + clo + ". \n"; //creates a string with "adj" and "clo"
    if (luck > 3) { //if luck value is greater then 3 advice is added to the sentence
      sentence = sentence + advice; //advice is only fiven when there is a bad fortune
    }
    //shows the user fortune for every day in the current month in the form of "<month> <day>. <fortune>/"
    print(sentence);
  }
  noLoop();//this ensures that the fortunes for the month are only printed once
}
