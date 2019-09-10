void setup() {

  size(1080, 1080);
}

void draw() {
  background(246, 228, 204); //peach
// Large Yellow Outer Circle
    fill (255, 204, 0);
    stroke (255, 204, 0);
    ellipse(520, 520, 800, 800); //large yellow circle
// Dark Orange Inner Circle
    fill (255, 153, 0);
    ellipse(580, 480, 700, 700);
// Sun
  fill (246, 228, 204);
  ellipse(700, 350, 200 , 200);
//Blue Water (light)
  fill(147, 226, 213);
  ellipse(520,810,530,200);
//Blue Water (dark)
  fill(52, 221, 221);
  ellipse(520,740,680,200);

// Grey Mountains
  fill(192,192,192);
  triangle(160,700,400,700,300,600);
  triangle(560,700,800,700,700,600);
// White Moutnains
  fill(255,255,255);
  triangle(360,725,700,725,500,525);
  triangle(660,700,800,700,700,600);
  triangle(360,700,400,700,300,600);
}
