// creat timer
var myVar = setInterval(function() {
  myTimer();
}, 1000);

//create function of timer
function myTimer() {
  var d = new Date();
  document.getElementById("clock").innerHTML = d.toLocaleTimeString();
}

function setup() {
  createCanvas(100, 50);
  background(153);
  line(0, 0, width, height);
  noCanvas();
}
