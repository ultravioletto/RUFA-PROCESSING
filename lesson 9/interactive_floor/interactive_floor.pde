float xPos, yPos;
float rectSize;
color rectColor;

void setup() {
  size (800, 800);
  noStroke(); 

  colorMode(HSB, 360, 100, 100);

  xPos = 300;
  yPos = 50;
  rectSize = 20;
  rectColor = color(55, 94, 97);
}


void draw() {
  background(0, 0, 100);

  if ( (mouseX > xPos) && (mouseX < xPos + rectSize) &&
    (mouseY > yPos) && (mouseY < yPos + rectSize)) {
  
   if ( frameCount % 9 == 0) {
      int randHue = int(random(360));
      rectColor = color(randHue, 94, 97);
    }
    
  } else {
    rectColor = color(55, 94, 97);
  }

  fill(rectColor);
  rect(xPos, yPos, rectSize, rectSize);
}
