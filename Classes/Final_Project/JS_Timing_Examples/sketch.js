var projectileTimer;
var yPositions = [];

var endTimer;

function setup() {

  createCanvas(900,600);
  background(20);
  textFont("Courier New");

  endTimer = setTimeout(function(){
    console.log("END OF GAME!!!");
  }, 10000);

}

function draw() {
  // put drawing code here
  background(20);

  for (var i = 0; i < yPositions.length; i++) {
    ellipse(width/2, yPositions[i], 10, 10);
    yPositions[i] -= 1;
  }

}

function keyPressed() {
  console.log("Press!");

  /// When we press down the UP key
  /// we want to start our timer at an interval of 300ms
  /// to shoot out pew pews quickly, but not toooo quickly.
  if (keyCode == UP_ARROW) {
    projectileTimer = setInterval(
      function(){
        yPositions.push(height);
      }, 300);
  }

}

function keyReleased() {
  if (keyCode == UP_ARROW) {
    clearInterval(projectileTimer);
  }
}
