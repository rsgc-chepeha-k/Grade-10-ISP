class number_dice {

  void xyCoordinates(int xAxis, int yAxis) {
    //dice
    noStroke();
    fill(245, 241, 222);
    rect(xAxis, yAxis, 50, 50, 10);

    //Coloured Circles on the side of the Die
    int side = int(random(1, 7));
    if (side == 1 || side == 2 ) {
      fill(0, 255, 0);
      textSize(24);
      text("1", xAxis+17, yAxis+30);
    }
    if (side == 3) {
      fill(0, 255, 0);
      textSize(24);
      text( "2", xAxis+17, yAxis+30);
    }
    if (side == 4) {
      fill(0, 255, 0);
      textSize(24);
      text("3", xAxis+17, yAxis+30);
    }
    if (side == 5) {
      fill(0, 255, 0);
      textSize(24);
      text("4", xAxis+17, yAxis+30);
    }
    if (side == 6) {
      fill( 0, 255, 0);
      textSize(24);
      text("5", xAxis+17, yAxis+30);
    }

    //roll
    if (mousePressed && mouseButton == LEFT)
      noLoop();
  }
}