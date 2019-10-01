

ArrayList<Key> keys = new ArrayList<Key>();

Human myHuman;
Door myDoor;

void setup() {
  size(1080, 1080);
  background(0);
  textSize(32);
  fill(255);
  text("Find all five keys in this dark room to unlock the door",200,height/2);
  delay(5000);
  myHuman = new Human();
  myDoor = new Door();
   for (int i = 0; i<5; i++){
    keys.add(new Key(color(200), random(0,1080), random(0,1080), random(10,50), true));
   }
    
}

void draw() {
  background(0);
  myHuman.display();
  myHuman.move();
  myHuman.keyUsed();
  myDoor.display();
  for (int i=0; i<keys.size(); i++) { 
    keys.get(i).display();
    keys.get(i).touch(myHuman.xPosition,myHuman.yPosition);
    if (keys.get(i).intersect == false) {
      keys.remove(i);
    }
    
  }
  if (keys.isEmpty()){
    fill(0);
    rect(100,100,110,210);
    textSize(32);
    fill(255);
    text("YOU UNLOCKED THE DOOR AND WON!", 300, height/2);
  }
    
  
    

}
  
