
int lives = 3;
int score = 0;

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
  return lives == 0;
}

