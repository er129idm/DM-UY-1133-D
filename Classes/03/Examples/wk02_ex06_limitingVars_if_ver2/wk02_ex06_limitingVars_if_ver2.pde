//wk02_ex06_limitingVars_if_ver2

float xPos = 0;

float hue = 0;

float incr = 1;
float hueIncr = 1.0;

void setup() {
  
  size(500, 500);
  colorMode(HSB);
  background(0);
  
}

void draw() {
  
  // Increment our horizontal position
  xPos = xPos + incr;
  
  // Increment the color we will draw
  hue = hue + hueIncr;
  
  // Visual style
  stroke(hue, 255, 255);
  strokeWeight(1);
  
  // Geometry
  line(xPos, 0, xPos, height);
  
  /// LOGIC ///
  
  // checks value of 'h' and resets the polarity of 'hueIncr'
  // if value is less than 0 or greater than 255 code inside 
  // the curly braces loops
  
  if (hue <= 0 || hue >= 255) {
    hueIncr = hueIncr * -1;
  }
  
  //checks value of 'xpos' and resets the polarity of 'incr'
  
  if (xPos <= 0 || xPos >= width) {
    incr=incr * -1;
  }
  
}
