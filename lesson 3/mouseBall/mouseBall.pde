color violet = #5600FA;
color lightViolet = #A279F0;
color ballColor = violet;

color grey = #97949D;
color darkGrey = #2E2D31;
color rectColor = grey;

void setup() {
  size (600, 600);
  noStroke();
  noCursor();
  //rectMode(CORNER);
}

void draw() {
  background(#FAEE00);
  if ( mouseY < height/2) {
    rectColor = grey;
  } else {
    rectColor = darkGrey;
  }
  fill(rectColor);
  rect(width/2, 0, width/2, height);

  if (mouseX > width/2) {
    ballColor = violet;
  } else {
    ballColor = lightViolet;
  }

  fill(ballColor);
  ellipse(100, 100, 100, 100);
  ellipse(mouseX, mouseY, 50, 50);
}
