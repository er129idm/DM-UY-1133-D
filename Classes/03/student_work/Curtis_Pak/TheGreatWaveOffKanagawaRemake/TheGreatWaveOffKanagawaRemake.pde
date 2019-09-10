//wk01_ex00
/* leedle leedle lee
 */
import processing.pdf.*;


void setup() {
  size(1080, 1080); // 1080x1080 canvas
  frameRate(1);
  
}

void draw() {
  background(245, 245, 220); // create a beige background for the canvas
  stroke(255, 255, 255);
  strokeWeight(10);
  arc(500, 600, 900, 900, 0, PI+QUARTER_PI, PIE); // wave like shape 
  curve(0, 0, 0, 900, 1000, 700, 900, 1000); // other smaller wave
  curve(0, 0, 0, 400, 1000, 1000, 500, 600);
  curve(0, 0, 0, 750, 1000, 700, 900, 1000); 
  curve(0, 0, 0, 750, 1000, 500, 400, 500); 
  fill(191, 239, 255); // light blue for the wave 
  strokeWeight(20);
  save("TheGreatWaveOffKanagawaRemake.png");
}
