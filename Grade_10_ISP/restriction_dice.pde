class restriction_dice {
  //drawing restriction dice
  void xyCoordinates(int xAxis, int yAxis) {
    //drawing the rectangular part of the dice
    noStroke();
    fill(245, 241, 222);
    rect(xAxis, yAxis, 50, 50, 10);

    //drawing the symbols on the side of the Die
    int side = int(random(1, 7));
    if (side == 1 || side == 3 ) {
      fill(0, 0, 255);
      textSize(24);
      text("=", xAxis+17, yAxis+30);
    }
    if (side == 2 || side == 4 ) {
      fill(0, 0, 255);
      textSize(24);
      text( "ç", xAxis+17, yAxis+30);
    }
    if (side == 5) {
      fill(0, 0, 255);
      textSize(24);
      text("V", xAxis+17, yAxis+30);
    }
    if (side == 6) {
      fill( 0, 0, 255);
      textSize(24);
      text("∆", xAxis+17, yAxis+30);
    }

    //roll
    if (mousePressed && mouseButton == LEFT)
      noLoop();
  }
}