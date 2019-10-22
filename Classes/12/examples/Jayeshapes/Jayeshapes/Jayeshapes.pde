//Midterm practice
String[] words = {"say something", "anything", "what do you think?", 
  "come up with anything yet?", "no", "yes", "maybe so", "is anybody there?", 
  "oh, did you think of something?", "ya like mah shapes?", "they're nice", 
  "but not important", "this is about you", "wanna get deep?", "either way", 
  "it's up to you", "so did you think?", "what is it you want to say?", 
  "is it a speech", "a joke", "nothing", "whatever it is", "it matters", 
  "have you ever thought about control", "what you can control", 
  "and what you cannot", "interesting questions", "did you think about the shapes?", 
  "what do they mean?", "control", "control what?", "I don't know", 
  "there are lots of things to think about", "lots to say"};
color[] colors = {color(255,255,255), color(255,0,255), color(0,0,255), color(0,255,0)};   

PFont font;
float wordScroll;
int index = 0;
int c1 = int(random(0, 255));
int c2 = int(random(0, 255));
int c3 = int(random(0, 255));
void setup() {
  //canvas size
  //size(900, 900, P3D);
  fullScreen(P3D);
  //framerate 
  frameRate(60);
  font = createFont("Dialog", 80);
  wordScroll = width;
}
void draw() {
  background(0);
  beginCamera();
  //light 1 - Color set from our current colors array
  pointLight(red(colors[index]), green(colors[index]), blue(colors[index]), wordScroll, height-20, 450);
  //shape 1
  pushMatrix();
  fill(150, 100, 150);
  stroke(255, 255, 255);
  strokeWeight(1);
  noStroke();
  translate(width/2, height/2);
  rotateX(mouseY * 0.05);
  rotateY(mouseX * 0.05);
  sphereDetail(1);
  sphere(200);
  popMatrix();
  //shape 2
  pushMatrix();
  //pointLight(102, 226, 251, 250, 900, 450);
  fill(50, 60, 133);
  //stroke(255);
  translate(width/6, height/2, -100);
  rotateX(frameCount*0.01);//0.01);
  rotateY(mouseX * 0.03);
  sphereDetail(3);
  sphere(150);
  popMatrix();
  //shape 3
  pushMatrix();
  //pointLight(137, 38, 17, width, height, 450);
  fill(150, 100, 50);
  //stroke(255);
  translate(((width/6)*5), height/2, -100);
  rotateX(frameCount *0.1);
  rotateY(frameCount * 0.001);//mouseX * 0.03);
  sphereDetail(5);
  sphere(150);
  popMatrix();
  endCamera();
  //scrolling words
  fill(colors[index]); /// Set the text color from our colors array
  textFont(font, 80);
  textAlign(LEFT);
  text(words[index], wordScroll, height-20);
  wordScroll = wordScroll - 4;
  float w = textWidth(words[index]);
  if (wordScroll < -w) {
    wordScroll = width;
    index = (index + 1) % words.length;
  }
  println(wordScroll);
}
