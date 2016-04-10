int dice = 50;
RGBY_Dice = new RGBY_Dice();

void setup() {
  frameRate(10);
  size(1280, 700);
  noLoop();
RGBY_Dice(10,10);
}

void draw() {
    background(103, 0, 24);
    RGBY_Dice.xyCoordinates(975,50);
RGBY_Dice.update();
}
void mousePressed() {
  loop();
}