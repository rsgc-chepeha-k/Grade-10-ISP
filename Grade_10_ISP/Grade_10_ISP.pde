RGBY_Dice cDice = new RGBY_Dice();
restriction_dice rDice = new restriction_dice();
operation_dice oDice = new operation_dice ();
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
  rDice.xyCoordinates(975, 250);
  rDice.xyCoordinates(1050, 250);
  oDice.xyCoordinates(1125, 250);
  oDice.xyCoordinates(975, 325);
  oDice.xyCoordinates(1050, 325);
  oDice.xyCoordinates(1125, 325);
}

void mousePressed() {
  loop();
}