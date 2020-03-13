Ball[] littleBalls;

void setup() {
  size(800, 800);
  noStroke();
  littleBalls = new Ball[100]; // set up a new Ball type array with 100 objects in it
  for ( int i = 0; i < littleBalls.length; i++) {
    
    float tmpY = random(50,height-50);
    littleBalls[i] = new Ball(200,tmpY);
  }
}

void draw() {
  background(#FEFF08);
  for ( int i = 0; i < littleBalls.length; i++) {
    littleBalls[i].show();
  }
}

void mousePressed() {
  for ( int i = 0; i < littleBalls.length; i++) {
        float tmpY = random(50,height-50);

        littleBalls[i].resetPos(mouseX, tmpY);
  }
}

// this is a class called Ball
class Ball {
  float posX, posY, ballSize;
  float velX, velY;
  float myAlpha;
  // this is the constructor of the class
 
  Ball(float _posX, float _posY) {
    posX = _posX;
    posY = _posY;
    ballSize =  random(5, 50);
    velX= random(-5, 5);
    velY=random(-5, 5);
    myAlpha = random(10, 200);
  }
  void show() {
    checkWall();
    posX += velX;
    posY += velY;
    fill(100, myAlpha);
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

  void resetPos(float _posX, float _posY) {
    posX = _posX;
    posY = _posY;
  }
}
