PImage person;
int x = 100;
String lose = "You lose!";
boolean lost = false;
boolean won = false;
String winner = "You won!";
boolean cheated = false;
int cheatingTime;

void setup(){
  size(640,480);
  person = loadImage("OperationPerson.png");
  background(person);
  // These rectangles mark area NOT in map
  // They are for reference when marking which are will call loseLife()
  // DONT DELETE THESE IN CASE WE NEED TO ADJUST
  
  /*rect(0, 0, 246, 500); //Left rect
  rect(380, 0, 400, 500); // Right rect
  rect(200, 0, 200, 164); // Top rect
  rect(200, 369, 200, 100); // Bottom rect
  rect(245, 160, 20, 193); // left side in dark pink
  rect(265, 250, 10, 103); // bottom left
  rect(275, 250, 43, 55); // Very middle
  rect(279, 179, 150, 55); // Top part
  rect(332, 220, 50, 47);  // top right
  rect(310, 282, 54, 23); // Middle right
  rect(344, 300, 20, 55); // Bottom right
  rect(290, 319, 38, 150);
  */
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

/*

void mouseReleased() {
  if (mouseX>340 && mouseX<390 && mouseY>150 && mouseY<200) {
    //mouse released on heart
    //this is where we put a yay you won
    x = 255;
  } 
  else if (mouseX < 246 || mouseX > 380 || mouseY < 164 || mouseY > 369){
     x = 0;
  }
  else if (mouseX < 265 && mouseY < 353){
     x = 0;
  }
  else if (mouseX < 275 && mouseY > 250 && mouseY < 535){
     x = 0;
  }
  if (mouseX < 318 && mouseY > 250 && mouseY < 305){
     x = 0;
  }
  if (mouseX > 279 && mouseY > 179 && mouseY < 235){
     x = 0;
  }
  if (mouseX > 332 && mouseY > 180 && mouseY < 267){
     x = 0;
  }
  if (mouseX < 364 && mouseY > 282 && mouseY < 305){
     x = 0;
  }
  if (mouseX > 344 && mouseX < 364 && mouseY > 300 && mouseY < 355){
     x = 0;
  }
  if (mouseY > 319 && mouseX > 290 && mouseX < 328){
     x = 0;
  }
  // All thats left is the maze
    else {
    //mouse released in wrong spot
    //this is where we put a boo you lose
    x=0;
  } */








/*
void mouseClicked(){
  //I'm confused by this. is this leading to the like
  //"you're outside the path you lose" part?
  //cause I think that should be with mouseReleased
  //we'll discuss tomorrow
  
  
  // These are the areas that should trigger losing this game
  if (mouseX < 246 || mouseX > 380 || mouseY < 164 || mouseY > 369){
    // This is just to test that it works:
    fill(0);
    rect(0,0,100,100);
  }
  if (mouseX < 265 && mouseY < 353){
    fill(0);
    rect(0,0,100,100);
  }
  if (mouseX < 275 && mouseY > 250 && mouseY < 535){
     fill(0);
    rect(0,0,100,100);
  }
  if (mouseX < 318 && mouseY > 250 && mouseY < 305){
    fill(0);
    rect(0,0,100,100);
  }
  if (mouseX > 279 && mouseY > 179 && mouseY < 235){
    fill(0);
    rect(0,0,100,100);
  }
  if (mouseX > 332 && mouseY > 180 && mouseY < 267){
    fill(0);
    rect(0,0,100,100);
  }
  if (mouseX < 364 && mouseY > 282 && mouseY < 305){
    fill(0);
    rect(0,0,100,100);
  }
  if (mouseX > 344 && mouseX < 364 && mouseY > 300 && mouseY < 355){
    fill(0);
    rect(0,0,100,100);
  }
  if (mouseY > 319 && mouseX > 290 && mouseX < 328){
    fill(0);
    rect(0,0,100,100);
  }
}


//void loseLife(){
  // if statement, we need it so that the if statement 
  // in mouseClicked applies
  // Result is that player loses a life 
//}
*/


