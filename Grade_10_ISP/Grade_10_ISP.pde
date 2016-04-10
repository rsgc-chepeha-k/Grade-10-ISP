
RGBY_Dice cDice = new RGBY_Dice();
restriction_dice rDice = new restriction_dice();
void setup() { 
  frameRate(10);
  size(1200, 700);
  noLoop();
}

void draw() {
  background(103, 0, 24);
  cDice.xyCoordinates(975, 25);
  cDice.xyCoordinates(1050, 25);
  cDice.xyCoordinates(1125, 25);
  cDice.xyCoordinates(975, 100);
  cDice.xyCoordinates(1050, 100);
  cDice.xyCoordinates(1125, 100);
  cDice.xyCoordinates(975, 175);
  cDice.xyCoordinates(1050, 175);
  rDice.xyCoordinates(1125, 175);
}

void mousePressed() {
  loop();
}