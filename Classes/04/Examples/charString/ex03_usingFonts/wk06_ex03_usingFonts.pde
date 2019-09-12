//wk06_ex03_usingFonts
//when you want to use a font you have two options for accessing it
//the first is to create the instance of the font using the tools>Create Font in the menu bar
//you will need to create the sketch first and then save it. when you use create font it 
//place the font in the data folder of the sketch.
//it creates an image version of the sketch so avoid very small point sizes.

//create a var for the font
PFont f;

void setup(){
 size(500,500);
 //load the font into the var
 f= loadFont("MatrixInlineExtraBold-64.vlw");

}

void draw(){
 background(0);
 //set the font for the text and the size
 textFont(f,64);
 fill(255);
 text("finally.",width/15,height/5*2); 
 text("not circles.", width/20, height/5*3);
 stroke(0,0,255);
 line(0,height/5*2,width,height/5*2);
}
