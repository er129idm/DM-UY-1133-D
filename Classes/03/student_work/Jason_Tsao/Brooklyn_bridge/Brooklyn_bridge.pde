// Jason's Brooklyn Bridge

//importing the pdf library
import processing.pdf.*;

void setup() {
  //size of the image 
  size(1080, 1080);
  //color mode
  colorMode(RGB);
  //linit the program to run once 
  noLoop();
  //file name Brooklyn bridge
  beginRecord(PDF, "BrooklynBridge.pdf");
}


void draw() {
  //background color
  background(255, 255, 255);
  //color of the line 
  stroke(139, 62, 47);
  //stroke width
  strokeWeight(5);
  //set to fill with color
  fill(139, 62, 47);

  //start drawing the left building
  beginShape();
  //coordinates for the shape 
  vertex(300, 0);
  vertex(380, 250);
  vertex(380, 800);
  vertex(100, 850);
  vertex(0, 830);
  vertex(0, 0);
  //end shape
  endShape();
  //color of the line 
  stroke(139, 62, 47);
  //stroke width
  strokeWeight(5);


  //set to no fill
  fill(139, 62, 47);
  //start drawing the right building 
  beginShape();
  //coordinates for the shape 
  vertex(1080, 0);
  vertex(800, 0);
  vertex(780, 100);
  vertex(780, 200);
  vertex(680, 350);
  vertex(680, 800);
  vertex(1080, 850);
  //end shape
  endShape();

  //set the stroke color 
  stroke(150, 150, 150);
  //set the stroke width
  strokeWeight(5);


  //set to no fill
  fill(150, 150, 150);
  //start drawing the groung 
  beginShape();
  //coordinates for the shape
  vertex(0, 830);
  vertex(100, 850);
  vertex(380, 800);
  vertex(680, 800);
  vertex(1080, 850);
  vertex(1080, 1080);
  vertex(0, 1080);
  //end shape
  endShape();

  //drawing column 1 
  strokeWeight(20);
  stroke(99, 184, 255);
  line(450, 200, 450, 790);
  
  //drawing column 2 
  strokeWeight(20);
  stroke(99, 184, 255);
  line(490, 210, 490, 790);
  
//drawing column 3 
  strokeWeight(20);
  stroke(99, 184, 255);
  line(540, 220, 540, 790);

//drawing column 4 
  strokeWeight(20);
  stroke(99, 184, 255);
  line(580, 230, 580, 790);

//drawing upper support  
  strokeWeight(50);
  stroke(99, 184, 255);
  line(465, 210, 565, 240);

  //set the stroke color 
  stroke(99, 184, 255);
  //set the stroke width
  strokeWeight(1);


  //set to fill
  fill(99, 184, 255);
  //start drawing the bridge's main body
  beginShape();
  //oordinates for the shape
  vertex(380, 500);
  vertex(680, 450);
  vertex(680, 540);
  vertex(380, 550);
  //end shape
  endShape();

//dawring cable 1 for the bridge
  strokeWeight(5);
  stroke(99, 184, 255);
  line(580, 230, 745, 250);

//dawring cable 2 for the bridge
  strokeWeight(5);
  stroke(99, 184, 255);
  line(580, 230, 380, 450);

//dawring cable 3 for the bridge
  strokeWeight(5);
  stroke(99, 184, 255);
  line(450, 200, 705, 305);

//dawring cable 4 for the bridge
  strokeWeight(5);
  stroke(99, 184, 255);
  line(450, 200, 380, 400);

  stroke(79, 79, 79);
  //set the stroke width
  strokeWeight(5);

  //set to fill
  fill(79, 79, 79);
  //start dawing the shade of the ground
  beginShape();
  //coordinates for the shape
  vertex(0, 1080);
  vertex(680, 800);
  vertex(1080, 850);
  vertex(1080, 1080);

  //end shape
  endShape();

  stroke(210, 105, 30);
  //set the stroke width
  strokeWeight(5);
  

  //set to no fill
  fill(210, 105, 30);
  //start drawing the shade for the left building
  beginShape();
  //coordinates for the shape
  vertex(0, 0);
  vertex(300, 0);
  vertex(0, 830);
  //end shape
  endShape();

  stroke(210, 105, 30);
  //set the stroke width
  strokeWeight(5);


  //set to fill
  fill(210, 105, 30);
  //start dawing the shade of the right building
  beginShape();
  //coordinates for the shape 
  vertex(680, 350);
  vertex(780, 200);
  vertex(1080, 850);
  //end shape
  endShape();

  //ends the collection of vector info and parameters
  endRecord();
  // Saves a PNG file named "diagonal.tif"
  save("BrooklynBridge.png");
}
