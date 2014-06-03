PImage[] backs = new PImage[2];
int frameNum = 0;
PImage man;
int rotateNum;

void setup() {
  size(640, 480);
  loadBacks();
  frameRate(10);
  man = loadImage("DizzyMan.png");
}

void draw() {
  background(backs[frameNum%2]);
  frameNum++;
  rotate(radians(rotateNum));
  image(man, 200, 200);
}

void loadBacks() {
  backs[0] = loadImage("DizzyBack0.png");
  backs[1] = loadImage("DizzyBack1.png");
}

void keyPressed(){
  if (keyCode == LEFT){
    rotateNum = 20;
  }
  else if (keyCode == RIGHT){
    rotateNum = -20;
  }
}
