class RGBY_Dice {

  void RGBY_Dice () {
  }

  void RGBY_Dice(int xAxis, int yAxis) {
    //dice
    noStroke();
    fill(245, 241, 222);
    rectMode(CENTER);
    rect(xAxis, yAxis, 50, 50, 10);

    //Coloured Circles on the side of the Die
    int side = int(random(1, 7));
    if (side == 1 || side == 3 ) {
      fill(255, 0, 0);
      ellipse(xAxis, yAxis, 25, 25);
    }
    if (side == 2 || side == 4 ) {
      fill(0, 0, 255);
      ellipse(xAxis, yAxis, 25, 25);
    }
    if (side == 5) {
      fill(0, 255, 0);
      ellipse(xAxis, yAxis, 25, 25);
    }
    if (side == 6) {
      fill(255, 255, 0);
      ellipse(xAxis, yAxis, 25, 25);
    }

    //roll
    if (mousePressed && mouseButton == LEFT)
      noLoop();
  }
}