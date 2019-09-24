import processing.pdf.*;

void setup()
{
  size(1080, 1080);
  colorMode(RGB);
  frameRate(10);
}

float random_background = 0;

void draw()
{
  random_background = random(225, 255);
  background(255, 255, 255); // Sets the background to white for the GOLF background

  if (mousePressed)
  {
    beginShape(); // Draws a random four-sided polygon
    stroke(255);
    strokeWeight(12);
    fill(random(255), random(255), random(255));
    vertex(random(1080), random(1080));
    vertex(random(1080), random(1080));
    vertex(random(1080), random(1080));
    vertex(random(1080), random(1080));
    vertex(random(1080), random(1080));
    endShape(CLOSE);
  }
  else
  {
    fill(random(255), random(255), random(255));
  }
  
  beginShape(); // Draws G's blue shadow
  if (mousePressed)
  {
    float rG = random(0, 255); // The variables ensure the fill and stroke are the same color
    float gG = random(0, 255);
    float bG = random(0, 255);
    stroke(rG, gG, bG);
    fill(rG, gG, bG);
  }
  else
  {
    stroke(1, 143, 187); // Initial stroke
    fill(1, 143, 187); // Initial fill
  }
  
  vertex(280, 480);
  vertex(280, 560);
  vertex(220, 560);
  vertex(220, 530);
  vertex(180, 530);
  vertex(180, 630);
  vertex(230, 630);
  vertex(230, 610);
  vertex(200, 610);
  vertex(200, 580);
  vertex(280, 580);
  vertex(280, 680);
  vertex(130, 680);
  vertex(130, 480);
  vertex(180, 480);
  endShape(CLOSE);
  
  beginShape(); // Draws an orange G
  stroke(241, 91, 40);
  fill(241, 91, 40);
  
  vertex(300, 450);
  vertex(300, 530);
  vertex(250, 530);
  vertex(250, 500);
  vertex(200, 500);
  vertex(200, 600);
  vertex(250, 600);
  vertex(250, 580);
  vertex(220, 580);
  vertex(220, 550);
  vertex(300, 550);
  vertex(300, 650);
  vertex(150, 650);
  vertex(150, 450);
  vertex(300, 450);
  endShape(CLOSE);
  
  beginShape(); // Draws O's brown shadow
  if (mousePressed)
  {
    float rO = random(0, 255);
    float gO = random(0, 255);
    float bO = random(0, 255);
    stroke(rO, gO, bO);
    fill(rO, gO, bO);
  }
  else
  {
    stroke(113, 80, 40);
    fill(113, 80, 40);
  }
  
  vertex(380, 680);
  vertex(330, 680);
  vertex(330, 480);
  vertex(480, 480);
  vertex(480, 680);
  vertex(330, 680);
  vertex(330, 630);
  vertex(430, 630);
  vertex(430, 530);
  vertex(380, 530);
  vertex(380, 630);
  endShape(CLOSE);
  
  beginShape(); // Draws a blue O
  stroke(107, 203, 217);
  fill(107, 203, 217);
  
  vertex(400, 650);
  vertex(350, 650);
  vertex(350, 450);
  vertex(500, 450);
  vertex(500, 650);
  vertex(350, 650);
  vertex(350, 600);
  vertex(450, 600);
  vertex(450, 500);
  vertex(400, 500);
  vertex(400, 600);
  endShape(CLOSE);
  
  beginShape(); // Draws L's purple shadow
  if (mousePressed)
  {
    float rL = random(0, 255);
    float gL = random(0, 255);
    float bL = random(0, 255);
    stroke(rL, bL, gL);
    fill(rL, bL, gL);
  }
  else
  {
    stroke(147, 64, 150);
    fill(147, 64, 150);
  }
  
  vertex(530, 480);
  vertex(530, 680);
  vertex(680, 680);
  vertex(680, 630);
  vertex(580, 630);
  vertex(580, 480);
  endShape(CLOSE);

  beginShape(); // Draws a green L
  stroke(1, 149, 74);
  fill(1, 149, 74);
  vertex(550, 450);
  vertex(550, 650);
  vertex(700, 650);
  vertex(700, 600);
  vertex(600, 600);
  vertex(600, 450);
  endShape(CLOSE);
  
  beginShape(); // Draws F's red shadow
  if (mousePressed)
  {
    float rL = random(0, 255);
    float gL = random(0, 255);
    float bL = random(0, 255);
    stroke(rL, bL, gL);
    fill(rL, bL, gL);
  }
  else
  {
    stroke(231, 30, 39);
    fill(231, 30, 39);
  }
  
  vertex(730, 480);
  vertex(730, 680);
  vertex(780, 680);
  vertex(780, 600);
  vertex(880, 600);
  vertex(880, 560);
  vertex(780, 560);
  vertex(780, 520);
  vertex(880, 520);
  vertex(880, 480);
  vertex(730, 480);
  endShape(CLOSE);
  
  beginShape(); // Draws a yellow F
  stroke(253, 224, 22);
  fill(253, 224, 22);
  
  vertex(750, 450);
  vertex(750, 650);
  vertex(800, 650);
  vertex(800, 570);
  vertex(900, 570);
  vertex(900, 530);
  vertex(800, 530);
  vertex(800, 490);
  vertex(900, 490);
  vertex(900, 450);
  vertex(750, 450);
  endShape(CLOSE);
  
  endRecord();
  save("GOLF_2.png");
}
