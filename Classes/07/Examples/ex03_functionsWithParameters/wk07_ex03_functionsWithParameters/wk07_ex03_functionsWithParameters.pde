//wk07_ex03_functionsWithParameters
//adding arguments or parameters to functions 
//increases thier flexibilty

//no declared globals vars
//all vars are local to the function 
void setup() {
  size(500, 500); 
  colorMode(HSB);
}

void draw() {
  background(0);

  //the ball with it's parameters (dia, xpos, ypos, hue)
  //these vales are passed to the function 

  ball(20, 100, 100, 185); 
  ball(35, 59, 60, 50);
}

//vars for the function are declared and typed here
void ball(int dia, int xpos, int ypos, float hue) {
  fill(hue, 255, 200);
  noStroke();
  ellipse(xpos, ypos, dia, dia);
}
