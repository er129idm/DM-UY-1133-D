//wk07_ex02.5_boolean_variables

//declare the boolean as either true or false
boolean colorSqr=true;
int colorVal=255;

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  //check the status of the boolean and assign a fill color
  chkFill();
  //draw rect with assigned boolean
  drawRect();
}

void drawRect(){
  fill(colorVal);
  rectMode(CENTER);
  rect(width/2,height/2,100,100); 
}
//to check state of boolean use 2 = signs
void chkFill(){
  if(colorSqr==true){
    colorVal=255;
  }else{
    colorVal=100;
  }
}
// use of ! flips boolean state from true to false of false to true
void mousePressed(){
 colorSqr=!colorSqr; 
 println("colorSqr="+colorSqr);
}
