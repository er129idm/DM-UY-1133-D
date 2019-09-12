//tupungato
int black=0; //gives a word for a RGB color
int white=255;//gives a word for a RGB color
color blue = color(161,202,237);//gives a word for a RGB color
color yellow = color(240,207,46);//gives a word for a RGB color
color orange = color(242, 81, 36);//gives a word for a RGB color
color purple = color(77,103, 219);//gives a word for a RGB color
color red = color(255,0,0);//gives a word for a RGB color
int thick = 15;//gives a variable to a value



void setup() {  //This sets the whole code up
  size(1080, 1080);//The size of the canvas
  colorMode(RGB);//The mode we use to define color
  
}

void draw() {//Consists of everything in the art work
  background(black);//Makes the background black
  fill(blue);//The color the rectangle is light blue
  rect(0, 0, 250, 80); //The size and location of the first rectangle
  
  fill(yellow);// The color of the rectangle is yellow
  rect(0, 100, 190, 140);//The size and location of the second rectangle
  
  fill(white);//The color of the rectangle is white
  rect(0, 250, 250, 90);//The size and location of the third rectangle
  
  fill(blue);//The color of the rectangle is light blue
  rect(0, 360, 250, 300);//The size and location of the fourth rectangle
  
  fill(white);//The color of the rectangle is white
  rect(0, 680, 130, 420);//The size and location of the fifth rectangle
  
  fill(orange);//The color of the rectangle is red orange
  rect(260, 0, 150, 340);//The size and location of the sixth rectangle
  
  fill(purple);//The color of the rectangle is purple
  rect(430, 0, 110, 340);//The size and location of the seventh rectangle
  
  fill(white);//The color of the rectangle is white
  rect(550, 0, 110, 340);//The size and location of the eighth rectangle
  
  fill(white);//The color of the rectangle is white
  rect(260, 360, 400, 145);//The size and location of the ninth rectangle
  
  fill(yellow);//The color of the rectangle is yellow
  rect(260, 515, 340, 145);//The size and location of the tenth rectangle
  
  fill(white);//The color of the rectangle is white
  rect(610, 515, 50, 145); //The size and location of the eleven rectangle
  
  fill(purple);//The color of the rectangle is purple
  rect(135, 820, 115, 280); //The size and location of the twelve rectangle
  
  fill(yellow);//The color of the rectangle is yellow
  rect(265, 820, 135, 280); //The size and location of the thirteen rectangle
  
  fill(white);//The color of the rectangle is white
  rect(415, 680, 115, 180); //The size and location of the fourteen rectangle
  
  fill(white);//The color of the rectangle is white
  rect(415, 870, 115, 110);//The size and location of the fifteen rectangle
  
  fill(white);//The color of the rectangle is white
  rect(415, 1000, 115, 80);//The size and location of the sixteen rectangle
  
  fill(orange);//The color of the rectangle is red orange
  rect(540, 680, 130, 300);//The size and location of the ninteen rectangle
  
  fill(blue);//The color of the rectangle is light blue
  rect(540, 1000, 130, 80);//The size and location of the twenty rectangle
  
  fill(white);//The color of the rectangle is white
  rect(680, 0, 160, 100);//The size and location of the twenty first rectangle
  
  fill(blue);//The color of the rectangle is light blue
  rect(850, 0, 230, 80);//The size and location of the twenty second rectangle
  
  fill(white);//The color of the rectangle is white
  rect(850, 100, 150, 150);//The size and location of the twenty third rectangle
  
  fill(white);//The color of the rectangle is white
  rect(1010, 100, 70, 150);//The size and location of the twenty fourth rectangle
  
  fill(orange);//The color of the rectangle is red orange
  rect(680, 260, 320, 80);//The size and location of the twenty fifth rectangle
  
  fill(white);//The color of the rectangle is white
  rect(1010, 260, 70, 80);//The size and location of the twenty sixth rectangle
  
  fill(purple);//The color of the rectangle is purple
  rect(680, 360, 320, 300);//The size and location of the twenty seventh rectangle
  
  fill(blue);//The color of the rectangle is light blue
  rect(1010, 360, 70, 300);//The size and location of the twenty eighth rectangle
  
  fill(white);//The color of the rectangle is white
  rect(680, 680, 160, 200);//The size and location of the twenty ninth rectangle
  
  fill(yellow);//The color of the rectangle is yellow
  rect(850, 680, 50, 130);//The size and location of the thirty rectangle
  
  fill(white);//The color of the rectangle is white
  rect(910, 680, 170, 130);//The size and location of the thirty first rectangle
  
  fill(blue);//The color of the rectangle is light blue
  rect(850, 820, 230, 60);//The size and location of the thirty second rectangle
  
  fill(white);//The color of the rectangle is white
  rect(680, 1000, 400, 80);//The size and location of the thrity eighth rectangle
  
  fill(orange);//The color of the circle is red orange
  stroke(black);//The color of the outline is black
  strokeWeight(thick);//The thickness of the outline 
  circle(330, 740, 260);//The location and the size of the circle
  
  fill(yellow);//The color of the circle is yellow
  stroke(black);//The color of the outline is black
  strokeWeight(thick);//The thickness of the outline 
  circle(760, 170, 240);//The location and size of the circle
  fill(red);//The color of the text is red
  textSize(40);//The size of the text
  text("A-W-E-S-O-M-E",710,950);//The text and its loaction
}
