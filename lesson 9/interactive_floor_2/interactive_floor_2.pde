Tile[] tileArray;

void setup() {
  size (800, 800);
  noStroke(); 
  colorMode(HSB, 360, 100, 100);

  tileArray = new Tile[40*40]; // 1600

  int count = 0;
  
  for (int x = 0; x < 40; x ++) {
    for ( int y = 0; y< 40; y++) {
      tileArray[count] = new Tile(x*20, y*20);
      count ++;
    }
  }
}



void draw() {
  background(0, 0, 100);


  for (int i = 0; i < tileArray.length; i ++) {
    tileArray[i].show();
  }
}
