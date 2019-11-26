// var ps;
let lines="BOO!"

function setup() {
  createCanvas(windowWidth, windowHeight);
  background(0);
  // line(0, 0, width, height);
  noCanvas();
  let txt = createDiv('BOO!');
  txt.position(random(500), random(500));
  // ps = new ParticleSystem(new p5.Vector(width/2, height/2));

}

function draw() {
  // ps.addParticle();
  // ps.run();
  let newParagraph = createP(lines);
  newParagraph.position(random(windowWidth, windowHeight));
}

// function Particle(lvector) {
//     this.location = lvector;
//     this.lifespan = 255.0;
// }
//
// /// .run() function belonging to Particle class
// Particle.prototype.run = function() {
//     this.update();
//     this.display();
// }
//
// /// .update() belonging to Particle
// Particle.prototype.update = function() {
//     this.lifespan -= 5.0;
// }
//
// /// .display() belonging to Particle
// Particle.prototype.display = function() {
//     stroke(255, this.lifespan);
//     fill(255, this.lifespan);
//    	text(lines,this.location.x, this.location.y, this.lifespan/2.0, this.lifespan/2.0);
// }
//
// /// .isDead() - WITH RETURN VALUE - belonging to Particle
// Particle.prototype.isDead = function() {
//     return (this.lifespan < 0);
// }
//
// /// Similar to "constructor" for ParticleSystem
// function ParticleSystem(location) {
//     this.origin = location;
//     this.particles = [];
// }
//
// /// .addParticle() belonging to ParticleSystem class
// ParticleSystem.prototype.addParticle = function() {
//     this.particles.push(new Particle(new p5.Vector(random(0, width), random(0, height))));
// }
//
// /// .run() belonging to ParticleSystem
// ParticleSystem.prototype.run = function() {
//     var p;
//     for (var i = this.particles.length - 1; i >= 0; i--) {
//         p = this.particles[i];
//         p.run();
//         if (p.isDead()) {
//             this.particles.splice(i, 1);
//         }
//     }
// }
