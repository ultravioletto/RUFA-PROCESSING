int fillColor = 0; // there is a variable that contain the color of our shape


void setup() {
  size(500, 500); // this is the size of the window
  frameRate(60); // set the velocity of the video refresh
}


void draw() {
  background(#FFF30A); // this is the background color
  strokeWeight(10);
  fillColor = fillColor +1 ; // add 1 every frame into the fillColor variable
 
  if (fillColor == 255) { // so this is a question: is fill color equal to 255
  // if the answer is YES ( or true ) compute this
    fillColor = 0;
  }// otherwise go way
  
  fill(fillColor);
  ellipse(250, 250, 400, 400);
}
