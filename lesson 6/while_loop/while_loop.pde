int maxNumBalls = 20;


void setup() {
  size(800, 800, P2D);
  // noStroke();
}

void draw() {
  background(#FCF505);

int numBalls = 0; 

int i = 0;
  while (i < height) {
    line(30, i, width-30, i);
    // i = i + 5;
    i += 5 ;
  } 

  while (numBalls < maxNumBalls) {
    int x= (int)random(width);
    int y=(int) random(height);
    fill(#ffffff);

    ellipse(x, y, 10, 10);
    // do something
    numBalls++;
  }

  // otherwise jump here
}
