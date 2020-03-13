Ball smallBall; // I declare a smallBall object of Ball class
Ball smallBall1; // I declare a smallBall object of Ball class
Ball smallBall2; // I declare a smallBall object of Ball class
Ball smallBall3; // I declare a smallBall object of Ball class
Ball smallBall4; // I declare a smallBall object of Ball class

void setup() {
  size(800, 800);
  noStroke();

  smallBall = new Ball();
  smallBall1 = new Ball();
  smallBall2 = new Ball();
  smallBall3 = new Ball();
  smallBall4= new Ball();
  
}


void draw() {
  background(#FFEA00);
  
  smallBall.show();
  smallBall1.show();
  smallBall2.show();
  smallBall3.show();
  smallBall4.show();

}
