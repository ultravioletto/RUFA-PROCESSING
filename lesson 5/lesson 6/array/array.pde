int posX, posY;

int[] arrayPosX; // now we have an empty array called arrayPosX
int[] arrayPosY; // now we have an empty array called arrayPosY
int[] arraySize;
int[] arrayAlpha;
void setup() {
  size (500, 500);
  posX = 250;
  posY = 250; 
  noStroke();
  arrayPosX = new int[300]; // this array has 300 slots
  arrayPosY = new int[300]; // this array has 300 slots
  arraySize = new int[300]; 
  arrayAlpha = new int[300];

  for ( int i = 0; i < arrayPosX.length; i++) { // loop thru all the array slots
    int ran = int(random(width));
    arrayPosX[i] = ran;
    
    ran = int(random(height));
    arrayPosY[i] = ran;
    
    ran = int(random(10,50));
    arraySize[i] = ran;
    
    ran = int(random(10,100));
    arrayAlpha[i] = ran;
  }
}
void draw() {
  background(#FFD500);
  
  for ( int i = 0; i < arrayPosX.length; i++) {
    fill(0,arrayAlpha[i]);
    arrayPosY[i] = arrayPosY[i] + 1;
    if ( arrayPosY[i] > height + arraySize[i]){
    arrayPosY[i] = 0-arraySize[i];
    }
    circle(arrayPosX[i], arrayPosY[i], arraySize[i]);
  }
}
