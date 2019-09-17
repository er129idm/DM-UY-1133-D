//setting different arrays; each array holds different answers to a particular story line
String[] loveLife = {"a mysterious stranger who shared your love for toast", "your next door neighbor in apartment 2D who likes to blast metallica at 3 in the morning", "your favorite celebrity who was surprisingly polite and completely smitten with you"};
String[] bigShotCompany = {"Google", "Apple", "Microsoft"};
String[] occupation = {"yoddling rapstar", "organic pet treats manufacturer", "dog art curator"}; 
String[] pet = {"exotic siberian tigers", "hornless baby rhinos", "wingless pigeons"};
String[] petNumber = {"13", "4", "27"};
String[] place = {"Prague", "Florence", "Mongolia"};
String[] empire = {"erotica flipbooks", "MacDaddy's Unchewable Chewing Gum", "Yummy in my Tummy doggie treats"};
String[] collection = {"antique troll doll", "pokemon Card", "US presidential bobblehead"};
String[] motto = {"Taylor Swift", "Kanye West", "the Pope", "Dumbledore", "Tony Stark"};

String randomLoveLife = loveLife[int(random(0, loveLife.length))]; //sets that a random option from the array loveLife will come up every time
String randomCompany = bigShotCompany[int(random(0, bigShotCompany.length))];//sets that a random option from the array bigShotCompany will come up every time
String randomOccupation = occupation[int(random(0, occupation.length))]; //sets that a random option from the array occupation will come up every time
String randomPet = pet[int(random(0, pet.length))]; //sets that a random option from the array pet will come up every time
String randomNumber = petNumber[int(random(0, petNumber.length))];//sets that a random option from the array petNumber will come up every time
String randomPlace = place[int(random(0, place.length))]; //sets that a random option from the array place will come up every time
String randomEmpire = empire[int(random(0, empire.length))];//sets that a random option from the array empire will come up every time
String randomCollection = collection[int(random(0, collection.length))]; //sets that a random option from the array collection will come up every time
// i can't space between lines 

  println("Hey you! First, let me congatulate you on the wonderful life you've had thus far. Ever since that Creative Coding class back in 2019, you have been on a steady rise baby and your not coming down! It all started when you...");
  delay(2500); //delays when text is shown
  println("Quit your awful internship at " + randomCompany + " and pursued your lifelong dream of being a(n) " + randomOccupation);
  delay(4000);
  println("Then one day you met " + randomLoveLife + " and fell madly in love");
  delay(4000);
  println("The two of you were instantly married and moved to " + randomPlace + " and bought a home with a huge backyard to house your " + randomNumber + randomPet);
  delay(4000);
  println("A couple years later you chose to start up what would later become a worldwide empire selling " +  randomEmpire + " but then eventually retired so you could focus on more important things like expanding your " + randomCollection + " collection");
  delay(4000);
  println("So yeah, that's been your life thus far. Pretty rad right?!?!?! And I know what you're thinking... 'My life can't possibly be this great forever, can it?'");
  delay(2000);
  println("The answer is 'Yes. Yes it can' But if you're ever in doubt... Just remember your motto:");
  
  
  for (int i = 0; i < int(random(1, 3)); i++) { //sets a loop for motto answers; it's only appearing once or twice but i want it to appear 3 times
    String randomMotto = motto[int(random(0, motto.length))]; //sets random answers to be plugged into the following line...
    delay(2000);
    println("What would " + randomMotto + " do?");
    
   
  }
