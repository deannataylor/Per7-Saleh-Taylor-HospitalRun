String part;
int firstTime;
boolean gaming;
Operation a;
fallingStuff b;
int score;
int lives;
boolean finished;


void setup() {
  size(640,480);
  part = "home";
  firstTime = millis();
  gaming = false;
  score = 0;
  lives = 3;
  finished = false;
}

void draw(){
  if (!finished) {
  if (part.equals("home")) {
    background(#f078b6);
    textSize(20);
    text("this is the waiting room type thing", 100, 100);
    if (lives == 0) {
      text("you have killed 3 patients and lost your job.\nbetter luck next time!", 100, 150);
      finished = true;    
  } else if (score >= 600) {
      text("congratulations! you have completed your shift and won ER Dash!", 100, 150);
      finished = true;
  } else {
    text("score :" + score, 100, 150);
    text("lives : " + lives, 100, 200);
    }
    }
    if (part.equals("game")) {
      a.draw();
      if (a.finished()) {
        if (a.didWin()) {
          score += 100;
        } else {
          lives--;
        }
        firstTime = millis();
        while (millis() - firstTime < 2000) {
        }
        part = "home";
        gaming = false;
        firstTime = millis();
      }
    }
  if (!gaming && millis() - firstTime > 2000) {
     a = new Operation();
     a.reset();
    gaming = true;
    part = "game";
  }
  }
}

void mouseDragged() {
  if (part.equals("game")) {
    if (!a.didWin() && !a.didLose() && !a.didCheat()) {
    fill(255);
    ellipse(mouseX, mouseY, 1, 1);
    if (mouseX < 250 && mouseY < 353){
      a.setLost();
    }
    else if (mouseX < 275 && mouseY > 250 && mouseY < 335){
      a.setLost();
    }
    else if (mouseX < 318 && mouseY > 250 && mouseY < 305){
      a.setLost();
    }
    else if (mouseX > 279 && mouseY > 179 && mouseY < 235){
      a.setLost();
    }
    else if (mouseX > 332 && mouseY > 220 && mouseY < 267){
      a.setLost();
    }
    else if (mouseX < 364 && mouseY > 282 && mouseY < 305){
      a.setLost();
    }
    else if (mouseX > 344 && mouseX < 364 && mouseY > 300 && mouseY < 355){
      a.setLost();
    }
    else if (mouseY > 319 && mouseX > 290 && mouseX < 328){
      a.setLost();
    }
    else if (mouseX>340 && mouseX<390 && mouseY>150 && mouseY<200) {
      won = true;
  }
    }
  if (part.equals("game2")) {
  b.tissueCor = mouseX;
  }
  }
}

void mousePressed() {
  if (part.equals("game")) {
  if (!a.didWin() && !a.didLose()) {
    if (!(mouseX>=248 && mouseY>=354 && mouseX<=258 && mouseY<=369)) {
      fill(0);
      text("start at the beginning",0,0,200,200);
      a.setCheated();
      cheatingTime = millis();
    }
  }
  }
}
