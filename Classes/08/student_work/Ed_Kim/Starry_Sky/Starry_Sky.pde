char[] objects = {' ', ' ', ' ', ' ', ' ', '*'}; // Fills the night sky

void setup()
{
  size(2000, 1500);
  background(80, 30, 120);
  frameRate(10);
}

void star(int x, int y)
{
  int thickness = int(random(10, 20));
  fill(15);
  stroke(15);
  strokeWeight(random(4, 10));
  line((x - 10), (y + 10), (x + 20), (y + 10));
  line((x + 5), (y - 5), (x + 5), (y + 25));
  circle((x + 5), (y + 10), thickness);
  
  fill(250, 240, 100);
  stroke(250, 240, 100);
  strokeWeight(random(4, 10));
  line((x - 15), y, (x + 15), y);
  line(x, (y - 15), x, (y + 15));
  circle(x, y, thickness);
}

void ground()
{
  fill(100, 40, 110);
  stroke(100, 40, 110);
  circle(int(random(0, 2000)), 1700, int(random(600, 800)));
  fill(85, 35, 95);
  stroke(85, 35, 95);
  rect(10, int(random(1390, 1400)), 2000, 1500);
  rect(0, int(random(1390, 1400)), 2000, 1500);
}

void draw()
{
  background(80, 30, 120);
  for (int i = 0; i < 5; i ++)
  {
    for (int j = 0; j < 21; j ++) // First step
    {
      int index = int(random(objects.length));
      //sky_layer = sky_layer + objects[index];

      if (objects[index] == '*')
      {
        int deviation = int(random(-40, 40));
        star(((j * 100) + deviation), ((i * 400) + deviation));
      }
    }
  }
  ground();
}
