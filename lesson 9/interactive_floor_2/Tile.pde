class Tile {
  float xPos, yPos;
  float rectSize;
  color rectColor;

  Tile(float _xPos, float _yPos) {
    xPos = _xPos;
    yPos = _yPos;
    rectSize = 20;
    rectColor = color(55, 94, 97);
  }

  void show() {
    
    if ( (mouseX > xPos) && (mouseX < xPos + rectSize) &&
      (mouseY > yPos) && (mouseY < yPos + rectSize)) {

      if ( frameCount % 1 == 0) {
        int randHue = int(random(360));
        rectColor = color(randHue, 94, 97);
      }
    } else {
      rectColor = color(55, 94, 97);
    }

    fill(rectColor);
    rect(xPos, yPos, rectSize, rectSize);
  }
  
}
