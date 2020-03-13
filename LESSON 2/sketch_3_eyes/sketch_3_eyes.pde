void setup() {
  size(800, 800);
}


void draw() {
  background(120);

    // style the first cirlce
  strokeWeight(15);
  stroke(#FF0A12);
  fill(#FFF30A);
  
  ellipse(400, 400, 600, 600);
    // style the eyes
  noStroke();
  fill(#000000);
  
  ellipse(400, 260, 60, 180);
  ellipse(400 - 125, 260, 60, 180);
  ellipse(400 + 125, 260, 60, 180);

  // draw the mouth  
  rect(400 - 125, 500, 250, 40);
}
