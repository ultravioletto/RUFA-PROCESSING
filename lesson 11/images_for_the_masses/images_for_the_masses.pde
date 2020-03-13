PImage uni;
PImage sheUni;

PImage[] anim;

Food f;


int counter;
int direction;

float noiseCount;

void setup() {
  size(800, 800);

  uni = loadImage("unicorn.png");
  sheUni = loadImage("unicornessa.png");

  anim = new PImage[3];

  anim[0] = loadImage("anim/1.png");
  anim[1] = loadImage("anim/2.png");
  anim[2] = loadImage("anim/3.png");

  counter = 2;

  frameRate(60);
  noCursor();

  surface.setLocation(0, 0); // LIFE SAVING TIP TO PLACE THE WINDOW AT 0 0 location of the monitor
  imageMode(CENTER);
  background(#03E4FF);

  noiseCount = 0;

  f = new Food();
}



void draw() {
  background(#03E4FF);

  noiseCount +=.00001;


  noFill();
  stroke(255);
  strokeWeight(10);

  beginShape();

  for ( int i = 0; i <= width; i +=50) {
    float n = noise(noiseCount*i) * height;

    curveVertex(i, n);
  }

  endShape();


  float myDist = dist(mouseX, mouseY, f.posX, f.posY);

  if (myDist > 50) {

    f.show();
  } else {
    f.explode();
  }




  if (counter > anim.length-1 ) {
    counter = 0;
  }


        tint(255,255);

  pushMatrix();

  translate(mouseX, mouseY);
  scale(checkMouseDir(), 1);

  image(anim[counter], 0, 0);
  popMatrix();

  if (frameCount % 10 == 0) {
    counter++;
  }

  //image(uni, mouseX, mouseY);
  //image(sheUni, mouseX+100, mouseY);
}


int checkMouseDir() {
  if (mouseX == pmouseX) {
    return direction;
  }

  if (mouseX > pmouseX ) {
    direction = -1;
    return direction;
  } else {
    direction = 1;
    return direction;
  }
}
