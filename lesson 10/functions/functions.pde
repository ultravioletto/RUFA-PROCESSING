float myHue;

void setup() {
  size (800, 800);

  rectMode(CENTER);
  noStroke();
  colorMode(HSB, 360, 100, 100);
}



void draw() {
  background(#FFF703);

  myHue = posToHue(mouseY);

  fill(myHue, 100, 100);
  rect(width/2, height/2, 100, 100);


  float tmpRand = random(0, height);

  if (tmpRand == 100) {
    tmpRand = 0;
  }

  myHue = posToHue(tmpRand);
  fill(myHue, 100, 100);
  rect(300, height/2, 100, 100);

  myHue = posToHue(mouseX);
  fill(myHue, 100, 100);
  rect(500, height/2, 100, 100);
}


float posToHue(float _pos) {

  float tmpPos = map(_pos, 0, height, 0, 360);
  return tmpPos;
}
