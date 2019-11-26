var projectileTimer;
var yPositions = [];

var upIsHeld = false;

function setup() {

  createCanvas(900,600);
  background(20);
  textFont("Courier New");

}

function draw() {
  // put drawing code here
  background(20);

  if (upIsHeld == true) {
    console.log("Up is held!");
  }

  for (var i = 0; i < yPositions.length; i++) {
    ellipse(width/2, yPositions[i], 10, 10);
    yPositions[i] -= 1;
  }

}

function keyPressed() {
  console.log("Press!");

  if (keyCode == UP_ARROW) {
    upIsHeld = true;
    projectileTimer = setInterval(pewPew, 300);
  }
}

function pewPew() {
      yPositions.push(height);
}



function keyReleased() {
  if (keyCode == UP_ARROW) {
    upIsHeld = false;
    clearInterval(projectileTimer);
  }
}
