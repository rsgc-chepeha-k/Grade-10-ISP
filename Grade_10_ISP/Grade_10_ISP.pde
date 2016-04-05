
int dice = 50;

void setup() {
  frameRate(10);
  size(1280, 700);
  noLoop();
}

void draw() {
  background(#43936B);

  //dice
  noStroke();
  fill(#FFF3D6);
  rectMode(CENTER);
  rect(width/2, height/2, dice, dice, dice/5);

  //dots
  fill(50);
  int side = int(random(1, 7));
  if (side == 1 || side == 3 ) {
    fill(255, 0, 0);
    ellipse(width/2, height/2, dice/2, dice/2);
  }
  if (side == 2 || side == 4 ) {
    fill(0, 0, 255);
    ellipse(width/2, height/2, dice/2, dice/2);
  }
  if (side == 5) {
    fill(0, 255, 0);
    ellipse(width/2, height/2, dice/2, dice/2);
  }
  if (side == 6) {
    fill(255, 255, 0);
    ellipse(width/2, height/2, dice/2, dice/2);
  }

  //roll
  if (mousePressed && mouseButton == LEFT)
    noLoop();
}
//
void mousePressed() {
  loop();
}