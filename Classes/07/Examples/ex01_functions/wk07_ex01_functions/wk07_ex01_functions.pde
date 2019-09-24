//wk07_ex01_userDefinedFunctions
//begin to isolate code blocks for simpler more elegant code

void setup() {
  size(500, 500);
}

void draw() {
  
  background(255);
  
  //call the function in the draw loop 
  drawCircle();
  
}

//place user defined functions below draw loop
//it has three parts + the code called inside{}
//return type functionName(arguments){
//code which runs when function is called  
//}

void drawCircle() {
  fill(0);
  ellipse(width/2, height/2, 50, 50);
}
