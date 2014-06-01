
int lives;
int score;

public Player(){
   lives = 3;
   score = 0;
}

void increaseScore(){
  score = score +10;
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

