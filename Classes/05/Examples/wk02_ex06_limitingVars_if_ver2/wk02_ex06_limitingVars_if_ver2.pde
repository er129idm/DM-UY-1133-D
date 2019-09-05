//wk02_ex06_limitingVars_if_ver2

float xpos=0;

float h=0;

float incr=1;
float hueIncr=1;

void setup(){
  size(500,500);
  colorMode(HSB);
  background(0);
}

void draw(){
  stroke(h,255,255);
  strokeWeight(1);
  line(xpos,0,xpos,height);
  xpos=xpos+incr;
  h=h+hueIncr;
  //checks value of 'h' and resets the polarity of 'hueIncr'
  //if value is less than 0 or greater than 255 code inside 
  //the curly braces loops
  if(h<=0||h>=255){
    hueIncr=hueIncr * -1;
  }
  //checks value of 'xpos' and resets the polarity of 'incr'
  if(xpos<=0||xpos>=width){
    incr=incr * -1;
  }
  
  
}
