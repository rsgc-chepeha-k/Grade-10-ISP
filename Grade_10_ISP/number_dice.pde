class number_dice {
  
  int randoms[] = new int[3];
  

  //drawing colored dice
  void xyCoordinates(int xAxis, int yAxis, int whichRandoms) {
    
    //drawing the rectangular part of the dice
    noStroke();
    fill(245, 241, 222);
    rect(xAxis, yAxis, 50, 50, 10);

    //drawing the numbers on the side of the Die
    
    if (randoms[whichRandoms] == 1 || randoms[whichRandoms] == 2 ) {
      fill(0, 255, 0);
      textSize(24);
      text("1", xAxis+17, yAxis+30);
    }
    if (randoms[whichRandoms] == 3) {
      fill(0, 255, 0);
      textSize(24);
      text( "2", xAxis+17, yAxis+30);
    }
    if (randoms[whichRandoms] == 4) {
      fill(0, 255, 0);
      textSize(24);
      text("3", xAxis+17, yAxis+30);
    }
    if (randoms[whichRandoms] == 5) {
      fill(0, 255, 0);
      textSize(24);
      text("4", xAxis+17, yAxis+30);
    }
    if (randoms[whichRandoms] == 6) {
      fill( 0, 255, 0);
      textSize(24);
      text("5", xAxis+17, yAxis+30);
    }
  }
  
  void chooseRandom()
  {
   for(int i = 0; i < 3; i++)
   {
     randoms[i] = int(random(1, 7));
   }
  }
}