var images;
var n = 1;

function setup() {
  noCanvas();
  images = document.getElementsByClassName("photo");
}

function draw() {
  for (var i = 0; i < images.length; i ++) {
    images[i].width += n*6;
  }
  
  if (frameCount%10 == 0) {
    n *= -1;
  }
}
