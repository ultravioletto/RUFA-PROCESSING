Ball[] balls;

void setup() {
  size(800, 800);
  noStroke();
  balls = new Ball[300];

  for ( int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
}


void draw() {
  background(#FFEA00);


  balls[0].show();
//  balls[0].checkWalls();

  fill(255, 0, 0);
  rect(balls[0].xPos, balls[0].yPos, 50, 50);


  for ( int i = 1; i < balls.length; i++) {
    balls[i].show();
    balls[i].checkWalls();
  }
}
