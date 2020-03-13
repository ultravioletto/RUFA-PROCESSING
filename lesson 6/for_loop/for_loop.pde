
void setup() {
  size(800, 800, P2D);
  background(#FCF505);
  noStroke();
  fill(#666666);
}


void draw() {

  for (int x = 0; x < width; x += 20) {
      for (int y = 0; y < height; y += 20) {
        rect(x, y, 5, 5);
      }
  }
}
