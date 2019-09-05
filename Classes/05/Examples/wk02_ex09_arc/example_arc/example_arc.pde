//example_arc

void setup(){
  size(500,1000);
  colorMode(RGB);
}

void draw(){
 background(0,0,0);
 fill(250,255,0);
 stroke(255,0,0);
 strokeWeight(2);
//parameters are (xpos start, ypos start, width, height, angle starts, angle stops)
//angles are set in radians based on the value of pi, NOT the degree
 arc(100,250,80,80,0,HALF_PI);
 arc(200,250,80,80,0,PI+HALF_PI);
 arc(300,250,80,80,PI,TWO_PI+HALF_PI);
 arc(400,250,80,80,QUARTER_PI,PI+QUARTER_PI);
 
 fill(0,255,250);
//the following one has the same parameters
//it uses "radian()" to define the start and stop values in degrees
 arc(100,550,80,80,0,radians(90));
 arc(200,550,80,80,0,radians(270));
 arc(300,550,80,80,radians(180),radians(450));
 arc(400,550,80,80,radians(45),radians(225));
 
}