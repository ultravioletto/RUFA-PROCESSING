int posX = 0; /// this is the starting point according to the radius of the circle (300) and its stroke (15)
int velX = 0;

int posY = 0;
int velY = 0;

void setup() {
  size(800, 800); // my window is 800 pixel wide and 800 pixel tall 

}

void draw() {
      background(120);

  posX = posX + velX; // increment by 10 the x position 

  if (posX > 1115) { // if posX is greater than (800+300+15)
    posX = -315; // reset the value of posX to the starting point
  }
  
  
  posY = posY + velY;
  
  if ( posY > 800){
  posY = -700;
  }
  println(posY);
  // style the first cirlce
  strokeWeight(15);
  stroke(#FF0A12);
  fill(#FFF30A);

  ellipse(posX+400, posY+400, 600, 600);
 
  // style the eyes
  noStroke();
  fill(#000000,255);

  ellipse(posX+400, posY + 260 , 60, 180);
 
  ellipse(posX + 275, posY + 260, 60, 180);
  ellipse(posX + 525, posY + 260, 60, 180);

  // draw the mouth  
  rect(posX + 275, posY + 500, 250, 40);
  
}
