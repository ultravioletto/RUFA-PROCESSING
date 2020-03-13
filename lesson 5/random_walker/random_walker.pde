int posX;
int posY;
int vel;
void setup() {
  size (600, 600);
  background(0);
  posX =500;
  posY = height/2;
  vel = 10;
 // stroke(255);
 // noFill();
 
 noStroke();
 fill(255);
}


void draw() {
 // background(0);
  int choice = int(random(4));
  //println(choice);

  if (choice == 0) {
    // GO UP
    posY = posY - vel;
  } else if (choice == 1) {
    // go RIGHT
    posX = posX + vel;
  } else if (choice == 2) {
    // go DOWN
    posY = posY + vel;
  } else if (choice == 3) {
    // go LEFT
    posX = posX - vel;
  }
//// check the walls bonduaries

/*
  if ( posX > width) {
    posX = posX - vel;
  }
  if ( posX < 0) {
    posX = posX + vel;
  }
  
   if ( posY > height) {
    posY = posY - vel;
  }
  if ( posY < 0) {
    posY = posY + vel;
  }
*/

if ( posX > width) {
    posX = vel;
  }
  if ( posX < 0) {
    posX = width-vel;
  }
  
   if ( posY > height) {
    posY = vel;
  }
  if ( posY < 0) {
    posY = height-vel;
  }

  //point(posX, posY);
  fill(255);
  rect(posX, posY, vel, vel);
  
   fill(0,10);
  rect(0,0,width,height);
  
 
}
