var spoopy;
var spooky = [];
var shapes = [];
var bones;

function preload(){
  spoopy = loadSound("spoopy.mp3");
  for (var i = 0; i < 3; i++){
    spooky[i] = loadImage("images/skeletons" + i + ".jpg")
  }
}

function setup() {
  spoopy.setVolume(0.5);
  createCanvas(100, 50);
  background(153);
  line(0, 0, width, height);
  noCanvas();
  imageElements = selectAll('.photo');
  for (var i = 0; i < 10; i++){
    let x = random(width);
    let y = random(height);
    let r = random(50, 150);
    let b = new Shape(x, y, r);
    shapes.push(b);
  }
}

function mousePressed(){
  if(mousePressed){
    spoopy.play();
  }
  for (var i = 0; i < shapes.length; i++){
    shapes[i].clicked(mouseX,mouseY);
  }
}

function draw() {
  for (var i = 0; i < shapes.length; i++){
    shapes[i].move();
    shapes[i].show();
  }
}


class Bones{
  constructor(x, y, r, skeleton){
  this.x = x;
  this.y = y;
  this.r = r;
  this.skeletons. random(skeletons);
}

  clicked(px, py) {
   if (px > this.x && px < this.x + this.r && py > this.y && py < this.y + this.r) {
     this.skeletons = bones
   }
}
  show(){
    imageMode(CENTER);
    image(this.skeleton, this.x, this.y, this.r);
  }
  move(){
    this.x = this.x + random(-1,1);
    this.y = this.y + random(-1,1);
  }
}
