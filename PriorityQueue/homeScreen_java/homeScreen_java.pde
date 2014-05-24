
  PImage HeartOne;
  PImage bed;
  PImage back;
  String p = "PLAY";
  String i = "info";
  String n = "Emergency Dash";
  int value = 0;
  Animation doctor;
  float xpos, ypos;
  float docSpeed;
  int number = 0;
  
  public void setup() {
    back = loadImage("backgroundpic.png");
    size(640, 480);
    background(back);
    HeartOne = loadImage("HeartOne.png");
    HeartOne.resize(0, 70);
    bed = loadImage("bed.png");
    bed.resize(0,50);
    doctor = new Animation("DoctorOne", 3);
    ypos = height/4;
    frameRate(10);
  }
  
  public void home(){
    fill(255);
     rect(99, 49, 440, 70);
     fill(value);
     textSize(55);
     text(n, 100, 50, 610, 500);
     image(HeartOne,280,225);
   image(HeartOne,350,225);
   image(HeartOne,210,225);
   image(HeartOne,165, 270);
   image(HeartOne,395,270);
   image(HeartOne,165, 330);
   image(HeartOne,395,330);
   image(HeartOne,280,385);
   image(HeartOne,350,385);
   image(HeartOne,210,385);
   fill(255);
   rect(267, 290, 100, 45);
   fill(0);
   textSize(40);
   text(p, 270, 290, 400, 500);
   textSize(25);
   text(i, 293, 350, 400, 500);
   image(bed, 20, 260);
   image(bed, 20, 350);
   image(bed, 100, 300);
   image(bed, 560, 350);
   image(bed, 100, 400);
   image(bed, 480, 300);
   image(bed, 560, 260);
   image(bed, 480, 400);
   doctor.display(0, 70);
  }
  
  public void draw(){
    if (number == 0){
    home();
    }
   if (number == 1){
     background(255,0,0);
   }
  }
  
  void mouseClicked(){
     if (mouseX > 267 && mouseX < 367 && mouseY > 290 && mouseY < 335){
        noLoop();
        background(0);
        number++;
        loop();
     }
   }


  

