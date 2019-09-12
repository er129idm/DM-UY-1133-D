
float coresize=0; 
float increment=4.75; //not random; i tried different values out until i was satisfied
 

//this sets the size of the sketch
void setup() { 
  size(1080,1080);
}

//this draws my first ellipse which will act as the outer most layer of my avocado
void draw() {
  background(0,0,0); //sets the background to black
  fill(0,100,0); //found out that when working with one color, the higher the number, the lighter the hue
  strokeWeight(7); //sets the thickness of my stroke
  stroke(0,65,35);  //sets the color of my stroke
  ellipse(540,400,440,600); //had difficulty with this part, specifically trying to get it centered
// this next set of code (below) is beginning a new elipse; i am layering ellipses on top of eachother to show the different colors of the avocado
  fill(255,255,75);
  strokeWeight(0);
  ellipse(540,399,400,575);
//am now beginning the core of the avocado
  fill(95,33,10); //I kind of just experiment when it comes to coloring, hoping the right combo makes the color I want
  strokeWeight(2);
  stroke(37,14,3);
  ellipse(540,470,200,230);
//now im just layering to try and represent all the different colors of the nut
  fill(37,14,3);
  ellipse(540,470,187,215);
  
  fill(110,81,22);
  ellipse(540,475,170,180);

  fill(255); // since white is 255 for all 3 components of rgb, I just typef 255 once 
  arc(510,450,125,100,0,HALF_PI); //hoping to use this function to represent light
  
  fill(37,14,3);
  strokeWeight(0);//put this here so that the stroke of this ellipse would be invisible; w/o this the strokeweight s the same as the previous elipse
  ellipse(520,440,coresize,coresize); 

  
  fill(0,100,0);//sets the color of the text
  textSize(75);// sets how small/large my text is
  text("A V O C A D O",coresize,coresize); //was hoping this would add some flare; i thought it would grow like the brown core, but instead it flies across the screen
  coresize=coresize+increment;
  
  
}
