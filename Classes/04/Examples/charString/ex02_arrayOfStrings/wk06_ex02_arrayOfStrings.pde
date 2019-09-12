//wk06_ex02_arrayOfStrings
//load an array with a set of strings 

//create an Array called string with a size of 5 places
String[] dinner= new String[5];
int meal=0;

//load the array in setup
void setup(){
  dinner[0]="chicken";
  dinner[1]="fish";
  dinner[2]="sea urchin";
  dinner[3]="pasta";
  dinner[4]="ice cream";
}
//nothing here
void draw(){
  
  
}
//have an output when mouseClicked
void mouseClicked (){
  //array index ID 'meal' neads to be a whole number but 'random' returns a float
  //wrapping it in (int) coverts the float to an int
  //random is between 0 and 5 which means bewteen 0.0001 and 4.9999 which converts to 
  // bewteen 0 and 4 as an int
    meal=int(random(0,5));
    println("DINNER IS "+dinner[meal]);
}
 
