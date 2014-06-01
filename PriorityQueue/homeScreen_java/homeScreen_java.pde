PImage back, HeartOne, bed, waiting;
int docXcor=-2, numStep=1;
PImage[] doctors;
boolean drawing = true;
int part = 0;
boolean firstTime = true;
int currentTime;


void setup() {
    size(640,480);
    loadDoctors();

}

void loadDoctors() {
  doctors = new PImage[3];
  for (int i=0;i<3;i++) {
    doctors[i] = loadImage("DoctorOne" + i + ".png");
  }
}

  void draw() {
    if (part == 0) {
       setBackground();
       if (numStep == 3) {
         numStep = 0;
       }
       image(doctors[numStep],docXcor,68);
       /*
       image(doctors[numStep],docXcor + 200,70);
       image(doctors[numStep],docXcor + 400,64);
       image(doctors[numStep],docXcor - 200,66);
       image(doctors[numStep],docXcor - 400,72);
       image(doctors[numStep],docXcor - 600,71);
       image(doctors[numStep],docXcor - 800,68);
       */
       docXcor++;
       numStep++;
    }
    else if (part == 1){
      if(firstTime){
        setWaitWith();
      }
      else if (millis() - currentTime > 2000) {
       setWaitWithout();
      }
    }
  }
  
  
  
  void setBackground() {
     back = loadImage("backgroundpic.png");
    background(back);
      HeartOne = loadImage("HeartOne.png");
    HeartOne.resize(0, 70);
    bed = loadImage("bed.png");
    bed.resize(0,50);
    fill(255);
    rect(99, 49, 440, 70);
    fill(0);
    textSize(55);
    text("Emergency Dash", 100, 50, 610, 500);
    image(HeartOne,280,225);
    image(HeartOne,350,225);
    image(HeartOne,210,225);
    image(HeartOne,165, 270);
    image(HeartOne,395,270);
    image(HeartOne,165, 330);
    image(HeartOne,395,330);
    image(HeartOne,280,385);
    image(HeartOne,350,385);
    image(HeartOne,210,385);
    fill(255);
    rect(267, 290, 100, 45);
    fill(0);
    textSize(40);
    text("PLAY", 270, 290, 400, 500);
    textSize(25);
    text("info", 293, 350, 400, 500);
    image(bed, 20, 260);
    image(bed, 20, 350);
    image(bed, 100, 300);
    image(bed, 560, 350);
    image(bed, 100, 400);
    image(bed, 480, 300); 
    image(bed, 560, 260);
    image(bed, 480, 400);
  }
  
  void setWaitWithout(){
    waiting = loadImage("waitingRoom.png");
    background(waiting);
  }
  
  void setWaitWith(){
     waiting = loadImage("waitingRoom.png");
    background(waiting);
    fill(255);
    rect(100,400,450,100);
    fill(0);
    text("You have entered the waiting room. Here you will greet new patients", 100,400, 450, 500);
    firstTime = false;
    currentTime = millis();
  }
  
 /* void createPlayer(){
    Player p = new Player();
  } */ // Unsure why this doesnt work
  
  void mouseClicked(){
     if (mouseX > 267 && mouseX < 367 && mouseY > 290 && mouseY < 335 && part ==0){
        background(0);
        drawing = false;
        part++;
     }
  }
