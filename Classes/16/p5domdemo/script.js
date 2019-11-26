var imageElements;
var headerElements;
var headerElement;
var txt;

function setup() {

  // createCanvas(100, 50);
  // background(153);
  // ellipse(0,0,width,height);

  noCanvas();

  txt = createDiv('BOO!');
  // txt.position(windowWidth/2,windowHeight/2);
  txt.position(random(300), random(300));

  imageElements = selectAll('.photo');
  // headerElements = selectAll('.mainHeader');
  headerElement = select('#mainHeader');

}

function draw() {

  // print("Hi.");
  // console.log("Hi.");
  // txt.position(random(300), random(300));

  for (var i = 0; i < imageElements.length; i ++) {

    var posX = imageElements[i].position().x;
    var posY = imageElements[i].position().y;

    posX += 1;
    posX = posX % windowWidth;

    posY += 1;
    posY = posY % windowHeight;

    console.log("Posx: " + posX + ", PosY: " + posY);

    // imageElements[i].position(posX, posY);

  }

  // if (frameCount % 2 == 0) {
  //   headerElement.hide();
  // }
  // else {
  //   headerElement.show();
  // }




}
