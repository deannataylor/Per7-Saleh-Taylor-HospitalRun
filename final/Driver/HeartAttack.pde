class HeartAttack{
  
PImage heart;
int hits = 0;
int num = 0;
int numb = 0;
int xCor = 290;
int yCor = 210;
int xLarge = 60;
int yLarge = 60;
int currentTime = millis();
String status = "";
boolean lost = false;
boolean won = false;

public HeartAttack(){
    background(180, 100, 100);
    heart = loadImage("HeartOne.png");
  }
  
  void draw(){
    heart.resize(xLarge, yLarge);
    image(heart, xCor, yCor);
    time();
  }
  
  boolean getWon(){
    return won;
  }
  
  boolean finished() {
  return (won || lost);
  }
  
  void quit(){
    exit();
  }
  
  boolean getLost(){
    return lost;
  }
  
  void time(){
    background(180, 100, 100);
    image(heart, xCor, yCor);
    textSize(30);
    text("Time:", 20, 50);
    textSize(60);
    text((millis()-currentTime)/1000, 50, 120);
    textSize(60);
    text(hits, 580, 60);
    textSize(100);
    text(status, 90, 80);
  }
  
  void mouseClicked(){
    xLarge += 20;
    yLarge += 20;
    xCor -= 10;
    yCor -= 10;
    hits++;
    if (millis() - currentTime > 7500 && hits < 25){
     status = "YOU LOSE";
    }
    else if (hits > 25){
       status = "YOU WIN";
    }
  }
}
