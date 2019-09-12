//wk06_ex01_charsAndStrings
//there is no setup and draw here because we are just using the console window.

//the char variable holds a single letter
//note the single quotes
char q ='a';

//chars all have keyboard codes btwn 32 and 126
//38 call the &
char w = 38;

//a group of characters is a string
//note the double quote
String e = "I am a longer line of text.";

//you can change the text to uppercase by using the toUpperCase() method
String r = e.toUpperCase();

//print character
println(q);

//print char associated with numeric keycode equivilent
println(w);

//print String
println(e);

//print String in all Upper Case
println(r);

//print to strings together.
println(e + " vs " + r);
