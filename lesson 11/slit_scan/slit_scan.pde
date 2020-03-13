import processing.video.*;

Capture video;

int x = 0;
int sizeSample = 30;

void setup(){
  size(600, 240);
  background(0);

  video = new Capture(this,320, 240);

  video.start();  

}



void draw(){
    if (video.available()) {
        video.read();
    }
    
    int w = video.width;
    int h = video.height;
    copy(video,w/2, 0,sizeSample,h ,x , 0,sizeSample,h);
    
    
    x+=sizeSample;
    if ( x > width){
    x = 0;
    }
    //tint(255,100);
   // image(video,0,0);


}
