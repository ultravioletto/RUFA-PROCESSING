void setup() {
  size( 600, 600);

  noStroke();
  colorMode(HSB, width);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < width; j++) {
      stroke(i, j, width);
      point(i, j);
    }
  }
}


void draw() {
}


void mousePressed(){
println("the mouse is pressed");

color myColor = get(mouseX,mouseY); 
println("HUE " + hue(myColor) + " SAT " + saturation(myColor) + " BRI " + brightness(myColor) );
}
