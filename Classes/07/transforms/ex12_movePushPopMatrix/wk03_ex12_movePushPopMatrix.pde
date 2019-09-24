//wk03_ex12_movePushPopMatrix
//pushMatrix() and popMatrix represent the grid that the drawing is on
//shifting the wholegrid provides access to more complexc movement and manipulation

//drawing variables
float centrX=0;
float centrY=0;
//moving variables do not impact any variables defining the shape
float moveX=10;
float moveY=10;
//variables for rotation
float rot=0;

void setup(){
  size(500,500);
  colorMode(HSB);

}

void draw(){
  background(255);
  ///////////////////////call pushMatrix first
  pushMatrix();
  translate(100,100);    //move the object into the position you want using translate
  rotate(radians(rot));  //rotate the object around its center(NOTICE cntrX and cntrY are (0,0)
  //scale(2.0);
  stroke(0);
  fill(255);
  strokeWeight(2);
  ellipse(centrX,centrY,50,50);//head
  strokeWeight(1);
  ellipse(centrX+8, centrY-8, 11, 11);//right eye outside
  line(centrX-16,centrY+8,centrX+16,centrY+8);//mouth
  fill(0);
  ellipse(centrX-10,centrY-9, 4,4);//left eye
  ellipse(centrX+7,centrY-9, 4,4);//right eye iris
  popMatrix();
  //////////////popMatrix() ends the matreix translation
  rot=rot+1;
  rect(200,200,250,250);

}
