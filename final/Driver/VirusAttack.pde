import java.io.*;
import java.util.*;

class VirusAttack {
  int currentTime;
  PImage virus, shot, pill, back;
  PImage[] virusDesigns;
  boolean won = false, lost = false;
  int pillCor = 0;
  int score;
  ArrayList<Virus> Viruses = new ArrayList<Virus>();
  int level = 0;
  int interval;
  int lastAdded;
  
  
  public VirusAttack() {
    currentTime = millis();
    loadViruses();
    pill = loadImage("pill.png");
    back = loadImage("virusBack.png");
    shot = loadImage("shot.png");
    level = 1;
    
  }
  
  boolean getWon(){
    return won;
  }
  
  boolean getLost(){
    return lost;
  }
  
  void loadViruses() {
    virusDesigns = new PImage[3];
    for (int i=0;i<3;i++) {
      virusDesigns[i] = loadImage("virus".png");
    }
  }
  
  void quit(){
    exit();
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
  
   void processVirus() {
    virus removing = null;
    for (Virus a : Viruses) {
      if (hit(a)) {
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
