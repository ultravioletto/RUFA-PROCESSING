class Star {

  float posX, posY, velX, velY;
  float hue;
  float wallUpBound, wallDownBound;

  Star(float _posX, float _posY, float _hue, float _wallUpBound, float _wallDownBound) {

    posX = _posX;
    posY = _posY;
    velX = random(-5, 5);
    velY = random(-5, 5);
    hue = _hue;
    wallUpBound = _wallUpBound;
    wallDownBound = _wallDownBound;
  }

  void show() {

    checkWalls();

    posX += velX;
    posY += velY;

    noStroke();
    fill(hue, 100, 100);
    // ellipse(posX,posY,30,30);

    pushMatrix();
      translate(posX, posY);

    rotate(frameCount / 10.0);
    
    star(0, 0, 20, 40, 5);
   popMatrix();
  }

  void checkWalls() {
    if ( posX > width || posX < 0) {
      velX *= -1;
    }
    if ( posY > wallDownBound || posY < wallUpBound) {
      velY *= -1;
    }
  }
}
