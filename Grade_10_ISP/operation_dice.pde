class operation_dice {

  void xyCoordinates(int xAxis, int yAxis) {
    //dice
    noStroke();
    fill(245, 241, 222);
    rect(xAxis, yAxis, 50, 50, 10);

    //Coloured Circles on the side of the Die
    int side = int(random(1, 7));
    if (side == 1 || side == 3 ) {
      fill(255, 0, 0);
      textSize(24);
      text("U", xAxis+17, yAxis+30);
    }
    if (side == 2 || side == 4 ) {
      fill(255, 0, 0);
      textSize(24);
      text( "Ω", xAxis+17, yAxis+30);
    }
    if (side == 5) {
      fill(255, 0, 0);
      textSize(24);
      text("-", xAxis+17, yAxis+30);
    }
    if (side == 6) {
      fill( 255, 0, 0);
      textSize(24);
      text("'", xAxis+17, yAxis+30);
    }

    //roll
    if (mousePressed && mouseButton == LEFT)
      noLoop();
  }
}