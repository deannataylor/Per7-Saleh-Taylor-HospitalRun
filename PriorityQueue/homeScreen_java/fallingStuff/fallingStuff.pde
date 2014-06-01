
PImage back, tissue;
PImage[] boogers;
int yCor = 30;
int currentTime;
int boogerDropped, count;

void setup(){
  size(640, 480);
  currentTime = millis();
  loadBoogers();
  tissue = loadImage("tissue.png");
}

void loadBoogers(){
  boogers = new PImage[3];
  for (int i=0; i<3; i++){
    boogers[i] = loadImage("booger" + i + ".png");
  }
}

void draw(){
  back = loadImage("fallingBack.png");
  background(back);
  image(boogers[0], 30, yCor);
  image(tissue, 300, 400);
  yCor++;
}

void mouseDragged(){
  image(tissue, mouseX, 400);
}

void mousePressed(){
  image(tissue, mouseX, 400);
}
