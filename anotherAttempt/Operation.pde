PImage person;
int x = 100;
String lose = "You lose!";
boolean lost = false;
boolean won = false;
String winner = "You won!";
boolean cheated = false;
int cheatingTime;

class Operation {
public Operation(){
  size(640,480);
  person = loadImage("OperationPerson.png");
  background(person);
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
    }
  }
}

boolean finished() {
  return won || lost;
}

boolean didWin() {
  return won;
}

boolean didLose() {
  return lost;
}

boolean didCheat() {
  return cheated;
}


void reset() {
  won = false;
  lost = false;
  cheated = false;
}

void setLost() {
  lost = true;
}

void setWon() {
  won = true;
}

void setCheated() {
  cheated = true;
}


}
