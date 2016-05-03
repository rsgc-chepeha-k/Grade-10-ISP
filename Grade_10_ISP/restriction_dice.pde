class restriction_dice {
  //drawing restriction dice
    //holds which dice are selected
  int randoms[] = new int[3];
  void xyCoordinates(int xAxis, int yAxis, int whichRandoms) {
    //drawing the rectangular part of the dice
    noStroke();
    fill(245, 241, 222);
    rect(xAxis, yAxis, 50, 50, 10);

    //drawing the symbols on the side of the Die
    
    if (randoms[whichRandoms] == 1 || randoms[whichRandoms] == 3 ) {
      fill(0, 0, 255);
      textSize(24);
      text("=", xAxis+17, yAxis+30);
    }
    if (randoms[whichRandoms] == 2 || randoms[whichRandoms] == 4 ) {
      fill(0, 0, 255);
      textSize(24);
      text( "C", xAxis+17, yAxis+30);
    }
    if (randoms[whichRandoms] == 5) {
      fill(0, 0, 255);
      textSize(24);
      text("V", xAxis+17, yAxis+30);
    }
    if (randoms[whichRandoms] == 6) {
      fill( 0, 0, 255);
      textSize(24);
      text("∆", xAxis+17, yAxis+30);
    }


  }
    // randomly selecting which dice to display
  void chooseRandoms()
  {
   for(int i = 0; i < 3; i++)
   {
    randoms[i] = int(random(1, 7)); 
   }
  }
}