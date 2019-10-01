

Boolean upArrowIsHeld = false;
Boolean leftArrowIsHeld = false;
Boolean downArrowIsHeld = false;
Boolean rightArrowIsHeld = false;
Boolean jIsHeld=false;
Boolean uIsHeld=false;
Boolean ultimateIsReady=false;

Boolean heroDJ=false;

float ultimateCharge=200;

float xPosition = 400;
float yPosition = 600;

float movementSpeed = 5.0;
float bulletPosition=2000;
Boolean movingMode=true;


Boolean monsterAIsAlive=true;
float AmonsterXPosition=random(1, 1080);
float AmonsterYPosition=random(1, 1080);
float AmonsterHP=500;


Boolean monsterBIsAlive=true;
float BmonsterXPosition=random(1, 1080);
float BmonsterYPosition=random(1, 1080);
float BmonsterHP=500;


Boolean monsterCIsAlive=true;
float CmonsterXPosition=random(1, 1080);
float CmonsterYPosition=random(1, 1080);
float CmonsterHP=500;


Boolean monsterDIsAlive=true;
float DmonsterXPosition=random(1, 1080);
float DmonsterYPosition=random(1, 1080);
float DmonsterHP=500;


Boolean monsterEIsAlive=true;
float EmonsterXPosition=random(1, 1080);
float EmonsterYPosition=random(1, 1080);
float EmonsterHP=500;


float monster2AHP=1000;
float monster2BHP=1000;
Boolean monster2AIsAlive=true;
Boolean monster2BIsAlive=true;


float monsterbulletX=800;
float monsterBbulletX=400;



float score=0;
float HP=200 ;
Boolean plusHP=false;
float plusHPlenth=400;
Boolean normalHP=true;



float lenthOfUltimate=1;
float widthOfUltimate=1;

PImage Mei;

PImage Monster1;
PImage Monster2;
void setup() {
  frameRate(50);
  size(1080, 1080);
  imageMode(CENTER);
  xPosition = 80;
  yPosition = 80;

  //rectMode(CENTER);

  background(24, 26, 23);
  rectMode(CENTER);
  noStroke();
 
  Mei=loadImage("Mei.png");
 
  Monster1=loadImage("Monster1Mei.PNG");
 Monster2=loadImage("monster2Mei.png");
}

void draw() {
 




  if (heroDJ) {
    float HP=250 ;
    float movementSpeed = 4.0;
    float bulletYPosition=yPosition-25;
    background(170);
    
    rectMode(CORNER);
    fill(20);
    noStroke();
    rect(0, 0, 1080, 200);
    rect(0, 880, 1080, 200);

    //  image(Background1,540,540,1080,700);

    image(Mei, xPosition, yPosition, 160, 160);
    noStroke();
    rectMode(CORNER);
    textSize(20);
    fill(200, 0, 0);
    text("HP:", 10, 930);
    textSize(10);
    text(HP, 265, 940);
    fill(200, 0, 0);
    rect(60, 917, HP, 10);
    //fill(26, 26, 90);
    //rect(10, 100, score, 10);
    fill(76, 131, 281);
    textSize(20);
    text("Ultimate Charge:", 10, 980);
    textSize(10);
    text(ultimateCharge, 430, 975);

    rect(200, 967, ultimateCharge, 10);
    rectMode(CENTER);
    fill(255);
    textSize(20);
    text(score, 800, 975);
    textSize(25);
    text("Press 'UP/DOWN/LEFT/RIGHT Arrow' for direction.",100,70);
     text("Press 'J' for attack.",100,120);
     text("Press 'U' for ultimnate.",100,170);

    if (upArrowIsHeld) {
      yPosition = yPosition - movementSpeed;
    }
    if (leftArrowIsHeld) {
      xPosition = xPosition - movementSpeed;
    }
    if (downArrowIsHeld) {
      yPosition = yPosition + movementSpeed;
    }
    if (rightArrowIsHeld) {
      xPosition = xPosition + movementSpeed;
    }



    //Monster A

    for (int i=0; i<2; i++) {
      if (monsterAIsAlive) {
        float moving=random(-10, 10);
        float moving2=random(-15, 15);
        if (AmonsterXPosition>=1080) {
          AmonsterXPosition=50;
        }
        if (AmonsterYPosition>=840) {
          AmonsterYPosition=540;
        }
        if (AmonsterXPosition<=1) {
          AmonsterXPosition=1080;
        }
        if (AmonsterYPosition<=200) {
          AmonsterYPosition=540;
        }
        image(Monster1, AmonsterXPosition, AmonsterYPosition, 100, 100);
        AmonsterXPosition=AmonsterXPosition+moving+1;
        AmonsterYPosition=AmonsterYPosition+moving2;
      }
    }
    //Monster B
    for (int i=0; i<2; i++) {
      if (monsterBIsAlive) {
        float moving=random(-10, 10);
        float moving2=random(-15, 15);
        if (BmonsterXPosition>=1080) {
          BmonsterXPosition=BmonsterXPosition-10;
        }
        if (BmonsterYPosition>=840) {
          BmonsterYPosition=540;
        }
        if (BmonsterXPosition<=1) {
          BmonsterXPosition=1080;
        }
        if (BmonsterYPosition<=200) {
          BmonsterYPosition=540;
        }
        image(Monster1, BmonsterXPosition, BmonsterYPosition, 100, 100);
        BmonsterXPosition=BmonsterXPosition+moving-2;
        BmonsterYPosition=BmonsterYPosition+moving2;
      }
    }

    //Monster C
    for (int i=0; i<2; i++) {
      if (monsterCIsAlive) {
        float moving=random(-10, 10);
        float moving2=random(-15, 15);
        if (CmonsterXPosition>=1080) {
          CmonsterXPosition=CmonsterXPosition-10;
        }
        if (CmonsterYPosition>=840) {
          CmonsterYPosition=540;
        }
        if (CmonsterXPosition<=1) {
          CmonsterXPosition=1080;
        }
        if (CmonsterYPosition<=200) {
          CmonsterYPosition=540;
        }
        image(Monster1, CmonsterXPosition, CmonsterYPosition, 100, 100);
        CmonsterXPosition=CmonsterXPosition+moving-3;
        CmonsterYPosition=CmonsterYPosition+moving2;
      }
    }

    //Monster D
    for (int i=0; i<2; i++) {
      if (monsterDIsAlive) {
        float moving=random(-10, 10);
        float moving2=random(-15, 15);
        if (DmonsterXPosition>=1080) {
          DmonsterXPosition=DmonsterXPosition-10;
        }
        if (DmonsterYPosition>=840) {
          DmonsterYPosition=540;
        }
        if (DmonsterXPosition<=1) {
          DmonsterXPosition=1080;
        }
        if (DmonsterYPosition<=200) {
          DmonsterYPosition=540;
        }
        image(Monster1, DmonsterXPosition, DmonsterYPosition, 100, 100);
        DmonsterXPosition=DmonsterXPosition+moving-1;
        DmonsterYPosition=DmonsterYPosition+moving2;
      }
    }
    //Monster E
    for (int i=0; i<2; i++) {
      if (monsterEIsAlive) {
        float moving=random(-10, 10);
        float moving2=random(-15, 15);
        if (EmonsterXPosition>=1080) {
          EmonsterXPosition=50;
        }
        if (EmonsterYPosition>=840) {
          EmonsterYPosition=540;
        }
        if (EmonsterXPosition<=1) {
          EmonsterXPosition=1080;
        }
        if (EmonsterYPosition<=200) {
          EmonsterYPosition=540;
        }
        image(Monster1, EmonsterXPosition, EmonsterYPosition, 100, 100);
        EmonsterXPosition=EmonsterXPosition+moving+1;
        EmonsterYPosition=EmonsterYPosition+moving2;
      }
    }



    //Monster 2 A
    if (monster2AIsAlive) {

      image(Monster2, 950, 300, 200, 200);
      fill(245, 217, 132);
      noStroke();
      rect(monsterbulletX, 325, 5, 5);
      rect(monsterbulletX, 335, 5, 5);
      rect(monsterbulletX+20, 325, 5, 5);
      rect(monsterbulletX+20, 335, 5, 5);
      monsterbulletX=monsterbulletX-24;
      if (monsterbulletX<=0) {
        monsterbulletX=800;
      }

      if (dist(bulletPosition, bulletYPosition, 950, 300)<=100) {
        score=score+10; 
        monster2AHP=monster2AHP-10;
        ultimateCharge=ultimateCharge+0.5;
      }

      if (dist(bulletPosition+20, bulletYPosition, 950, 300)<=50) {
        score=score+10; 
        monster2AHP=monster2AHP-10;
        ultimateCharge=ultimateCharge+0.5;
      }
      if (dist(bulletPosition+40, bulletYPosition, 950, 300)<=50) {
        score=score+10; 
        monster2AHP=monster2AHP-10;
        ultimateCharge=ultimateCharge+0.5;
      }
      if (dist(xPosition, yPosition, monsterBbulletX, 325)<=50) {
        if (normalHP) {
          HP=HP-1.5;
        }
      }
      if (dist(xPosition, yPosition, monsterBbulletX, 335)<=50) {
        if (normalHP) {
          HP=HP-1.5;
        }
      }        
      if (dist(xPosition, yPosition+20, monsterBbulletX, 325)<=50) {
        if (normalHP) {
          HP=HP-1.5;
        }
      }
      if (dist(xPosition, yPosition+20, monsterBbulletX, 335)<=50) {
        if (normalHP) {
          HP=HP-1.5;
        }
      }
    }
    if (monster2AHP<=1) {
      monster2AIsAlive=false;
    }







    //Monster 2 B
    if (monster2BIsAlive) {

      image(Monster2, 950, 700, 200, 200);
      fill(245, 217, 132);
      noStroke();
      rect(monsterBbulletX, 725, 5, 5);
      rect(monsterBbulletX, 735, 5, 5);
      rect(monsterBbulletX+20, 725, 5, 5);
      rect(monsterBbulletX+20, 735, 5, 5);
      monsterBbulletX=monsterBbulletX-24;
      if (monsterBbulletX<=0) {
        monsterBbulletX=800;
      }
      if (dist(bulletPosition, bulletYPosition, 950, 700)<=100) {
        score=score+10; 
        monster2BHP=monster2BHP-10;
        ultimateCharge=ultimateCharge+0.5;
      }

      if (dist(bulletPosition+20, bulletYPosition, 950, 700)<=50) {
        score=score+10; 
        monster2BHP=monster2BHP-10;
        ultimateCharge=ultimateCharge+0.5;
      }
      if (dist(bulletPosition+40, bulletYPosition, 950, 700)<=50) {
        score=score+10; 
        monster2BHP=monster2BHP-10;
        ultimateCharge=ultimateCharge+0.5;
      }
      if (dist(xPosition, yPosition, monsterBbulletX, 725)<=50) {
        if (normalHP) {
          HP=HP-1.5;
        }
      }
      if (dist(xPosition, yPosition, monsterBbulletX, 735)<=50) {
        if (normalHP) {
          HP=HP-1.5;
        }
      }
      if (dist(xPosition, yPosition, monsterBbulletX+20, 725)<=50) {
        if (normalHP) {
          HP=HP-1.5;
        }
      }
      if (dist(xPosition, yPosition, monsterBbulletX+20, 735)<=50) {
        if (normalHP) {
          HP=HP-1.5;
        }
      }
    }

    if (monster2BHP<=1) {
      monster2BIsAlive=false;
    }
    //score count for DJ MonsterA


    if (dist(bulletPosition, bulletYPosition, AmonsterXPosition, AmonsterYPosition)<=50) {
      score=score+10; 
      AmonsterHP=AmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(bulletPosition+20, bulletYPosition, AmonsterXPosition, AmonsterYPosition)<=50) {
      score=score+10; 
      AmonsterHP=AmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }
    if (dist(bulletPosition+40, bulletYPosition, AmonsterXPosition, AmonsterYPosition)<=50) {
      score=score+10; 
      AmonsterHP=AmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(xPosition, yPosition, AmonsterXPosition, AmonsterYPosition)<=100) {
      if (normalHP) {
        HP=HP-1.2;
      }
    }
    if (AmonsterHP<=1) {
      AmonsterXPosition=10000;
      AmonsterYPosition=10000;
      monsterAIsAlive=false;
    }


    //score count for DJ MonsterB

    if (dist(bulletPosition, bulletYPosition, BmonsterXPosition, BmonsterYPosition)<=50) {
      score=score+10; 
      BmonsterHP=BmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(bulletPosition+20, bulletYPosition, BmonsterXPosition, BmonsterYPosition)<=50) {
      score=score+10; 
      BmonsterHP=BmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }
    if (dist(bulletPosition+40, bulletYPosition, BmonsterXPosition, BmonsterYPosition)<=50) {
      score=score+10; 
      BmonsterHP=BmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(xPosition, yPosition, BmonsterXPosition, BmonsterYPosition)<=100) {
      if (normalHP) {
        HP=HP-1.2;
      }
    }

    if (BmonsterHP<=1) {
      BmonsterXPosition=10000;
      BmonsterYPosition=10000;
      monsterBIsAlive=false;
    }



    //score count for DJ MonsterC

    if (dist(bulletPosition, bulletYPosition, CmonsterXPosition, CmonsterYPosition)<=50) {
      score=score+10; 
      CmonsterHP=CmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(bulletPosition+20, bulletYPosition, CmonsterXPosition, CmonsterYPosition)<=50) {
      score=score+10; 
      CmonsterHP=CmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }
    if (dist(bulletPosition+40, bulletYPosition, CmonsterXPosition, CmonsterYPosition)<=50) {
      score=score+10; 
      CmonsterHP=CmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(xPosition, yPosition, CmonsterXPosition, CmonsterYPosition)<=100) {
      if (normalHP) {
        HP=HP-1.2;
      }
    }

    if (CmonsterHP<=1) {
      CmonsterXPosition=10000;
      CmonsterYPosition=10000;
      monsterCIsAlive=false;
    }


    //score count for DJ MonsterD

    if (dist(bulletPosition, bulletYPosition, DmonsterXPosition, DmonsterYPosition)<=50) {
      score=score+10; 
      DmonsterHP=DmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(bulletPosition+20, bulletYPosition, DmonsterXPosition, DmonsterYPosition)<=50) {
      score=score+10; 
      DmonsterHP=DmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }
    if (dist(bulletPosition+40, bulletYPosition, DmonsterXPosition, DmonsterYPosition)<=50) {
      score=score+10; 
      DmonsterHP=DmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(xPosition, yPosition, DmonsterXPosition, DmonsterYPosition)<=100) {
      if (normalHP) {
        HP=HP-1.2;
      }
    }

    if (DmonsterHP<=1) {
      DmonsterXPosition=10000;
      DmonsterYPosition=10000;
      monsterDIsAlive=false;
    }

    //score count for DJ MonsterE

    if (dist(bulletPosition, bulletYPosition, EmonsterXPosition, EmonsterYPosition)<=50) {
      score=score+10; 
      EmonsterHP=EmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(bulletPosition+20, bulletYPosition, EmonsterXPosition, EmonsterYPosition)<=50) {
      score=score+10; 
      EmonsterHP=EmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }
    if (dist(bulletPosition+40, bulletYPosition, EmonsterXPosition, EmonsterYPosition)<=50) {
      score=score+10; 
      EmonsterHP=EmonsterHP-10;
      ultimateCharge=ultimateCharge+1;
    }

    if (dist(xPosition, yPosition, EmonsterXPosition, EmonsterYPosition)<=100) {
      if (normalHP) {
        HP=HP-1.2;
      }
    }

    if (EmonsterHP<=1) {
      EmonsterXPosition=10000;
      EmonsterYPosition=10000;
      monsterEIsAlive=false;
    }
    //Mei's attack mode
    if (jIsHeld) {
      if (bulletPosition >= xPosition+3000) {
        bulletPosition=xPosition+50;
      }
      float bulletcolor;
      bulletcolor=bulletPosition-xPosition;
      float bulletcolormap= map(bulletcolor,0,1080,0,40);
      noFill();
      stroke(100+bulletcolormap, 180+bulletcolormap, 210+bulletcolormap);
      strokeWeight(4);
      triangle(bulletPosition-10, bulletYPosition-4,bulletPosition-10, bulletYPosition+4, bulletPosition+20, bulletYPosition);
      bulletPosition=bulletPosition+30;
    }

    //DJ's Ultimate
    if (ultimateCharge>=200) {
      ultimateCharge=200;
      ultimateIsReady=true;
    }
    if (uIsHeld) {
      if (ultimateIsReady) {
        strokeWeight(30);
        stroke(110, 130, 100);
        noFill();
        ellipse(xPosition, yPosition, lenthOfUltimate, widthOfUltimate);
        strokeWeight(15);
        stroke(180, 220, 110);
        ellipse(xPosition, yPosition, lenthOfUltimate-10, widthOfUltimate-10);
        strokeWeight(30);
        stroke(110, 130, 100);
        ellipse(xPosition, yPosition, lenthOfUltimate-50, widthOfUltimate-50);
        ellipse(xPosition, yPosition, lenthOfUltimate-300, widthOfUltimate-300);
        strokeWeight(40);
        stroke(180, 220, 110);
        ellipse(xPosition, yPosition, lenthOfUltimate-600, widthOfUltimate-600);
        lenthOfUltimate=lenthOfUltimate+40;
        widthOfUltimate=widthOfUltimate+40;
      }
    }
    if (plusHP) {
      if (ultimateCharge>=200) {
        normalHP=false;
        rectMode(CORNER);
        noStroke();
        fill(184, 223, 108);
        rect(60+HP, 917, plusHPlenth, 10);
        plusHPlenth=plusHPlenth-1;
        if (plusHPlenth<=1) {
          plusHP=false;
          ultimateCharge=0;
          lenthOfUltimate=1;
          widthOfUltimate=1;
          ultimateIsReady=false;
          plusHPlenth=400;
          normalHP=true;
        }
      }
    }
  }
  if (HP<=1) {
    fill(0);
    rect(540, 540, 1080, 1080);
    fill(255, 0, 0);
    textSize(100);
    text("You're Dead!!!", 170, 500);
  }
  if (score>=4050) {
   


                fill(255);
                rect(540, 540, 1080, 1080);
                fill(230, 200, 40);
                textSize(100);
                text("YOU WIN!!!", 170, 500);
                for (int i = 0; i < 5; i++) {
    float squareSize = random(0, 10);
    ellipse(mouseX + random(-50, 50), mouseY + random(-50, 50), squareSize, squareSize);
  }
           
  }
}






void keyTyped() {
}
void keyPressed() {
  if (key == '4' ) {
    
    heroDJ=true;
  }

  if (key == 'q' || key == 'Q') {

  }
  if (key == 'u' || key == 'U') {
    plusHP=true;
    uIsHeld=true;
    jIsHeld=false;
    upArrowIsHeld = false;
    downArrowIsHeld = false;
    leftArrowIsHeld = false;
    rightArrowIsHeld = false;
  }

  if (key == 'j' || key == 'J') {
    jIsHeld=true;
    movingMode=false;
    upArrowIsHeld = false;
    downArrowIsHeld = false;
    leftArrowIsHeld = false;
    rightArrowIsHeld = false;
    uIsHeld=false;
  }
  if ( movingMode)

  {
    if (key == CODED) {
      /// Move Character UP
      if (keyCode == UP) {
        upArrowIsHeld = true;
        downArrowIsHeld = false;
        leftArrowIsHeld = false;
        rightArrowIsHeld = false;
        jIsHeld=false;
        uIsHeld=false;
      }

      /// Move Character LEFT
      if (keyCode == LEFT) {
        upArrowIsHeld = false;
        downArrowIsHeld = false;
        leftArrowIsHeld = true;
        rightArrowIsHeld = false;
        jIsHeld=false;
        uIsHeld=false;
      }

      /// Move Character DOWN
      if (keyCode == DOWN) {
        upArrowIsHeld = false;
        downArrowIsHeld = true;
        leftArrowIsHeld = false;
        rightArrowIsHeld = false;
        jIsHeld=false;
        uIsHeld=false;
      }

      /// Move Character RIGHT
      if (keyCode == RIGHT) {
        upArrowIsHeld = false;
        downArrowIsHeld = false;
        leftArrowIsHeld = false;
        rightArrowIsHeld = true;
        jIsHeld=false;
        uIsHeld=false;
      }
    }
  }
}

void keyReleased() {
  if (key == 'u' || key == 'U') {
    uIsHeld=false;
    movingMode=true;
  }

  if (key == 'j' || key == 'J') {
    jIsHeld=false;
    movingMode=true;
  }
  if (key == CODED) {
    /// Move Character UP
    if (keyCode == UP) {
      upArrowIsHeld = false;
    }

    /// Move Character LEFT
    if (keyCode == LEFT) {
      leftArrowIsHeld = false;
    }

    /// Move Character DOWN
    if (keyCode == DOWN) {
      downArrowIsHeld = false;
    }

    /// Move Character RIGHT
    if (keyCode == RIGHT) {
      rightArrowIsHeld = false;
    }
  }
}
