//wk07_ex04_functionsWithPassedParameters
//adding arguments or parameters to functions 
//increases thier flexibilty
float dia=10;
float globalX=100.0;
float globalY=100.0;
float speedX=1.3;
float speedY=1.6;

//no declared globals vars
//all vars are local to the function 
void setup(){
 size(500,500); 
 colorMode(HSB);

}

void draw(){
  background(0);
  //the ball with it's parameters (dia, xpos, ypos, hue)
  //these values are passed to the function 
  //the values of GlobalX and GlobalY are being passed to
 //xpos and ypos 
   ball(20, globalX, globalY, 185); 
   move();
   bounce();
}
//vars for the parameters of the function are declared and typed here
void ball(float dia, float xpos, float ypos, float hue){
  fill(hue, 255,200);
  noStroke();
  ellipse(xpos, ypos, dia, dia);
}
//notice we are manipulating global variables
void move(){
 globalX=globalX+speedX;
 globalY=globalY+speedY;
}

//bounce function
void bounce(){
 if(globalX<=0 || globalX>=width){
  speedX=speedX*-1;
 }else if(globalY<=0 || globalY>=height){
   speedY=speedY*-1;
 }
}
