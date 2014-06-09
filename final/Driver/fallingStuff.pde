import java.io.*;
import java.util.*;

class fallingStuff {
  int currentTime;
  PImage tissue,back;
  PImage[] boogerDesigns;
  boolean won = false, lost = false;
  int tissueCor = 0;
  int score;
  ArrayList<booger> boogers = new ArrayList<booger>();
  int level = 0;
  int interval;
  int lastAdded;
  
  
  public fallingStuff() {
    currentTime = millis();
    loadBoogers();
    tissue = loadImage("tissue.png");
    back = loadImage("fallingBack.png");
    level = 1;
    
  }
  
  boolean getWon(){
    return won;
  }
  
  boolean getLost(){
    return lost;
  }
  
  void loadBoogers() {
    boogerDesigns = new PImage[3];
    for (int i=0;i<3;i++) {
      boogerDesigns[i] = loadImage("booger" + i + ".png");
    }
  }
  
  void draw() {
    background(back);
    image(tissue,tissueCor,400);
    setInterval();
    if (won) {
      textSize(25);
      text("you won!", 0,0,200,200);
    }
    if (lost) {
      textSize(25);
      text("you lose!", 0,0,200,200);
    }
    if (!won && !lost) {
      textSize(45);
      text(score, 20, 45);
      if (score == 200) {
        won = true;
      }
      levelUp();
      if (boogers.size() == 0 || millis() - lastAdded >=interval) {
        addBooger();
        lastAdded = millis();
      }
      handleBoogers();
    }
  }
  
  void levelUp() {
    if (score == 30 && level != 2) {
      level++;
    }
    if (score == 70 && level != 3) {
      level++;
    }
    if (score == 110 && level != 4) {
      level++;
    }
    if (score == 150 && level != 5) {
      level++;
    }
  }
  
  void setInterval() {
    interval = 5000;
    if (level==1) {
      interval = 3000;
    }
    if (level==2) {
      interval = 2500;
    }
    if (level==3) {
      interval = 2000;
    }
    if (level==4) {
      interval = 1500;
    }
    if (level ==5) {
      interval = 1000;
    }
  }
  
  
  void handleBoogers() {
    booger removing = null;
    for (booger a : boogers) {
      if (caught(a)) {
        score += 10;
        removing = a;
      }
      else if (missed(a)) {
        lost = true;
      }
      else {
        a.draw();
        //whenever i make this more than 1 it flips out
        a.increment(level);
      }
    }
    if (removing != null) {
      boogers.remove(removing);
    }
  }
  
  
  boolean caught(booger b) {
    return (b.getY()>410 && b.getY()<440
        && b.getX() > tissueCor-10 && b.getX()<tissueCor+45);
  }
  
  boolean missed(booger b) {
    return (b.getY() > 440 && !caught(b));
  }
  
  void addBooger() {
    Random r = new Random();
    boogers.add(new booger(boogerDesigns[r.nextInt(2)]));
  }
  
  void mouseDragged() {
    tissueCor = mouseX;
  }
  
  boolean finished() {
    return (won || lost);
  }
}
