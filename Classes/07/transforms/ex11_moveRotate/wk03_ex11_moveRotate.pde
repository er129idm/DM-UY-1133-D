//wk03_ex10_translate
//everything is moved using translate function

//drawing variables
float centrX=30;
float centrY=30;
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
  rotate(radians(rot));//rotates everything below it around 0,0
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
  rot=rot+1;
  rect(200,200,250,250);

}
