int x = 0;
int step = 45;

void setup() {
  size(500, 500);
  noLoop();
}


void draw() {
  background(255);
  for (int i = 0; i < 500; i+=10) {
    line(i, 100, i, 400);
  }
  for (int i = 100; i <= 400; i+=10) {
    line(0, i, 500, i);
  }
/*
  while ( x < 500) {
   line(x, 100, x, 400);
   // x = x + step;
   x += step;
   }
   */
}
