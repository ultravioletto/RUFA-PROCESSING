// this is a variable too!!! but the type of the variable is an image
PImage background;  // declaration of the variable 

int centerEllipse1X = 115;
int centerEllipse1Y = 280;

int centerEllipse2X = 375;
int centerEllipse2Y = 450;

int velEllipse2 = 2;


void setup() {
  size(664, 940);
  // size(200, 200);
  background = loadImage("image.jpg"); // initialisation of the variable
}


void draw() {
  //image(background, 0, 0, width, height);
  background(167, 142, 86);
  // ellipse(mouseX,mouseY,100,100);

  // first red circle
  noStroke();
  fill(183, 74, 74, 255);
  ellipse(355, 376, 260, 260);


  // grey long rectangle
  stroke(0, 0, 0, 255);
  fill(150, 150, 150, 200);
  rect(248, 70, 20, 700);

  // grey short rectangle  
  stroke(0, 0, 0, 255);
  fill(100, 100, 100, 200);
  rect(268, 200, 35, 410);

  // black circle

  noStroke();
  fill(0);

  // this makes my circle move
  centerEllipse2X = centerEllipse2X + velEllipse2; 

  if (centerEllipse2X > width) {
   // centerEllipse2X = 0;
    velEllipse2 = velEllipse2 * -1;
  }

  if (centerEllipse2X < 0) {
  //  centerEllipse2X = width;
    velEllipse2 = velEllipse2 * -1;
  }

  ellipse(centerEllipse1X, centerEllipse1Y, 100, 100);
  ellipse(centerEllipse2X, centerEllipse2Y, 60, 60);

  stroke(0);
  line(centerEllipse1X, centerEllipse1Y, centerEllipse2X, centerEllipse2Y);

  noFill();
  beginShape();
  vertex(400, 500);
  vertex(500, 500);
  vertex(500, 510);
  vertex(390, 510);
  endShape(CLOSE);

  line(centerEllipse2X, centerEllipse2Y, 400, 500);
}
