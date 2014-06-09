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
    tissue = loadImage("tissue.png");
    back = loadImage("fallingBack.png");
    level = 1;
    
  }
