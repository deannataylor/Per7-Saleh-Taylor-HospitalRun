PImage back, HeartOne, bed, waiting;
int docXcor=-2, numStep=1;
PImage[] doctors;
boolean drawing = true;
String part = "homeScreen";
boolean firstTime = true;
int currentTime;


 void setup() {
    size(640,480);
    loadDoctors();
    Player p = new Player();
} 


void loadDoctors() {
  doctors = new PImage[3];
  for (int i=0;i<3;i++) {
    doctors[i] = loadImage("DoctorOne" + i + ".png");
  }
}

  void draw() {
    if (part.equals("homeScreen")) {
       setBackground();
       if (numStep == 3) {
         numStep = 0;
       }
       image(doctors[numStep],docXcor,68);
       image(doctors[numStep],docXcor - 1000,70);
       image(doctors[numStep],docXcor - 1200,64);
       image(doctors[numStep],docXcor - 200,66);
       image(doctors[numStep],docXcor - 400,72);
       image(doctors[numStep],docXcor - 600,71);
       image(doctors[numStep],docXcor - 800,68);
       docXcor++;
       numStep++;
    }
    else if (part.equals("waitingRoom")){
      if(firstTime){
        setWaitWith();
      }
      else if (millis() - currentTime > 2000) {
       setWaitWithout();
      }
       text("X Quit", 550, 30);
    }
    else if (part.equals("infoPage")){
       setInfo();
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
  
    void setInfo(){
      fill(0);
       background(200);
       fill(230, 30, 0);
       textSize(35);
       text("Welcome to ER Dash!", 140, 50);
       textSize(20);
       fill(0);
       text("You are an emergency room doctor at the ST. K Hospital", 45, 90);
       text("As patients come in, their priority will be determined", 55, 120);
       textSize(25);
       fill(230, 30, 0);
       text("Cure each patient, or lose a life!", 125, 160);
       fill(0);
       text("Diseases:", 20, 200);
       textSize(20);
       text("  + Enter disease here - mini game description", 20, 230);
       text("  + Enter disease here - mini game description", 20, 260);
       text("  + Enter disease here - mini game description", 20, 290);
       text("  + Enter disease here - mini game description", 20, 320);
       text("  + Enter disease here - mini game description", 20, 350);
       text("  + Enter disease here - mini game description", 20, 380);
       fill(220, 0, 0);
       rect(250, 410, 150, 50);
       textSize(30);
       fill(0);
       text("Home", 282, 445);
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
    if (part.equals("homeScreen")){
       if (mouseX > 267 && mouseX < 367 && mouseY > 290 && mouseY < 335 && part.equals("homeScreen")){
          background(0);
          drawing = false;
          part = "waitingRoom";
       }  rect(290, 350, 50, 30);
       if (mouseX > 290 && mouseX < 340 && mouseY > 350 && mouseY < 380){
          part = "infoPage";
       }
    }
    else if (part.equals("infoPage")){
       if (mouseX > 250 && mouseX < 400 && mouseY > 410 && mouseY < 460){
         part = "homeScreen";
       }
    }
    else if (part.equals("waitingRoom")){
      if (mouseX > 550 && mouseY < 40){
        part = "homeScreen";
      }
    }
  }
