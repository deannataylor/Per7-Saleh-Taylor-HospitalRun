
  PImage HeartOne;
  String p = "PLAY";
  String i = "info";
  String n = "Emergency Dash";
  
  public void setup() {
    size(640, 480);
    HeartOne = loadImage("HeartOne.png");
    HeartOne.resize(0, 70);
  }

  public void draw() {
   fill(255);
   rect(99, 49, 440, 70);
   fill(0);
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
   textSize(40);
   text(p, 270, 290, 400, 500);
   textSize(25);
   text(i, 293, 350, 400, 500);
  }

