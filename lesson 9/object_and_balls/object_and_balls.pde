float diameter;
float xPos, yPos;
float yVel;

void setup() {
  size(800, 800);
  noStroke();
  diameter = 100;
  xPos = width/2;
  yPos = height/2;
  yVel = 10;
}

void draw() {
  background(#FFEA00);

  checkWalls();
  
  yPos = yPos + yVel;
  fill(#5A5A58);
  ellipse(xPos, yPos, diameter, diameter);
}


void checkWalls() {
  if (yPos >= height || yPos <= 0) {
    yVel = yVel * -1;
  }
}
