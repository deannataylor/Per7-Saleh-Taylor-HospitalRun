
class Animation{
  
  PImage[] images;
  int imageCount;
  int frame;
  int xpos;
  
  Animation(String imagePrefix, int count){
     imageCount = count;
     images = new PImage[imageCount];
     for (int i = 0; i< imageCount; i++){
       String filename = imagePrefix + i + ".gif";
       images[i] = loadImage(filename);
     }
  }
  
  void display(float xpos, float ypos){
    frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos);
  }
  
  void setX(){
     xpos++;
  }
  
  void move(){
    xpos = xpos + 1;
    if (xpos > width){  
      xpos = 0;
    }
  }
  
  int getWidth(){
     return images[0].width;
  }
}
