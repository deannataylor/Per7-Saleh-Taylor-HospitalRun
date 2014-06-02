PImage[] backs = new PImage[2];
int frameNum = 0;

void setup() {
  size(640, 480);
  loadBacks();
  frameRate(10);
}

void draw() {
  background(backs[frameNum%2]);
  frameNum++;
}

void loadBacks() {
  backs[0] = loadImage("DizzyBack0.png");
  backs[1] = loadImage("DizzyBack1.png");
}
