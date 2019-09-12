//wk06_ex04_textAlign
//you can align text in one of three ways
//LEFT, CENTER, RIGHT

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
 textFont(f,32);
 fill(255);
 //align left
 textAlign(LEFT);
 text("align right.",width/2,height/5*2); 
 //align center
  textAlign(CENTER);
 text("align center.", width/2, height/5*3);
 //align right
  textAlign(RIGHT);
 text("align left.", width/2, height/5*4);
 stroke(0,0,255);
 line(width/2,0,width/2,height);
}
