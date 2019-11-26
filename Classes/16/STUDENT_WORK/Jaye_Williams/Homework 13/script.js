var imageElements;

var time = 0;
var lastTime = 0;

function setup() {
  noCanvas();
  imageElements = selectAll('.photo');
}

function draw() {

  time = millis();

  if(time - lastTime >= 10000) {

    for(var i = 0; i < imageElements.length; i++) {
      var posX = imageElements[i].position().x;
      var posY = imageElements[i].position().y;
      posX = random(1800);
      posX = posX % windowWidth;
      posY = random(1800);
      posY = posY % windowHeight;

      imageElements[i].position(posX, posY);
    }

    lastTime = millis();

  }
}
