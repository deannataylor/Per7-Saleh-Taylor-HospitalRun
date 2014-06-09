private class booger {
  PImage pic;
  int xCor,yCor;
  
  public booger(PImage pic) {
    this.pic = pic;
    Random r = new Random();
    xCor = r.nextInt(440) + 20;
    yCor = 0;
  }
  

  void draw() {
     image(pic,xCor,yCor);
  }
  
  void increment(int i) {
    yCor+= i;
  }
  
  int getX() {
    return xCor;
  }
  
  int getY() {
    return yCor;
  }
  
  void disappear() {
    yCor = 550;
  }
  

}

