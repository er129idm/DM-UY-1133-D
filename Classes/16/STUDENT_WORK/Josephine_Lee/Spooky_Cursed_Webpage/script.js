let page;
let button;
let myDiv;
var imageElements;
var wordElements;
var titleElements;
var c;
var calor;
var rNumber;
var fr;


function setup() {

  
  let col = color(0,0,0,0,0);
  let c = color(0);
  let fr = 34;
  frameRate(fr);




  //Button settings

  button = createButton('To continue...');
  button.style('background-color', col);
  button.style('font-size','40px');
  button.size(200,100);
  button.position(1500, 19);
  button.mousePressed(intro);

  //Parts of the HTML being manipulated

  imageElements = selectAll('.photo');
  wordElements = selectAll('.mainContainer');
  titleElements = selectAll('.mainHeader');

  //Stops the draw function

  noLoop();

}

function intro() {


  //The text that pops up

  myDiv = createDiv('YEo ITS ME HERE IM A GHOST AND I WONT LET YOU CONTINUE');
  myDiv.style('font-size',mouseX,+'px');
  myDiv.style('font-color',c);

}

function mousePressed(){

  //when button is clicked the elements are manipulated
  loop();

}
function mouseReleased(){

  //when the button isn't clicked everything stops moving
  noLoop();

}


function draw(){

  //produces the word 'spooky'

  rNumber = random(255);
  page = createP('SPOOKY');
  page.style('background-color', calor);
  page.style('font-size', rNumber + 'px');
  page.size(rNumber, rNumber);
  page.position(rNumber, rNumber);

  for (var i = 0; i < page.length; i ++) {
    var sizeX = pageElements[i].position().x;
    var sizeY = pageElements[i].position().y;
    sizeX += 0;
    sizeY += 10;
    console.log("sizex: " + sizeX + ", sizesY: " + sizeY);
    pageElements[i].sizs(posX, posY);
  }

  //changes the size of the picture

  for (var i = 0; i < imageElements.length; i ++) {
    var sizeX = imageElements[i].position().x;
    var sizeY = imageElements[i].position().y;
    sizeX += 0;
    sizeY += 10;
    console.log("sizex: " + sizeX + ", sizesY: " + sizeY);
    imageElements[i].size(sizeX, sizeY);
  }

  //changes the position of the picture

  for (var i = 0; i < imageElements.length; i ++) {
    var posX = imageElements[i].position().x;
    var posY = imageElements[i].position().y;
    posX += 5;
    posX = posX % windowWidth;
    posY += 10;
    posY = posY % windowHeight;
    console.log("posX " + posX + ", posY: " + posY);
    imageElements[i].position(posX, posY);
  }

  //changes the position of the paragraph

  for (var i = 0; i < wordElements.length; i ++) {
    var posX = wordElements[i].position().x;
    var posY = wordElements[i].position().y;
    posX += 0;
    posX = posX % windowWidth;
    posY += 10;
    posY = posY % windowHeight;
    console.log("posX " + posX + ", posY: " + posY);
    wordElements[i].position(posX, posY);
  }

  //changes the position of the title

  for (var i = 0; i < titleElements.length; i ++) {
    var posX = titleElements[i].position().x;
    var posY = titleElements[i].position().y;
    posX += 0;
    posX = posX % windowWidth;
    posY += 10;
    posY = posY % windowHeight;
    console.log("posX " + posX + ", posY: " + posY);
    titleElements[i].position(posX, posY);
  }

}
