Boolean Title=true;
Boolean firstlevel=false;
Boolean transit1=false;
Boolean secondlevel=false;
Boolean transit2=false;
Boolean thirdlevel=false;
Boolean transit3=false;
Boolean forthlevel=false;
Boolean transit4=false;
Boolean fifthlevel=false;
Boolean transit5=false;
Boolean sixthlevel=false;
Boolean transit6=false;
Boolean sevenlevel=false;
ArrayList<Ball> balls = new ArrayList<Ball>();
ArrayList<Ball> balls2 = new ArrayList<Ball>();
ArrayList<Ball> balls3 = new ArrayList<Ball>();

float Tscore=0;

float cloud1Xpos=100;
float cloud1Ypos=50;
float cloud1move=5;
float cloud1Ymove=5;
float houseXpos=540;
float houseXmove=2.5;
  float circle1Size=0;
  float circle2Size=0;
    float circle3Size=0;
  float circle4Size=0;
    float circle5Size=0;
  float circle6Size=0;
PImage cloud1pic;
PImage cloud2pic;
PImage Titlepic;
PImage House1pic;
PImage Food1pic;
PImage House2pic;
PImage Food2pic;
PImage House3pic;
PImage Food3pic;
PImage House4pic;
PImage Food4pic;
PImage Food42pic;
PImage Failpic;
void setup() {
  size(1080, 1080);
cloud1pic=loadImage("cloud1.png");
cloud2pic=loadImage("Cloud2.png");
Titlepic=loadImage("Titlepic.png");
House1pic=loadImage("House1pic.png");
Food1pic=loadImage("Food1.png");
House2pic=loadImage("House2.png");
Food2pic=loadImage("Food2.png");
House3pic=loadImage("House3.png");
Food3pic=loadImage("Food3.png");
House4pic=loadImage("House4.png");
Food4pic=loadImage("Food4.png");
Food42pic=loadImage("Food4.2.png");
Failpic=loadImage("failpic.png");
}

void draw() {

  //Title
  if(Title){
    background(255);
  imageMode(CENTER);
  image(Titlepic, 540,540,800,200);
  textSize(40);
    fill(100);
    text("Press 'Q' To Start", 700, 950);
  }








  
  //first level
  if(firstlevel){
  background(180, 185, 200);
drawsquare(59,59,59);

//cloud
    image(cloud1pic, cloud1Xpos,cloud1Ypos, 300,200);
    cloud1Xpos=cloud1Xpos+cloud1move;
     if (cloud1Xpos==990){
      cloud1move = cloud1move*-1;
    }
    if(cloud1Xpos==70){
    cloud1move = cloud1move*-1;
    }
    
//food
  for (int i=0; i<balls.size(); i++) {
    balls.get(i).move(0,15); 
    balls.get(i).display();
    balls.get(i).touch();
        balls.get(i).miss();
            if(balls.get(i).missb == true){
      Tscore-=1;
    }
    balls.get(i).score();
    if(balls.get(i).scoreb == true){
      Tscore+=1;
    }
    if (balls.get(i).intersect == false) {
      balls.remove(i);
    }
  }
  
//house
    image(House1pic,540,900,300,300 );
//level
if (Tscore>=100){
cloud1Xpos=200;
cloud1Ypos=50;
Tscore=0;
transit1=true;
  firstlevel=false;
}

}
  
if (transit1){

  fill(128,223,230);
  ellipse(540,900,circle1Size,circle1Size);
  circle1Size+=10;
  if(circle1Size>=2200){
    circle1Size=2500;
    secondlevel=true;
  transit1=false;
}
}





//second level
  if(secondlevel){
  background(128, 223, 230);
drawsquare(56,127,173);

//cloud
    image(cloud1pic, cloud1Xpos,cloud1Ypos, 300,200);
    cloud1Ypos=cloud1Ypos+cloud1Ymove;
    cloud1Xpos=cloud1Xpos+cloud1move*2;
     if (cloud1Xpos==990){
      cloud1move = cloud1move*-1;
    }
    if(cloud1Xpos==60){
    cloud1move = cloud1move*-1;
    }
         if (cloud1Ypos==250){
      cloud1Ymove = cloud1Ymove*-1;
    }
    if(cloud1Ypos==40){
    cloud1Ymove = cloud1Ymove*-1;
    }
    
//food
  for (int i=0; i<balls.size(); i++) {
    balls.get(i).move(0,15); 
    balls.get(i).display();
    balls.get(i).touch();
        balls.get(i).miss();
            if(balls.get(i).missb == true){
      Tscore-=1;
    }
    balls.get(i).score();
    if(balls.get(i).scoreb == true){
      Tscore+=1;
    }
    if (balls.get(i).intersect == false) {
      balls.remove(i);
    }
  }
  
//house
    image(House2pic,540,900,300,300 );
//level
if (Tscore>=100){
cloud1Xpos=200;
cloud1Ypos=50;
Tscore=0;
transit2=true;
  secondlevel=false;
}
}
if (transit2){

  fill(133,204,250);
  ellipse(540,900,circle2Size,circle2Size);
  circle2Size+=10;
  if(circle2Size>=2200){
    circle2Size=2500;
    thirdlevel=true;
  transit2=false;
}
}


//third level
  if(thirdlevel){
    imageMode(CENTER);
  background(133, 204, 250);
drawsquare(65,87,224);

//cloud

    cloud1Ypos=cloud1Ypos+cloud1Ymove;
    cloud1Xpos=cloud1Xpos+cloud1move*2;
     if (cloud1Xpos==990){
      cloud1move = cloud1move*-1;
    }
    if(cloud1Xpos==70){
    cloud1move = cloud1move*-1;
    }
         if (cloud1Ypos==350){
      cloud1Ymove = cloud1Ymove*-1;
    }
    if(cloud1Ypos==40){
    cloud1Ymove = cloud1Ymove*-1;
    }
        image(cloud1pic, cloud1Xpos,cloud1Ypos, 300,200);
//house
    houseXpos=houseXpos +houseXmove;
    if (houseXpos>=990){
      houseXmove = houseXmove*-1;
    }
    if(houseXpos<=70){
    houseXmove = houseXmove*-1;
    }
    
//food
  for (int i=0; i<balls.size(); i++) {
    balls.get(i).move(0,15); 
    balls.get(i).display();
    balls.get(i).touch();
        balls.get(i).miss2();
            if(balls.get(i).missb == true){
      Tscore-=1;
    }
    balls.get(i).score2();
    if(balls.get(i).scoreb == true){
      Tscore+=1;
    }
    if (balls.get(i).intersect == false) {
      balls.remove(i);
    }
  }
  
    image(House3pic,houseXpos,900,300,300 );

    
//level
if (Tscore>=100){
cloud1Xpos=200;
cloud1Ypos=50;
Tscore=0;
transit3=true;
  thirdlevel=false;
}
}


if (transit3){

  fill(225,236,147);
  ellipse(540,900,circle3Size,circle3Size);
  circle3Size+=10;
  if(circle3Size>=2200){
    circle3Size=2500;
    forthlevel=true;
  transit3=false;
}
}


//forth level
  if(forthlevel){
    imageMode(CENTER);
  background(225, 236, 147);
drawsquare(53,120,140);

//cloud

    cloud1Ypos=cloud1Ypos+cloud1Ymove*0.5;
    cloud1Xpos=cloud1Xpos+cloud1move*1;
     if (cloud1Xpos>=990){
      cloud1move = cloud1move*-1;
    }
    if(cloud1Xpos<=70){
    cloud1move = cloud1move*-1;
    }
         if (cloud1Ypos>=250){
      cloud1Ymove = cloud1Ymove*-1;
    }
    if(cloud1Ypos<=40){
    cloud1Ymove = cloud1Ymove*-1;
    }
        image(cloud2pic, cloud1Xpos,cloud1Ypos, 300,100);
//house
    houseXpos=houseXpos +houseXmove*2;
    if (houseXpos>=990){
      houseXmove = houseXmove*-1;
    }
    if(houseXpos<=70){
    houseXmove = houseXmove*-1;
    }
    
//food
  for (int i=0; i<balls2.size(); i++) {
    balls2.get(i).move(0,15); 
    balls2.get(i).display();
    balls2.get(i).touch();
        balls2.get(i).miss2();
            if(balls2.get(i).missb == true){
      Tscore-=1;
    }
    balls2.get(i).score2();
    if(balls2.get(i).scoreb == true){
      Tscore+=1;
    }
    if (balls2.get(i).intersect == false) {
      balls2.remove(i);
    }
  }
    for (int i=0; i<balls3.size(); i++) {
    balls3.get(i).move(0,20); 
    balls3.get(i).display2();
    balls3.get(i).touch();
        balls3.get(i).miss2();
            if(balls3.get(i).missb == true){
      Tscore-=1;
    }
    balls3.get(i).score2();
    if(balls3.get(i).scoreb == true){
      Tscore+=1;
    }
    if (balls3.get(i).intersect == false) {
      balls3.remove(i);
    }
  }
  
    image(House4pic,houseXpos,900,300,300 );

    
//level
if (Tscore>=100){
cloud1Xpos=200;
cloud1Ypos=50;
Tscore=0;
transit2=true;
  secondlevel=false;
}
}
  
  
    textSize(30);
    fill(0);
    text("Press 'j' For Food!", 820, 150);
        //fail procedure
if(Tscore<=-100){
  fill(255);
  rect(0,0,1080,1080);
  imageMode(CENTER);
  image(Failpic,540,540,500,120);
}
}













void keyTyped() {
  if (key == 'q' || key == 'Q') {
    Title=false;
    firstlevel=true;
  }
    if (key == '4') {
    Title=false;
    forthlevel=true;
  }
  if (key=='j'||key=='J'){
if(firstlevel||secondlevel||thirdlevel){
  balls.add(new Ball( cloud1Xpos , cloud1Ypos , 40, true));}
  if(forthlevel){balls2.add(new Ball( cloud1Xpos -50, cloud1Ypos , 40, true));
  balls3.add(new Ball( cloud1Xpos +50, cloud1Ypos , 40, true));
  }
}
}
