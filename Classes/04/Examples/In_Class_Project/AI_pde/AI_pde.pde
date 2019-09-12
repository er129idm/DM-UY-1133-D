/*
 ~ 2019 ~~~~~~~~~~~ effie. ~
 AI : AUTOMATED _ INSTRUCTOR
             +
 INSTAGRAM _ ASSIGNER   : IA
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/

String[] userNames = {
  "@2019DMUY1133D",
  "@dee.em.you.why", 
  "@2019DMCCD", 
  "@conveneat1230", 
  "@RageQuitCoding", 
  "@coderunsmylife", 
  "@CCVision", 
  "@coding2k19", 
  "@CreativeCoders", 
  "@C_o_D_e2019"
};

String[] displayNames = {
  "Creative Coding",
  "crazycoders", 
  "Break the Code", 
  "creative coders", 
  "Creative Coding fa19", 
  "Allan Allana", 
  "IDM Creative Coding 2019", 
  "DMUY 11:33D"
};

String[] bios = {
  "Creative Coding Class",
  "DM you? Why?", 
  "DM-UY 1133", 
  "Collage of the crazy mindsets of creative coding people", 
  "ragtag art collective \n no DMs at this time \n Venmo: @", 
  "How do I stop rage quitting my job?\n\n\n 1) Clean out your desk before you say anything. If you've just told your boss they're a jerk and you never want to see them again, they're likely to not let you clean out your desk just then. ...\n 2) Be polite. ...\n 3) Write it down.\n 4) Hold your rage for two more weeks. ...\n 5) Remember, the internet is forever.", 
  "just some kids doin some coding ¯\\_(ツ)_/¯", 
  "From characters to compositions, these are the results of IDM's Creative Coding class!", 
  "See, we can code!", 
  "?", 
  "Works of ideas and code"
};

void setup() {
  size(640, 480);
}

void draw() {

  background(33);

  float columns = 10.0;
  float gridUnit = width/columns;

  // EYES /////
  noStroke();
  fill(255, 0, 100);
  // Left eye
  ellipse(gridUnit, gridUnit, gridUnit, gridUnit);
  // Right eye
  ellipse(width - gridUnit, gridUnit, gridUnit, gridUnit);

  // Mouth /////
  noFill();
  stroke(255, 0, 100);
  strokeWeight(gridUnit);
  arc(width/2.0, gridUnit*3, width - gridUnit*2, width - gridUnit*3, 0, PI);

  // Generate a random integer between
  // 0 and the total number of items in our array    
  int randomIndex = (int)random(userNames.length);

  // Create a text version of that number for debug.
  String randomIndexAsText = str(randomIndex);

  // Get the string value from our array at index randomIndex
  String selectedUserName = userNames[randomIndex];
}


void keyPressed() {
  chooseInsta();
}

void chooseInsta() {

  // All as one line, with formatting for spice!
  println("\n/----------------------------\\");
  println("     > HI, MY NAME IS...");
  String instagramResult =
    userNames[(int)random(userNames.length)] + 
    "\n" +
    displayNames[(int)random(displayNames.length)] +
    ":\n\"" +
    bios[(int)random(bios.length)];
  println(instagramResult + "\"");
  println("\\----------------------------/\n");
}
