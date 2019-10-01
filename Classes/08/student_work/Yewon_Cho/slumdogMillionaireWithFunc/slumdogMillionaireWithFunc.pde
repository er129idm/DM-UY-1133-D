////Your homework is to create an experience (art piece, game, etc...) focusing specifically on user interaction 
////with either the Mouse or Keyboard.
////(If your main interaction is one input method, feel free to also include events from the other, 
////but focus specifically on the main one you chose.)

//This program gives you five trivia questions. See how many questions you can get right!

int questionIndex = 0;
int score = 0; 
int x = 200;


String[] questions = {"1. What did the crocodile swallow in Peter Pan?", "2. Where is the smallest bone in the body?", "3. What does the Roman numeral 'C' present?", 
                       "4. Sherlock Holmes lives at _______, Baker Street, London.", "5. Which Spanish artist said he would eat his wife when she died?"};
String[][] answerChoices = {{"a. An alarm clock", "b. Captain Hook", "c. Peter Pan", "d. A notebook"}, {"a. Nose", "b. Hand", "c. Leg", "d. Ear"}, 
                            {"a. 50", "b. 100", "c. 1,000", "d. 10,000"}, {"a. 201B", "b. 211B", "c. 221B", "d. 231B"}, 
                            {"a. Salvador Dali", "b. Pablo Picasso", "c. Francisco Goya", "d. Joan Miro"}};  
Character[] answer = {'a', 'd', 'b', 'c', 'a'};

void setup(){
  size(1080, 1080);
  
  background(255, 228, 181);

  noStroke();
}

void draw(){
  //clears out the previous question and displays new question
  clear();
  
  background(255, 228, 181);
  textSize(40);
  text("Slumdog Millionaire", 350, 100); 
  fill(0);
  
  //if you run out of question, it displays your total score
  if (questionIndex > 4){
    textSize(30);
    text("Your total Score is " + score + " out of 100!", 300, 400);
    fill(0);
  }
  else{
    textSize(20);
    text(questions[questionIndex], 200, 300);
    textSize(15);
    
    //Replaced code with new function displayAnswerChoice
    displayAnswerChoice(0, x);
    displayAnswerChoice(1, x + 200);
    displayAnswerChoice(2, x + 400);
    displayAnswerChoice(3, x + 600);
    
    textSize(20);
    text("Score: " + score, 900, 100);
    fill(0);
  }
}



void keyPressed(){
  if (key == 'a' || key == 'b' || key == 'c' || key == 'd'){
    if (questionIndex < 5){
      if (key == answer[questionIndex]){
        score += 20;
      }
      redraw();
      questionIndex += 1;
      save("slumdodgMillionaire.png");
    }
  }
}

//New function
void displayAnswerChoice(int i, int xpos) {
  text(answerChoices[questionIndex][i], xpos, 400);
  fill(0);
}
