class Food {

  float posX, posY;
  PImage img;
  float velY;

  Food() {
    posX = width/2;
    posY = 0;
    img = loadImage ("meat.png");
    velY = random( 1, 10);
  }

  void show() {
        tint(255,255);

    posY = posY + velY;
    if ( posY > height) {
      posY = 0;
      posX = random(width);
      velY = random( 1, 10);
    }
    image(img, posX, posY);
  }

  void explode() {

    tint(255,100);
    for ( int i = 0; i < 10; i++) {

      float ranX = random(-50, 50);
      float ranY = random(-50, 50);
      image(img, posX+ranX, posY+ranY);
    }
  }
}
