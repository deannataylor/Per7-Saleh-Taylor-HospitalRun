

int lives;
int score;
int level = 1;

/* void setup() {
    size(640,480);
    loadDoctors();
} */

public Player(){
   lives = 3;
   score = 0;
}

void increaseScore(){
  score = score +10;
}

void increaseLevel(){
  level++;
}

int getLevel(){
  return level;
}

void loseLife(){
  lives--;
}

int getLives(){
  return lives;
}

int getScore(){
  return score;
}

boolean gameOver(){
  if (lives == 0){
    return true;
  }
  else{
    return false;
  }
}
  
void printStats(){
  System.out.println("lives: " + getLives());
  System.out.println("Score: " + getScore());
}

