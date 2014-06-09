
  PImage person;
  int x = 100;
  String lose = "You lose!";
  boolean lost = false;
  boolean won = false;
  String winner = "You won!";
  boolean cheated = false;
  int cheatingTime;
  
  void setup(){
    size(640, 480);
    person = loadImage("OperationPerson.png");
    background(person);
  }
  
  boolean getWon(){
    return won;
  }
  
  void quit(){
    exit();
  }
  
  boolean getLost(){
    return lost;
  }
  
  void draw(){
    textSize(25);
    fill(0);
    if (lost){
      text(lose, 0, 0,200,200);
    }
    if (won){
      text(winner, 0, 0, 200, 200);
    }
    if(cheated) {
      if (millis() - cheatingTime >= 2000) {
        cheated = false;
        setup();
      }
    }
  }
  
  void mousePressed() {
    if (!won && !lost) {
      if (!(mouseX>=248 && mouseY>=354 && mouseX<=258 && mouseY<=369)) {
        fill(0);
        text("start at the beginning",0,0,200,200);
        cheated = true;
        cheatingTime = millis();
      }
    }
  }
  
  
  void mouseDragged(){
    if (!won && !lost && !cheated) {
      ellipse(mouseX, mouseY, 1, 1);
      fill(255);
      
  
      if (mouseX < 250 && mouseY < 353){
        lost = true;
      }
      else if (mouseX < 275 && mouseY > 250 && mouseY < 335){
        lost = true;
      }
      else if (mouseX < 318 && mouseY > 250 && mouseY < 305){
        lost = true;
      }
      else if (mouseX > 279 && mouseY > 179 && mouseY < 235){
        lost = true;
      }
      else if (mouseX > 332 && mouseY > 220 && mouseY < 267){
        lost = true;
      }
      else if (mouseX < 364 && mouseY > 282 && mouseY < 305){
        lost = true;
      }
      else if (mouseX > 344 && mouseX < 364 && mouseY > 300 && mouseY < 355){
        lost = true;
      }
      else if (mouseY > 319 && mouseX > 290 && mouseX < 328){
        lost = true;
      }
      else if (mouseX>340 && mouseX<390 && mouseY>150 && mouseY<200) {
        won = true;
      } 
    }
  } 
  
  boolean finished() {
  return (won || lost);
}

