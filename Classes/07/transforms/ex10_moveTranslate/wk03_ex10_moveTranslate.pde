//wk03_ex10_translate
//everything is moved using translate function

//drawing variables
float centrX=0;
float centrY=0;
//moving variables do not impact any variables defining the shape
float moveX=10;
float moveY=10;

void setup(){
  size(500,500);
  colorMode(HSB);

}

void draw(){
  background(255);
  translate(moveX, moveY);//moves everything below it by this value(EEK!)
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
  moveX=moveX+2;//increments moveX
  moveY=moveY+2;//increments moveY
  rect(200,200,250,250);

}
