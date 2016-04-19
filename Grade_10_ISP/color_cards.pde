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
      fill(0, 0, 255);
      ellipse(xAxis+25, yAxis+12, 20, 20);
    }
    if (side == 2  || side == 3  || side == 4   || side == 5 || side == 9 || side == 10  || side == 11  || side == 12 ) {
      fill(255, 0, 0);
      ellipse(xAxis+25, yAxis+37, 20, 20);
    }
    if (side == 13 || side == 14 || side == 6 || side == 7 || side == 2|| side == 10 || side == 11 || side == 3 ) {
      fill(0, 255, 0);
      ellipse(xAxis+25, yAxis+62, 20, 20);
    }
    if (side == 15 || side == 14 || side == 3|| side == 12|| side == 8 || side == 10 || side == 7|| side == 5) {
      fill(255, 255, 0);
      ellipse(xAxis+25, yAxis+87, 20, 20);
    }

    //roll
    if (mousePressed && mouseButton == LEFT)
      noLoop();
  }
}