class Ball {
    // here there is the definition of the variables of the class
  float diameter;
  float xPos, yPos;
  float yVel;

// here there is the constructor's class invoked every time I create 
//a new object
  Ball() {
    diameter = random(5,20);
    xPos = random(20,width-20);
    yPos = height/2;
    yVel = random(-10,10);
  }

// here there is a show function or method
  void show() {
    checkWalls();
    yPos = yPos + yVel;
    fill(#5A5A58,100);
    ellipse(xPos, yPos, diameter, diameter);
  }
// here there is a checkwalls function or method

  void checkWalls() {
    if (yPos >= height || yPos <= 0) {
      yVel = yVel * -1;
    }
  }
}
