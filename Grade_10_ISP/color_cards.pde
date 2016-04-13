class color_cards {

  //drawing colored dice
  void xyCoordinates(int xAxis, int yAxis) {
    //drawing the ractangular part of the dice
    noStroke();
    fill(245, 241, 222);
    rect(xAxis, yAxis, 50, 100, 10);

    //Coloured Circles on the side of the Die
    int side = int(random(1, 17));
    if (side == 1 || side == 2 || side == 3 || side == 4  || side == 5  || side == 6  || side == 7  || side == 8) {
      fill(255, 0, 0);
      ellipse(xAxis+25, yAxis+25, 13, 13);
    }
    if (side == 2  || side == 3  || side == 4   || side == 5 || side == 9 || side == 10  || side == 11  || side == 12 ) {
      fill(0, 0, 255);
      ellipse(xAxis+, yAxis+38, 13, 13);
    }
    if (side == 13 || side == 14 || side == 6 || side == 7 || side == 2|| side == 10 || side == 11 || side == 3 ) {
      fill(0, 255, 0);
      ellipse(xAxis+25, yAxis+51, 13, 13);
    }
    if (side == 15 || side == 14 || side == 3|| side == 12|| side == 8 || side == 10 || side == 7|| side == 5) {
      fill(255, 255, 0);
      ellipse(xAxis+25, yAxis+64, 13, 13);
    }

    //roll
    if (mousePressed && mouseButton == LEFT)
      noLoop();
  }
}