var imageElements;
let xoff = 0.0;
let yoff = 0.0;

function setup() {

  createCanvas(100, 50);
  background(153);
  line(0, 0, width, height);

  noCanvas();

  imageElements = selectAll('.photo');

}

function draw() {

  for (var i = 0; i < imageElements.length; i ++) {
    var posX = imageElements[i].position().x;
    var posY = imageElements[i].position().y;
        xoff = xoff + 0.01;
        posX += noise(xoff) * windowWidth;
        posX = posX % windowWidth;
        posY += noise(yoff) * windowHeight;
        posY = posY % windowHeight;
        console.log("Posx: " + posX + ", PosY: " + posY);
        imageElements[i].position(posX, posY);
  }
}
