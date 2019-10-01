//Ali DeCesare
//Classes and ArrayList
PImage tree;
PImage leaf;
PImage cloud;

int leafSize = 0;
int maxLeaf = 10000;
//int treeUpgrade = 50;

ArrayList<Leaf> leaves = new ArrayList<Leaf>();

Cloud cloud1;

void setup() {
  size(800, 800);
  tree = loadImage("tree.png");
  leaf = loadImage("leaf.png"); 
  cloud = loadImage("cloud.png");
  cloud1 = new Cloud(1, 0, random(0, height/3)); 
}


void draw() {
  background(137, 207,  240);
  
  fill(0);
  rect(0, height - 75, width, height);
  
  fill(255);
  textSize(30);
  //text("leaves clicked: " + leafSize, 50, height - 50);
  //text("clicks until upgrade: " + treeUpgrade, 50, height - 25);
  
  cloud1.display();
  cloud1.move();
  
  image(tree, 75, 0);
  
  for (int i=0; i<leaves.size(); i++) {
    leaves.get(i).move(); 
    leaves.get(i).display();
  }
}

void mouseClicked () {
  if (leafSize <= maxLeaf) {
    leafSize = leafSize + 1;
    //treeUpgrade = treeUpgrade - 1;
    leaves.add(new Leaf(random(100, width - 100), random(100, height/3), 7));
  } 
}
