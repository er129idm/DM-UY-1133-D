function setup() {
  noCanvas();
}

function draw() {}

function changeImage() {
  if (document.getElementById("imgClickAndChange").src == "8.png") {
    document.getElementById("imgClickAndChange").src = "8.png";
  } else {
    document.getElementById("imgClickAndChange").src = "Savior.jpeg";
  }
}
