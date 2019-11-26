var smile;
let scary=false;
var Xpos
var Ypos
let smilepic

function setup() {
noCanvas();
smile=selectAll('.Pic2');

}

function draw() {
  for (var i = 0; i < smile.length; i ++) {
      var posX = smile[i].position().x;
      var posY = smile[i].position().y;
      posX += 40;
      posX = posX % windowWidth;
      posY = 8000;
      console.log("Posx: " + posX + ", PosY: " + posY);
      smile[i].position(posX, posY);
    }

}
// for (var i = 0; i < imageElements.length; i ++) {
  //   var posX = imageElements[i].position().x;
  //   var posY = imageElements[i].position().y;
  //   posX += 1;
  //   posX = posX % windowWidth;
  //   posY += 1;
  //   posY = posY % windowHeight;
  //   console.log("Posx: " + posX + ", PosY: " + posY);
  //   imageElements[i].position(posX, posY);
  // }
