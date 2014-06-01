
import java.util.*;
import java.io.*;

PImage back, tissue;
PImage[] boogers;
int yCor = 30;
int xCor = 30;
int currentTime;
int boogerDropped, count;
int tissueCor = 300;
int score = 0;
boolean lost = false;

void setup(){
  size(640, 480);
  currentTime = millis();
  loadBoogers();
  tissue = loadImage("tissue.png");
}

void loadBoogers(){
  boogers = new PImage[3];
  for (int i=0; i<3; i++){
    boogers[i] = loadImage("booger" + i + ".png");
  }
}

void draw(){
  if (!lost){
    if (score < 100){
      back = loadImage("fallingBack.png");
      background(back);
      image(boogers[0], xCor, yCor);
      image(tissue, tissueCor, 400);
      yCor += 5; // We should make this speed based on the players level
      textSize(45);
      text(score, 20, 45);
    }
    else if (score == 100){
      back = loadImage("fallingBack.png");
      background(back);
      textSize(25);
      text("you won!", 0, 0, 200, 200);
    }
  }
  else{
     back = loadImage("fallingBack.png");
      background(back);
      textSize(25);
      text("you lose!", 0, 0, 200, 200);
    }
  if (yCor == 410 && tissueCor > xCor - 60 && tissueCor < xCor+10){
    increaseScore();
    disappear();
  }
  if(yCor > 450){
    newBooger();
  }
  if (yCor == 440){
     lost = true;
  }
}

void mouseDragged(){
  tissueCor = mouseX;
}

void disappear(){
  yCor = 500;
}

void newBooger(){
  Random r = new Random();
  yCor = 30;
  xCor = r.nextInt(400);
}

int getScore(){
  return score;
}

void increaseScore(){
    score = score+10;
}


