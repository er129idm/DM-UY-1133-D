void drawsquare(float red,float green, float blue){
  stroke(255);
  fill(235,88,146);
    rect(50,440,40,4);
  fill(122,203,249);
  rect(50,640,40,4,5);
  noStroke();
  fill(red, green, blue);
rectMode(CORNER);
rect(50,540,40,Tscore*-1,10);
}
