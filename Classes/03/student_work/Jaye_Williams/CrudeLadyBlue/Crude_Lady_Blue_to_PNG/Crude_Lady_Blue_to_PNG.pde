//Jaye Williams
//Class 2 (9/5/19) Homework
//Writing to PNG version

//set up canvas
void setup() {
  //set the canvas size
  size(1080, 1080);
  //only allow the program to run once
  noLoop();
}   

//begin drawing
void draw() {
  //set the background color (white)
  background(255, 255, 255);
  //set the fill color for first shape (tan)
  fill(240, 233, 233);
  //set the stroke color for first shape (tan)
  stroke(240, 233, 233);

  //create rectangle
  //set rectangle mode
  rectMode(CENTER);
  //set rectangle parameters
  rect(540, 540, 1000, 1000);
  
  //set fill color for next shape (blue)
  fill(20, 53, 150);
  //stroke(240, 233, 233);
  //set stroke weight
  strokeWeight(1);
  
  //begin the next shape
  beginShape();
  //plot various points to make custom shape
  vertex(190, 960);
  vertex(200, 960);
  vertex(300, 970);
  vertex(400, 990);
  vertex(500, 1005);
  vertex(600, 1020);
  vertex(640, 1021);
  vertex(660, 1022);
  vertex(670, 1023);
  vertex(680, 1024);
  vertex(690, 1025);
  vertex(695, 1026);
  vertex(698, 1028);
  vertex(700, 1030);
  vertex(1080, 1030);
  vertex(1080, 1020);
  vertex(1080, 1015);
  vertex(1035, 1010);
  vertex(1015, 1000);
  vertex(1010, 985);
  vertex(1005, 975);
  vertex(1000, 950);
  vertex(940, 950);
  vertex(890, 930);
  vertex(900, 900);
  vertex(910, 850);
  vertex(920, 800);
  vertex(925, 750);
  vertex(925, 700);
  vertex(925, 650);
  vertex(920, 600);
  vertex(918, 550);
  vertex(916, 500);
  vertex(915, 450);
  vertex(910, 400);
  vertex(905, 360);
  vertex(900, 325);
  vertex(895, 300);
  vertex(890, 275);
  vertex(880, 250);
  vertex(840, 200);
  vertex(800, 150);
  vertex(760, 105);
  vertex(740, 90);
  vertex(720, 75);
  vertex(700, 65);
  vertex(680, 60);
  vertex(640, 55);
  vertex(590, 50);
  vertex(540, 50);
  vertex(400, 50);
  vertex(300, 60);
  vertex(220, 75);
  vertex(50, 120);
  vertex(35, 230);
  vertex(50, 270);
  vertex(60, 280);
  vertex(80, 295);
  vertex(120, 300);
  vertex(200, 310);
  vertex(260, 311);
  vertex(280, 312);
  vertex(290, 315);
  vertex(300, 317);
  vertex(310, 318);
  vertex(320, 320);
  vertex(530, 325);
  vertex(535, 340);
  vertex(545, 350);
  vertex(550, 380);
  vertex(560, 400);
  vertex(570, 420);
  vertex(590, 430);
  vertex(600, 440);
  vertex(635, 450);
  vertex(650, 455);
  vertex(700, 460);
  vertex(715, 470);
  vertex(710, 475);
  vertex(700, 480);
  vertex(695, 485);
  vertex(690, 490);
  vertex(680, 520);
  vertex(675, 550);
  vertex(670, 600);
  vertex(520, 650);
  vertex(510, 620);
  vertex(500, 600);
  vertex(490, 580);
  vertex(460, 540);
  vertex(440, 515);
  vertex(430, 510);
  vertex(200, 390);
  vertex(195, 391);
  vertex(180, 392);
  vertex(175, 393);
  vertex(160, 395);
  vertex(155, 400);
  vertex(145, 415);
  vertex(140, 430);
  vertex(135, 450);
  vertex(130, 500);
  vertex(125, 600);
  vertex(125, 620);
  vertex(115, 625);
  vertex(113, 630);
  vertex(110, 635);
  vertex(105, 640);
  vertex(67, 730);
  vertex(65, 750);
  vertex(55, 775);
  vertex(50, 800);
  vertex(85, 900);
  vertex(85, 910);
  vertex(80, 920);
  vertex(75, 930);
  vertex(60, 940);
  vertex(50, 950);
  vertex(40, 960);
  vertex(30, 970);
  vertex(30, 1000);
  vertex(55, 1000);
  vertex(90, 990);
  //end shape once done plotting points
  endShape(2);

  //change stroke color for next shape (tan)
  stroke(240, 233, 233);
  
  //adjust stroke weight
  strokeWeight(6);

  //begin series of lines (left side of face)
  line(460, 60, 445, 70);
  line(445, 70, 430, 90);
  line(430, 90, 420, 120);
  line(420, 120, 420, 140);
  line(420, 140, 425, 150);
  line(425, 150, 430, 160);
  line(430, 160, 445, 180);
  line(445, 180, 460, 200);
  line(460, 200, 475, 210);
  line(475, 210, 490, 220);
  line(490, 220, 500, 225);
  line(500, 225, 515, 230);
  line(515, 230, 525, 235);
  line(525, 235, 550, 243);
  line(550, 243, 560, 250);
  line(560, 250, 562, 253);
  line(562, 253, 562, 260);
  line(562, 260, 558, 265);
  line(558, 265, 550, 270);
  line(550, 270, 540, 285);
  line(540, 285, 535, 295);
  line(535, 295, 530, 324);
  
  //next series of lines (right side of face)
  line(600, 60, 620, 80);
  line(620, 80, 625, 90);
  line(625, 90, 635, 100);
  line(635, 100, 640, 105);
  line(640, 105, 645, 115);
  line(645, 115, 650, 130);
  line(650, 130, 655, 145);
  line(655, 145, 660, 147);
  line(660, 147, 680, 150);
  line(680, 150, 690, 153);
  line(690, 153, 700, 155);
  line(700, 155, 720, 158);
  line(720, 158, 740, 162);
  line(740, 162, 750, 165);
  line(750, 165, 760, 168);
  line(760, 168, 780, 170);
  line(780, 170, 790, 171);
  line(790, 171, 795, 173);
  line(795, 173, 800, 173);
  line(800, 173, 815, 173);
  line(660, 147, 655, 150);//moving to bottom of the line 
  line(655, 150, 653, 155);
  line(653, 155, 650, 160);
  line(650, 160, 648, 167);
  line(648, 167, 646, 170);
  line(646, 170, 640, 175);

  //next series of lines (chest)
  line(700, 450, 695, 440);
  line(695, 440, 690, 425);
  line(690, 425, 690, 410);
  line(690, 410, 692, 400);
  line(692, 400, 695, 390);
  line(695, 390, 700, 385);
  line(700, 385, 720, 360);
  line(720, 360, 735, 345);
  line(700, 450, 710, 460);
  line(710, 460, 730, 475);
  line(730, 475, 750, 480);
  line(750, 480, 770, 483);
  line(770, 483, 780, 485);
  
  //adjust stroke weight for next series of lines
  strokeWeight(30);
  //begin line (arm gap)
  line(790, 440, 799, 465);
  line(799, 465, 801, 480);
  line(801, 480, 802, 500);
  line(802, 500, 803, 600);
  line(803, 600, 800, 700);
  line(800, 700, 800, 750);
  line(800, 750, 805, 800);
  line(805, 800, 810, 900);
  //lower stroke weight
  strokeWeight(25);
  //continue line
  line(810, 900, 815, 920);
  //repeat
  strokeWeight(20);
  line(815, 920, 830, 940);
  strokeWeight(15);
  line(830, 940, 835, 960);
  strokeWeight(10);
  line(835, 960, 840, 980);
  strokeWeight(6);
  line(840, 980, 843, 1000);
  line(843, 1000, 847, 1028);
  
  //next series of lines (lower hand)
  line(940, 950, 943, 960);
  line(943, 960, 945, 970);
  line(945, 970, 950, 985);
  line(950, 985, 955, 995);
  line(955, 995, 957, 1000);
  line(957, 1000, 965, 1020);
  line(965, 1020, 967, 1027);

  //next series of lines (front leg) 
  line(520, 650, 600, 750);
  line(600, 750, 620, 780);
  line(620, 780, 650, 800);
  line(650, 800, 720, 870);
  line(720, 870, 740, 890);
  line(740, 890, 760, 900);
  line(760, 900, 780, 910);
  line(780, 910, 801, 920);
  //front leg bottom
  line(300, 650, 310, 680);
  line(310, 680, 311, 690);
  line(311, 690, 314, 710);
  line(314, 710, 320, 725);
  line(320, 725, 325, 740);
  line(325, 740, 340, 760);
  line(340, 760, 345, 770);
  line(345, 770, 355, 780);
  line(355, 780, 365, 790);
  line(365, 790, 380, 800);
  line(380, 800, 395, 815);
  line(395, 815, 405, 825);
  line(405, 825, 420, 840);
  line(420, 840, 435, 850);
  line(435, 850, 450, 860);
  line(450, 860, 460, 865);
  line(460, 865, 480, 880);
  line(480, 880, 500, 890);
  line(500, 890, 530, 900);
  line(530, 900, 570, 915);
  line(570, 915, 600, 925);
  line(600, 925, 650, 940);
  line(650, 940, 700, 955);
  line(700, 955, 750, 963);
  line(750, 963, 800, 967);
  line(800, 967, 830, 970);
  //front leg calf
  line(280, 650, 278, 660);
  line(278, 660, 277, 665);
  line(277, 665, 276, 700);
  line(276, 700, 272, 800);
  line(272, 800, 260, 793);
  line(260, 793, 250, 790);
  line(250, 790, 200, 775);
  line(200, 775, 180, 760);
  line(180, 760, 170, 750);
  line(170, 750, 160, 735);
  line(160, 735, 150, 720);
  line(150, 720, 145, 700);
  line(145, 700, 135, 650);
  line(135, 650, 130, 630);
  line(130, 630, 125, 620);

  //next series of lines (stomach)
  line(670, 600, 665, 630);
  line(665, 630, 663, 650);
  line(663, 650, 658, 680);
  line(658, 680, 655, 700);
  line(655, 700, 650, 730);
  line(650, 730, 648, 750);
  line(648, 750, 645, 760);
  line(645, 760, 642, 790);
  
  //adjust stroke weight for next series of lines
  strokeWeight(60);
  //begin line (leg gap)
  line(290, 810, 340, 820);
  line(340, 820, 355, 823);
  line(355, 823, 360, 826);
  //lower stroke weight
  strokeWeight(50);
  //continue line
  line(360, 826, 375, 835);
  line(375, 835, 380, 840);
  //repeat
  strokeWeight(40);
  line(380, 840, 390, 845);
  strokeWeight(35);
  line(390, 845, 400, 850);
  strokeWeight(30);
  line(400, 850, 410, 855);
  strokeWeight(25);
  line(410, 855, 420, 860);
  strokeWeight(20);
  line(420, 860, 430, 865);
  strokeWeight(15);
  line(430, 865, 440, 870);
  strokeWeight(10);
  line(440, 870, 450, 872);

  //reset stroke weight
  strokeWeight(6);
  
  //next series of lines (foot)
  line(130, 925, 140, 930);
  line(140, 930, 150, 935);
  line(150, 935, 160, 940);
  line(160, 940, 170, 948);
  line(170, 948, 190, 955);
  
  //adjust stroke weight for next series of lines
  strokeWeight(65);
  //begin line (elbow gap)
  line(397, 170, 390, 172);
  line(390, 172, 380, 174);
  line(380, 174, 365, 175);
  //lower stroke weight
  strokeWeight(55);
  //continue line
  line(365, 175, 350, 178);
  line(350, 178, 340, 180);
  //repeat
  strokeWeight(40);
  line(340, 180, 330, 180);
  line(330, 180, 310, 185);
  strokeWeight(30);
  line(310, 185, 300, 190);
  line(300, 190, 290, 191);
  line(290, 191, 280, 192);
  strokeWeight(20);
  line(280, 192, 270, 192);
  line(270, 192, 250, 193);
  strokeWeight(18);
  line(250, 193, 240, 194);
  strokeWeight(10);
  line(240, 194, 230, 195);
  
  //save drawing as PNG file
  save("CrudeLadyBlue.png");
}
