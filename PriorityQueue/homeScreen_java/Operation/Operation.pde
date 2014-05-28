PImage person;

void setup() {
    size(640,480);
}

void draw(){
  size(640,480);
  person = loadImage("OperationPerson.png");
  background(person);
  fill(0);
  // These rectangles mark area NOT in map
  // They are for reference when marking which are will call loseLife()
  // DONT DELETE THESE IN CASE WE NEED TO ADJUST
  //rect(0, 0, 246, 500); //Left rect
  //rect(380, 0, 400, 500); // Right rect
  //rect(200, 0, 200, 164); // Top rect
  //rect(200, 369, 200, 100); // Bottom rect
  //rect(245, 160, 20, 193); // left side in dark pink
  //rect(265, 250, 10, 103); // bottom left
  //rect(275, 250, 43, 55); // Very middle
  //rect(279, 179, 150, 55); // Top part
  //rect(332, 220, 50, 47);  // top right
  //rect(310, 282, 54, 23); // Middle right
  //rect(344, 300, 20, 55); // Bottom right
  //rect(290, 319, 38, 150);
}

void mouseDragged(){
  rect(mouseX, mouseY, 1, 1);
} 
/* So I couldnt figure out how to make it stick, I think this is
similar to making the figure move in the first page... I would work
a little more on figuring this out but my head is killing */


void mouseClicked(){
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


void loseLife(){
  // if statement, we need it so that the if statement 
  // in mouseClicked applies
  // Result is that player loses a life 
}

