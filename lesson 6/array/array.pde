int lengthTail = 200; // init the length of the "tail" corrisponding to the size of the array

int[] velY = new int[lengthTail];
float[] accY = new float[lengthTail];

int[] posX = new int[lengthTail]; // declare and init posX array as a Int array
int[] posY = new int[lengthTail]; //  declare and init posY array as a Int array

void setup() {
  size(800, 800, P2D); // make a window 800 px by 800px
  background(#FCF505); // make it YELLOW
  noStroke(); // don't draw any stroke
  fill(#666666); // fill it dark gray

  for (int i = 0; i < velY.length; i++) {
    velY[i]=1;
    accY[i]=-1.5;
  }
}


void draw() {
  background(#FCF505); // // make it YELLOW 

  // this for cycle run thru the posX and the posY array BACKWARD form the end to the start
  for (int i = posX.length-1; i > 0; i--) {
    // shift to the right all the array values 
    posX[i] = posX[i-1];
    posY[i] = posY[i-1];
  }


  // add some randomness to the position just to make it cooler ( alias ad PHYSICS my friend.....)
  for ( int i = 0; i< posY.length; i++) {
    //  posY[i] -=int(random(1, 5)) ;
    //     velX += accX; 
    //posX += velX;

    velY[i] += 1;
    posY[i] += 1.5;
    posX[i] +=int(random(-2, 2)) ;

    if ( posY[i] < 0 ) {
      posY[i] = 10;
      posX[i] +=int(random(-20, 20)) ;
    }
  }

  //fill the first position of the array with the actual mouse position
  posX[0] = mouseX;
  posY[0] = mouseY;


  // run thru all the arrays until length-1 !! this because line wants 2 points 
  for ( int i = 0; i < posX.length-1; i++) {

    float mySize = map(i, 0, posX.length, 50, 2); // make the stroke size according the distance 
    float myAlpha = map(i, 0, posX.length, 100, 0);// make the alpha strenght according the distance 
    stroke(#666666, myAlpha); // set the stroke color

    strokeWeight(mySize);  // set the stroke weight

    line(posX[i], posY[i], posX[i+1], posY[i+1]); // draw the line.
  }
}
