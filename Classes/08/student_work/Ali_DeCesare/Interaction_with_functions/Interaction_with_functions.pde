//Ali DeCesare
//Interaction Assignment

float randomX, randomY, randomRadius;
float randomRed, randomGreen, randomBlue;
int counter;
int totalTime, timeLeft;
int counterTimeLeft, counterTotalTime;

int currentState = 0;

int xMovement, yMovement;

void setup() {
  size(1080, 580);
  randomX = random(0, width - 100);
  randomY = random(100, height - 100);
  randomRadius = random(50, 100);

  randomRed = int(random(0, 255));
  randomGreen = int(random(0, 255));
  randomBlue = int(random(0, 255));

  counter = 0;
  
  totalTime = 20;
  timeLeft = 20;
  
  counterTimeLeft = 10;
  counterTotalTime = 10;
  
  xMovement = int(random(-4, 4));
  yMovement = int(random(-4,4));
}

void draw() {
  if (currentState == 0) {
    homeScreen();
  }
  else if (currentState == 1) {
    levelOne();
  }
  else if (currentState == 2) {
    levelTwoIntro();
  }
  else if (currentState == 3) {
    levelTwo();
  }
  else if (currentState == 4) {
    levelThreeIntro();
  }
  else if (currentState == 5) {
    levelThree();
  }
  else if (currentState == 6) {
    youWon();
  }
  else if (currentState == 7) {
    gameOver();
  }
}

void mousePressed() {
  if (mouseX > randomX - 50 && mouseX < randomX + 50 && mouseY > randomY - 50 && mouseY < randomY + 50) {
    randomX = random(0, width);
    randomY = random(0, height);
    randomRadius = random(50, 100);
    counter = counter + 1;

    randomRed = int(random(0, 255));
    randomGreen = int(random(0, 255));
    randomBlue = int(random(0, 255));

    fill(randomRed, randomGreen, randomBlue);
    
    xMovement = int(random(-4, 4));
    yMovement = int(random(-4,4));
  }
}


void homeScreen() {
  if (currentState == 0) {
    background(0);
    textAlign(CENTER);
    textSize(30);
    text("click the circles to get points.", width/2, height/2);
    text("Get 20 points in 20 seconds to move on to the next level.", width/2, (height/2) + 30);
    
    if (counterTimeLeft > 0) {
      counterTimeLeft = counterTotalTime - (millis())/1000;
      text(counterTimeLeft, width/2, (height/2) + 100);
    }
    else if (counterTimeLeft <= 0) {
      currentState = currentState + 1;
    }
  }
}

void levelOne() {
  if (currentState == 1) {
    background(255);

    fill(randomRed, randomGreen, randomBlue);
    noStroke();
    circle(randomX, randomY, 100);

    fill(0);
    textAlign(LEFT);
    textSize(40);
    text("blobs defeated: " + counter, 10, 50);

    if (timeLeft > 0) {
      timeLeft = totalTime - (millis() - 10000)/1000;
      text("time left: " + timeLeft, width - 250, 50);
    }
    else if (timeLeft <= 0 && counter < 20) {
      //game over/try again
      currentState = 7;
    }
    else if (timeLeft <= 1 && counter >= 20) {
      //proceed to next level
      currentState = currentState + 1;
      timeLeft = 20;
      totalTime = 20;
      
      counterTimeLeft = 10;
      counterTotalTime = 10;
    }
  }
}

void levelTwoIntro() {
  if (currentState == 2) {
    background(0);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("Level 1: Complete", width/2, height/2);
    text("Level 2: Start", width/ 2, (height/2) + 50);
    text("Get 20 points in 20 seconds to move on to the next level.", width/2, (height/2) + 80);
    
    if (counterTimeLeft > 0) {
      counterTimeLeft = counterTotalTime - (millis() - 30000)/1000;
      text(counterTimeLeft, width/2, (height/2) + 120);
    }
    else if (counterTimeLeft <= 0) {
      currentState = currentState + 1;
    }
  }
}

void levelTwo() {
  if (currentState == 3) {
    background(255);

    fill(randomRed, randomGreen, randomBlue);
    noStroke();
    circle(randomX, randomY, randomRadius);

    fill(0);
    textSize(40);
    textAlign(LEFT);
    text("blobs defeated: " + counter, 10, 50);

    if (timeLeft > 0) {
      timeLeft = totalTime - (millis() - 40000)/1000;
      text("time left: " + timeLeft, width - 250, 50);
    }
    else if (timeLeft <= 0 && counter < 20) {
      //game over/try again
      currentState = 7;
    }
    else if (timeLeft <= 0 && counter >= 40) {
      //proceed to next level
      currentState = currentState + 1;
      timeLeft = 20;
      totalTime = 20;
      
      counterTimeLeft = 10;
      counterTotalTime = 10;
    }
  }
}


void levelThreeIntro() {
  if (currentState == 4) {
    background(0);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("Level 2: Complete", width/2, height/2);
    text("Level 3: Start", width/2, (height/2) + 50);
    text("Get 20 points in 20 seconds to move on to the next level.", width/2, (height/2) + 80);
    
    if (counterTimeLeft > 0) {
      counterTimeLeft = counterTotalTime - (millis() - 60000)/1000;
      text(counterTimeLeft, width/2, (height/2) + 120);
    }
    else if (counterTimeLeft <= 0) {
      currentState = currentState + 1;
    }
  }
}

void levelThree() {
  if (currentState == 5) {
    background(255);

    fill(randomRed, randomGreen, randomBlue);
    noStroke();
    circle(randomX, randomY, randomRadius);
    randomX = randomX + xMovement;
    randomY = randomY + yMovement;
    if (randomX <= 0 || randomX >= width) {
      xMovement = xMovement * -1;
    }
    else if (randomY <= 0 || randomY >= height) {
      yMovement = yMovement * -1;
    }

    fill(0);
    textSize(40);
    textAlign(LEFT);
    text("blobs defeated: " + counter, 10, 50);

    if (timeLeft > 0) {
      timeLeft = totalTime - (millis() - 70000)/1000;
      text("time left: " + timeLeft, width - 250, 50);
    } else if (timeLeft <= 0 && counter < 20) {
      //game over/try again
      currentState = 7;
    } else if (timeLeft <= 0 && counter >= 60) {
      //proceed to next level
      currentState = 6;
    }
  }
}

void youWon() {
  if (currentState == 6) {
    background(255, 0, 0);
    textAlign(CENTER);
    textSize(40);
    fill(255);
    text("YOU WON!", width/2, height/2);
    text("Number of blobs defeated: " + counter, width/2, (height/2) + 40);
  }
}

void gameOver() {
  if (currentState == 7) {
    background(0);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("You lost.", width/2, height/2);
    text("blobs defeated: " + counter, width/2, height/2 + 30);
  }
}
