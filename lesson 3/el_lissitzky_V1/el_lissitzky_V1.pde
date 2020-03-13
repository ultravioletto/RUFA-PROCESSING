// this is a variable too!!! but the type of the variable is an image
PImage background;  // declaration of the variable 


void setup() {
  size(664, 940);
  // size(200, 200);
  background = loadImage("image.jpg"); // initialisation of the variable
}


void draw() {
  image(background, 0, 0, width, height);
  // ellipse(mouseX,mouseY,100,100);
  
  /// first red circle
  noStroke();
  fill(183,74,74,255);
  ellipse(355, 376, 260, 260);
  
  stroke(0,0,0,255);
  fill(150,150,150,255);
  rect(248,70,20,500);
}
