int sizeSquare = 25;

void setup() {
  size(500, 500);
  noStroke();
 // noLoop();
}


void draw() {
  background(255);
  
         for (int xPos = 0; xPos < width; xPos += sizeSquare) {

      color ranR = int( random(255) );
      color ranG = int( random(255) );
      color ranB = int( random(255) );
       fill( ranR, 100, 200 );
        for (int yPos = 0; yPos < height; yPos += sizeSquare) {

     
// fill( ranR );
      rect (xPos, yPos, sizeSquare, sizeSquare);
    }
  }
}
