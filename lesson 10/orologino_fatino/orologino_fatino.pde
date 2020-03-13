Star sH, sM, sS;

Star[] starHours;
Star[] starMinutes;
Star[] starSeconds;

void setup() {
  size(800, 800);

  colorMode(HSB, 360, 100, 100);
  sH = new Star(100, 100, 0,  0, 266);
  sM = new Star(300, 300, 100, 266, 533);
  sS = new Star(600, 600, 300, 533, 800);

  starHours = new Star[24];
  starMinutes = new Star[60];
  starSeconds = new Star[60];
  
  for (int i = 0; i < starHours.length; i++) {
    starHours[i] = new Star(100, 100, 0,  0, 266);
  }
  
   for (int i = 0; i < starMinutes.length; i++) {
    starMinutes[i] = new Star(300, 300, 100, 266, 533);
  }
  
  for (int i = 0; i < starSeconds.length; i++) {
    starSeconds[i] = new Star(600, 600, 200, 533, 800);
  }
  
}



void draw() {
  background(#FF08EF);
  
  int actualH = hour();
  int actualM = minute();
    int actualS = second();

  
  
  for (int i = 0; i < actualH; i++) {
    starHours[i].show();
  }
  
   for (int i = 0; i < actualM; i++) {
    starMinutes[i].show();
  }
  
  for (int i = 0; i < actualS; i++) {
    starSeconds[i].show();
  }
  
}



void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
