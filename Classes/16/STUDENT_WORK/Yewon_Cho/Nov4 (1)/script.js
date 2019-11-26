var imageElements;
var button;
var x;
var words = ["This", "button", "is", "so", "annoying.", "What","does","it","do?","I","guess","I'll", "never","find","out."];

function setup() {

  createCanvas(windowWidth, windowHeight);
  background(153);
  line(0, 0, width, height);

  noCanvas();

  button = createButton('click to see what happens');
  button.position(windowWidth/2, windowHeight);
  button.mouseClicked(addText);

  imageElements = selectAll('.photo');
}

function draw() {
  for (var i = 0; i < imageElements.length; i ++){
      var posX = random(0, width);
      var posY = random(0, height);
      imageElements[i].position(posX, posY);
  }
}

function mouseClicked() {
  noLoop();
}


function addText(){
  var x = floor(random(0, 15));
  button.html(words[x]);
}