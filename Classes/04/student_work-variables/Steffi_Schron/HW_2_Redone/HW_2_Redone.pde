import processing.pdf.*;
//defining variables
float xPos = 100;
float yPos = 100;
float dotWidth = 10;
float incr = 15;
float ellipseSize = 24;
float hue = 254;
float hueIncr = 5;
float move = 5;
int mode = 1; 
int posX = 3;
int posY = 5;
//parameters
void setup() {
  size(1080, 1080);
  //color
  colorMode(RGB);
  beginRecord(PDF, "SteffiHW_2.pdf");
}

//drawing
void draw() {
  //background color
  background(150, 0, 255);
  //fill color
  fill(255);
  //stroke color
  stroke(0);
  //strokeweight
  strokeWeight(10);
  //ellipse dimensions
  fill(0,255,0);
  ellipse(xPos, yPos, ellipseSize, ellipseSize);
  //increasing width value by 5 each loop
  ellipseSize = ellipseSize+incr;
  //setting limits on ellipseSize
  if (ellipseSize <= 0 || ellipseSize >= 450) {
    incr = incr *-1;
  }
 


    
  
  rectMode(CENTER);
  
  //rectangle dimensions
  rect(1000, 350, 125,392);
  
  
  
  
  for(int i=0;i<10;i++)
  {
    fill(255,100-i,200-i);
    ellipse( i*30+200,  i*30+200-i*5, ellipseSize, ellipseSize-i);
    fill(255-(25*i),0,0);
      ellipse(xPos, yPos+20*i+100, ellipseSize-3*i, ellipseSize);
      fill(0,0,255-(25*i));
      ellipse(xPos+20*i+100, yPos, ellipseSize-3*i, ellipseSize);
  }
  strokeJoin(MITER);
 //transparent
  noFill();
 //new shape
 beginShape();
 //coordinates 
 for(int i=0;i<1000;i++)
 {

 vertex(i,i);
 vertex(600+i,600+i);
 vertex(0,600);

 endShape();
 }
 //dots
 point(389,109);
 point(1200,9);
 point(170,20);
 point(370,1000);
 //new shape
 fill(255,39,4);
 triangle(393,589, 509, 203, 938,84);
 
 //setting limits on colors & size
 if (mode==1) {
   //increase PosX by 2
     posX = posX + 2;
 //if (posX >= 
 //new shape
 fill(0,hue,0);
 arc(600, 600, 250, 250, -1, PI+QUARTER_PI, PIE);
 //setting limits on color
 hue = hue + hueIncr;
 if (hue <=0 || hue >= 255) {
   hueIncr = hueIncr * -1;
 }
 endRecord();
}}
