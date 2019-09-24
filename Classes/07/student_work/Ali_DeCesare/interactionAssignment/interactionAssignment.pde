//Ali DeCesare
//Interaction Assignment

float randomX, randomY;
float randomRed, randomGreen, randomBlue;
int counter;
int totalTime, timeLeft, startTime;

void setup() {
  size(1080, 980);
  randomX = random(0, width - 100);
  randomY = random(100, height - 100);
  
  randomRed = int(random(0, 255));
  randomGreen = int(random(0, 255));
  randomBlue = int(random(0, 255));
  
  counter = 0;
  
  totalTime = 20;
  timeLeft = 20;
  startTime = millis();
}

void draw() {
  background(255);
  
  fill(randomRed, randomGreen, randomBlue);
  noStroke();
  circle(randomX, randomY, 100);
  
  fill(0);
  textSize(40);
  text("blobs defeated: " + counter, 10, 50);
  
  if (timeLeft > 0) {
    timeLeft = totalTime - (millis() - startTime)/1000;
    text("time left: " + timeLeft, width - 250, 50);
  }
  else if (timeLeft <= 0) {
    fill(0);
    rect(0, 0, width, height);
    
    fill(255);
    text("game over", 450, height/2);
    text("blobs defeated: " + counter, 380, (height/2) + 50);
    
  }
  
}

void mousePressed() {
  if (mouseX > randomX - 50 && mouseX < randomX + 50 && mouseY > randomY - 50 && mouseY < randomY + 50) {
    randomX = random(0, width);
    randomY = random(0, height);
    counter = counter + 1;
    
    randomRed = int(random(0, 255));
    randomGreen = int(random(0, 255));
    randomBlue = int(random(0, 255));
    
    fill(randomRed, randomGreen, randomBlue);
  }
}
