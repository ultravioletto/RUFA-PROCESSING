
float posX, posY, ballSize;
float velX, velY;

void setup() {
  size(800, 800);
  noStroke();
  posX = 200;
  posY = 300;
  ballSize =  random(5,50);
  velX= random(-5,5);
  velY=random(-5,5);
}



void draw() {
  background(#FEFF08);
  checkWall();
  posX += velX;
  posY += velY;
  fill(100);
  ellipse(posX, posY, ballSize, ballSize);
}


void checkWall() {
  if ( posX > width-ballSize/2 || posX < 0+ballSize/2) {
    velX *= -1;
  }
  if ( posY > height-ballSize/2 || posY < 0+ballSize/2) {
    velY *= -1;
  }
}
