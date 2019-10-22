/**
 * Move Eye. 
 * by Simon Greenwold.
 * [e.Rieper Edit]
 */

PVector camPosition;

void setup() {
  
  size(640, 360, P3D);
  fill(204);

  /// Start our camera at 30x, 10y, 400z
  camPosition = new PVector(30, 10, 400);
  
}

void draw() {
  
  lights();
  background(0);
  
  /// SUBTRACT from our camera Z position for the first 10 seconds.
  if (millis() < 10000) {
    camPosition.z = camPosition.z - (millis()*0.0001);
    println(camPosition.z);
  }

  /// Our camera object pulling from camPosition
  camera(camPosition.x, camPosition.y, camPosition.z, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0,                               // centerX, centerY, centerZ
         0.0, 1.0, 0.0);                              // upX, upY, upZ

  /// Sphere and lines for each axis
  push();
  noStroke();
  sphere(50);
  stroke(255);
  line(-100, 0, 0, 100, 0, 0);
  line(0, -100, 0, 0, 100, 0);
  line(0, 0, -100, 0, 0, 100);
  pop();
  
  
  /// Another sphere, translated into the distance
  push();
  translate(100,30, -100);
  fill(255,0,100);
  noStroke();
  sphere(10);
  pop();
  
  /// Another sphere, translated toward the camera
  push();
  translate(-100,-30, 200);
  fill(40,40,255);
  noStroke();
  sphere(10);
  pop();
}
