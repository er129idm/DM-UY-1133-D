//wk06_ex05_createFont
//creating a font from fonts already loaded onto the computer
//better quality rendering is the result
//if you use the method which is recommended you have take sure you use system fonts
//or load the font you want to use

//uncomment the line below to see what fonts you have available
//println(PFont.list());

//create var for font
PFont f;
int fntSize=10;

void setup(){

  size(500,500);
  //using createFont allows you to scale type without blurriness
  //load font into the variable, set size, true is turning on smoothing
  f=createFont("Helvetica-Bold",36,true);
  background(0);
}

void draw(){
  background(0);
  fill(255);
  textFont(f,fntSize);
  textAlign(CENTER);
  //ypos is constantly shifted down by the current font size divided by 2 to
  //stay closer to the center of the screen
  text("that looks nice",width/2,height/2+fntSize/2);
  fntSize++;
}


