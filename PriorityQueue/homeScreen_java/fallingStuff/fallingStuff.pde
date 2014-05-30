
PImage back;
PImage[] boogers;
int yCor = 30;
;
void setup(){
  size(640, 480);
  
  loadBoogers();
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
  yCor++;
}
