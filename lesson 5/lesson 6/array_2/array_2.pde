int numBalls = 100;
int[] posX = new int[numBalls];
int[] posY = new int[numBalls];

void setup() {
  size ( 500, 500);

  colorMode(HSB);
  
  for (int i = 0; i < numBalls; i++) {
    posX[i] = 0;
    posY[i] = 0;
  }
  noCursor();
  noStroke();
}


void draw() {
  background(#FFD500);

  for ( int i = 0; i < numBalls - 1; i++) {
    posX[i] = posX[i+1] ;
    posY[i] = posY[i+1];
  }

  posX[numBalls - 1] = mouseX;
  posY[numBalls -1 ] = mouseY;

 

  for ( int i = 0; i < numBalls; i++) {
    int myColor = int(map(i,0,numBalls -1,176,200));
    fill(myColor,100,100);
    float mySize= map(i,0, numBalls -1, 1,50);
    circle(posX[i], posY[i], mySize);
  }
}
