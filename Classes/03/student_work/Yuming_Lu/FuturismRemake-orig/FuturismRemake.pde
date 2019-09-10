void setup() {
  //set the size of the canvas
  size(1080, 1080);
  //set the colorMode
  colorMode(RGB);
}

void  draw() {
  background(0);
  noStroke();

  //background circle one inner eight//
  fill(107, 140, 127);
  arc(175, 570, 470, 470, 20, 200);

  //background circle one inner seven//
  fill(206, 206, 164);
  arc(175, 570, 300, 300, 20, 200);

  //background circle one inner six//
  fill(232, 154, 130);
  arc(175, 570, 210, 210, 20, 200);

  //background circle one inner five//
  fill(236, 212, 148);
  arc(175, 570, 160, 160, 20, 200);

  //background circle one inner four//
  fill(232, 154, 130);
  arc(175, 570, 120, 120, 20, 200);

  //background circle one inner three//
  fill(162, 148, 142);
  arc(175, 570, 85, 85, 20, 200);

  //background circle one inner two//
  fill(225, 199, 127);
  arc(175, 570, 55, 55, 20, 200);

  //background circle one inner one//
  fill(220, 211, 145);
  arc(175, 570, 30, 30, 20, 200);

  //background circle two inner seven//
  fill(188, 188, 164);
  arc(945, 550, 540, 540, 20, 200);

  //background circle two inner six//
  fill(135, 136, 114);
  arc(945, 550, 450, 450, 20, 200);

  //background circle two inner five//
  fill(237, 210, 168);
  arc(945, 550, 300, 300, 20, 200);

  //background circle two inner four//
  fill(233, 215, 195);
  arc(945, 550, 210, 210, 20, 200);

  //background circle two inner three//
  fill(206, 204, 166);
  arc(945, 550, 160, 160, 20, 200);

  //background circle two inner two//
  fill(237, 187, 179);
  arc(945, 550, 100, 100, 20, 200);

  //background circle two inner one//
  fill(231, 216, 189);
  arc(945, 550, 70, 70, 20, 200);

  //pyramid two part one//
  fill(75, 64, 68);
  beginShape();
  vertex(295, 650);
  vertex(295, 380);
  vertex(320, 365);
  vertex(320, 310);
  vertex(360, 265);
  vertex(360, 605);
  endShape(CLOSE);

  //pyramid two part two//
  fill(103, 83, 77);
  beginShape();
  vertex(360, 605);
  vertex(360, 265);
  vertex(430, 350);
  vertex(430, 700);
  endShape(CLOSE);

  //pyramid four part one//
  fill(246, 213, 143);
  beginShape();
  vertex(470, 905);
  vertex(470, 285);
  vertex(490, 255);
  vertex(530, 255);
  vertex(530, 805);
  endShape(CLOSE);

  //pyramid four part two//
  fill(93, 72, 74);
  beginShape();
  vertex(530, 805);
  vertex(530, 255);
  vertex(580, 375);
  vertex(580, 805);
  endShape(CLOSE);

  //pyramid five part one//
  fill(73, 63, 61);
  beginShape();
  vertex(490, 905);
  vertex(490, 405);
  vertex(540, 345);
  vertex(540, 905);
  endShape(CLOSE);

  //pyramid five part two//
  fill(79, 61, 64);
  beginShape();
  vertex(540, 905);
  vertex(540, 345);
  vertex(590, 445);
  vertex(590, 905);
  endShape(CLOSE);

  //pyramid three part one//
  fill(66, 61, 59);
  beginShape();
  vertex(390, 605);
  vertex(390, 435);
  vertex(450, 385);
  vertex(450, 700);
  endShape(CLOSE);

  //pyramid three part two//
  fill(77, 63, 68);
  beginShape();
  vertex(450, 700);
  vertex(450, 385);
  vertex(500, 455);
  vertex(500, 905);
  endShape(CLOSE);


  //pyramid one part one//
  fill(90, 83, 83);
  beginShape();
  vertex(175, 680);
  vertex(175, 570);
  vertex(210, 550);
  vertex(210, 480);
  vertex(240, 465);
  vertex(240, 400);
  vertex(265, 375);
  vertex(265, 700);
  endShape(CLOSE);

  //pyramid one part two//
  fill(80, 70, 72);
  beginShape();
  vertex(265, 700);
  vertex(265, 375);
  vertex(315, 450);
  vertex(315, 700);
  endShape(CLOSE);

  //pyramid six part one//
  fill(246, 211, 149);
  beginShape();
  vertex(610, 900);
  vertex(610, 330);
  vertex(640, 255);
  vertex(645, 255);
  vertex(645, 905);
  endShape(CLOSE);

  //pyramid six part two//
  fill(144, 103, 106);
  beginShape();
  vertex(645, 905);
  vertex(645, 255);
  vertex(680, 255);
  vertex(680, 295);
  vertex(700, 295);
  vertex(700, 345);
  vertex(720, 345);
  vertex(720, 375);
  vertex(740, 375);
  vertex(740, 905);
  endShape(CLOSE);

  //background circle three inner six//
  fill(239, 205, 132);
  arc(550, 550, 285, 285, PI, TWO_PI+QUARTER_PI);

  //background circle three inner five//
  fill(243, 164, 152);
  arc(550, 550, 225, 225, 20, 200);

  //background circle three inner four//
  fill(244, 240, 142);
  arc(550, 550, 165, 165, 20, 200);

  //background circle three inner three//
  fill(249, 222, 210);
  arc(550, 550, 115, 115, 20, 200);

  //background circle three inner two//
  fill(243, 215, 127);
  arc(550, 550, 75, 75, 20, 200);

  //background circle three inner one//
  fill(249, 240, 188);
  arc(550, 550, 40, 40, 20, 200);

  //building one part one//
  fill(179, 85, 77);
  beginShape();
  vertex(0, 900);
  vertex(100, 700);
  vertex(120, 705);
  vertex(145, 650);
  vertex(180, 660);
  vertex(205, 600);
  vertex(240, 610);
  vertex(265, 540);
  vertex(310, 555);
  vertex(143, 980);
  vertex(0, 980);
  endShape(CLOSE);

  //building one part three//
  fill(115, 49, 44);
  beginShape();
  vertex(143, 980);
  vertex(310, 555);
  vertex(360, 580);
  vertex(235, 980);
  endShape(CLOSE);

  //background circle four inner five//
  fill(221, 197, 106);
  arc(270, 860, 110, 110, 20, 200);

  //background circle four inner four//
  fill(236, 222, 169);
  arc(270, 860, 85, 85, 20, 200);

  //background circle four inner three//
  fill(221, 197, 106);
  arc(270, 860, 60, 60, 20, 200);

  //background circle four inner two//
  fill(236, 222, 169);
  arc(270, 860, 35, 35, 20, 200);

  //background circle four inner one//
  fill(150, 138, 133);
  arc(270, 860, 15, 15, 20, 200);

  //building six part one//
  fill(161, 127, 98);
  beginShape();
  vertex(235, 980);
  vertex(302, 766);
  vertex(370, 980);
  endShape(CLOSE);

  //building six part two//
  fill(161, 127, 98);
  beginShape();
  vertex(235, 980);
  vertex(302, 766);
  vertex(370, 980);
  endShape(CLOSE);

  //building one part one//
  fill(222, 176, 131);
  beginShape();
  vertex(370, 980);
  vertex(255, 700);
  vertex(300, 675);
  vertex(275, 610);
  vertex(310, 595);
  vertex(295, 540);
  vertex(330, 525);
  vertex(320, 490);
  vertex(350, 460);
  vertex(580, 980);
  endShape(CLOSE);

  //building two part one//
  fill(141, 108, 76);
  beginShape();
  vertex(580, 980);
  vertex(350, 460);
  vertex(440, 500);
  vertex(680, 980);
  endShape(CLOSE);

  //building four part one//
  fill(232, 202, 122);
  beginShape();
  vertex(980, 980);
  vertex(700, 550);
  vertex(720, 520);
  vertex(703, 480);
  vertex(750, 430);
  vertex(1080, 850);
  vertex(1080, 980);
  endShape(CLOSE);

  fill(200, 98, 78);
  beginShape();
  vertex(500, 980);
  vertex(600, 700);
  vertex(645, 700);
  vertex(665, 630);
  vertex(700, 630);
  vertex(720, 550);
  vertex(765, 550);
  vertex(650, 980);
  endShape(CLOSE);

  //builing three part two//
  fill(138, 59, 50);
  beginShape();
  vertex(765, 550);
  vertex(650, 980);
  vertex(760, 980);
  vertex(815, 660);
  endShape(CLOSE);

  //building one part two//
  fill(125, 112, 93);
  beginShape();
  vertex(750, 430);
  vertex(1080, 850);
  vertex(1080, 700);
  vertex(900, 500);
  endShape(CLOSE);

  //building four part two//
  fill(125, 112, 93);
  beginShape();
  vertex(750, 430);
  vertex(1080, 850);
  vertex(1080, 700);
  vertex(900, 500);
  endShape(CLOSE);

  //building four part two//
  fill(69, 45, 39);
  beginShape();
  vertex(760, 980);
  vertex(980, 980);
  vertex(805, 710);
  endShape(CLOSE);
}
