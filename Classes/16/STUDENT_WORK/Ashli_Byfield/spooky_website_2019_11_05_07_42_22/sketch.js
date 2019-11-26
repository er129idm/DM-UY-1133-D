let tricks = ['CARROTS', 'PRETZELS', 'GARLIC', 'APPLES'];
let treats = ['CANDY CORN', 'FULL SIZE HERSHEY BAR', 'BUBBLE GUM', 'SNICKERS', 'SKITTLES'];
let badreact = ['Ew...', 'Yuck!', 'NO THANK YOU'];
let goodreact = ['YAY!!!', 'YIPEE!', 'BOO YA!!', 'COME TO MAMA/PAPA', 'AND IIIIIII....WILL ALWAYS LOVE YOU!!!!'];
var pumpkinElement;

// function preload() {
//   img = "jack-o.jpg"       WANTED THIS CENTERED AND TO                                       DISAPPEAR WHEN BUTTON WAS CLICKED
function setup() {

  createCanvas(windowWidth,windowHeight);

  pumpkinElement = select("#pumpkinPicture");

  let txt = createDiv('TRICK OR TREAT');
  let trick = createButton("trick");
  let treat = createButton("treat");

  trick.mouseClicked(trickDisplay);
  treat.mouseClicked(treatDisplay);

  txt.position(0,10);

  trick.position(0,55);
  trick.style("font-family","Comic Sans MS");
  trick.style("background-color","#0000");
  trick.style("color","#fff");

  treat.position(50,55);
  treat.style("font-family","Comic Sans MS");
  treat.style("background-color","#0000");
  treat.style("color","#fff");
}


function trickDisplay() {

  pumpkinElement.position(random(width), random(height));


  textSize(10);
  fill(255);
  textAlign(CENTER);
  text(random(tricks), random(windowWidth), random(windowHeight))

  textSize(10);
  fill(0,230,0);
  textAlign(CENTER);
 text(random(badreact), random(windowWidth), random(windowHeight))
}

function treatDisplay() {
  textSize(10);
  fill(255);
  textAlign(CENTER);
  text(random(treats), random(windowWidth), random(windowHeight))

  textSize(10);
  fill(0,230,0);
  textAlign(CENTER);
 text(random(goodreact), random(windowWidth), random(windowHeight))
}
