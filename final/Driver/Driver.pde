import java.io.*;
import java.util.*;


boolean gaming;
String part;
int currentTime;

PImage[] doctors;
int docXcor, numStep;

PImage welcomeBack, HeartOne, bed, waitBack;

Operation a;
fallingStuff b;

int score;
int lives;

PriorityQ patients;
Patient currentPatient;
boolean newGame, first;

void setup() {
  size(640,480);
  Play p = new Play();
  loadDoctors();
  docXcor = -1;
  numStep = 1;
  gaming = false;
  part = "welcomeScreen";
  welcomeBack = loadImage("backgroundpic.png");
  HeartOne = loadImage("HeartOne.png");
  HeartOne.resize(0,70);
  bed = loadImage("bed.png");
  bed.resize(0,50);
  waitBack = loadImage("waitingRoom.png");
  patients = new PriorityQ();
  addPatients();
  score = 0;
  lives = 3;
}

void loadDoctors() {
  doctors = new PImage[3];
  for (int i=0;i<3;i++) {
    doctors[i] = loadImage("DoctorOne" + i + ".png");
  }
}

void addPatients() {
  Random r = new Random();
  for (int i=0;i<10;i++) {
    patients.insert(new Patient());
  }
}

void draw() {
  frameRate(60);
  if (!gaming) {
    if (part.equals("welcomeScreen")) {
      frameRate(18);
      setWelcome();
      walkDoctors();
    }
    else if (part.equals("waitingRoom")) {
      setWaitWith();
      if (millis() - currentTime > 2000) {
        gaming = true;
      }
    }
    else if (part.equals("infoPage")) {
      setInfo();
    }
  }
  else {
    if (part.equals("waitingRoom")) {
      setWaitWithout();
      if (first) {
        currentTime = millis();
        first = false;
      } else if (millis() - currentTime > 2000) {
        currentPatient = patients.mostPriorityPatient();
        part = currentPatient.getDiseaseName();
        a = new Operation();
        /* a.draw(); */
      }
    }
    if (part.equals("Surgery")) {
      if (newGame) {
        //a = new Operation();
        a.draw();
      } 
      else if (a.finished()) {
        if (a.getWon()){
          score+=10;
        }
        else if (a.getLost()){
          lives--;
        }
        newGame = true;
        first = true;
        part = "waitingRoom";
        currentTime = millis();
        gaming = false;
      }
      else {
        a.draw();
      }
    }
    if (part.equals("Flu")) {
      if (newGame) {
        b = new fallingStuff();
      } 
      else if (b.finished()) {
        if (b.getWon()){
          score += 10;
        }
        else if (b.getLost()){
          lives--;
        }
        newGame = true;
        first = true;
        part = "waitingRoom";
        gaming = false;
        currentTime = millis();
      }
      else {
        b.draw();
      }
    }
  }
}


void setWelcome() {
  background(welcomeBack);
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

void walkDoctors() {
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

void setWaitWith() {
  setWaitWithout();
  fill(255);
  rect(100,400,450,100);
  fill(0);
  text("You have entered the waiting room. Here you will greet new patients.", 100,400, 450, 500);
}

void setWaitWithout() {
  background(waitBack);
  fill(0);
  text("score: " + score, 30,30);
  text("lives: " + lives, 400,30);
}

  void setInfo(){
    fill(0);
     background(200);
     fill(230, 30, 0);
     textSize(35);
     text("Welcome to ER Dash!", 140, 50);
     textSize(20);
     fill(0);
     text("You are an emergency room doctor at St. K Hospital.", 45, 90);
     text("As patients come in, their priority will be determined.", 55, 120);
     textSize(25);
     fill(230, 30, 0);
     text("Cure each patient, or lose a life!", 125, 160);
     fill(0);
     text("Diseases:", 20, 200);
     textSize(20);
     text("  + Heart Disease - Operation maze to the heart", 20, 230);
     text("  + Dizziness - Keep the patient from falling", 20, 260);
     text("  + Flu - Catch your boogers with the tissue", 20, 290);
     text("  + Infection - Help antibiotic chase pathogen", 20, 320);
     text("  + Cancer - Break the tumor apart", 20, 350);
     text("  + Virus - Eat up the viral cells", 20, 380);
     fill(220, 0, 0);
     rect(250, 410, 150, 50);
     textSize(30);
     fill(0);
     text("Home", 282, 445);
}
void mouseClicked(){
  if (part.equals("welcomeScreen")){
     if (mouseX > 267 && mouseX < 367 && mouseY > 290 && mouseY < 335){
        part = "waitingRoom";
        currentTime = millis();
     }  
     if (mouseX > 290 && mouseX < 340 && mouseY > 350 && mouseY < 380){
        part = "infoPage";
     }
  }
  else if (part.equals("infoPage")){
     if (mouseX > 250 && mouseX < 400 && mouseY > 410 && mouseY < 460){
       part = "welcomeScreen";
     }
  }
}
  
  void mouseDragged() {
    if (part.equals("Flu")) {
      b.tissueCor = mouseX;
    }
    if (part.equals("Surgery")) {
      if (!a.won && !a.lost && !a.cheated) {
      ellipse(mouseX, mouseY, 1, 1);
      fill(255);
      if (mouseX < 250 && mouseY < 353){
        a.lost = true;
      }
      else if (mouseX < 275 && mouseY > 250 && mouseY < 335){
        a.lost = true;
      }
      else if (mouseX < 318 && mouseY > 250 && mouseY < 305){
        a.lost = true;
      }
      else if (mouseX > 279 && mouseY > 179 && mouseY < 235){
        a.lost = true;
      }
      else if (mouseX > 332 && mouseY > 220 && mouseY < 267){
        a.lost = true;
      }
      else if (mouseX < 364 && mouseY > 282 && mouseY < 305){
        a.lost = true;
      }
      else if (mouseX > 344 && mouseX < 364 && mouseY > 300 && mouseY < 355){
        a.lost = true;
      }
      else if (mouseY > 319 && mouseX > 290 && mouseX < 328){
        a.lost = true;
      }
      else if (mouseX>340 && mouseX<390 && mouseY>150 && mouseY<200) {
        a.won = true;
      }
      }
    }
  }

