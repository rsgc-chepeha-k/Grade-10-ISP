class RGBY_Dice {
  
  int randoms[] = new int[8];

  //drawing colored dice
  void xyCoordinates(int xAxis, int yAxis, int whichRandoms) {
  //drawing the ractangular part of the dice
    noStroke();
    fill(245, 241, 222);
    rect(xAxis, yAxis, 50, 50, 10);

    //Coloured Circles on the side of the Die
    
    if (randoms[whichRandoms] == 1 || randoms[whichRandoms] == 3 ) {
      fill(255, 0, 0);
      ellipse(xAxis+25, yAxis+25, 25, 25);
    }
    if (randoms[whichRandoms] == 2 || randoms[whichRandoms] == 4 ) {
      fill(0, 0, 255);
      ellipse(xAxis+25, yAxis+25, 25, 25);
    }
    if (randoms[whichRandoms] == 5) {
      fill(0, 255, 0);
      ellipse(xAxis+25, yAxis+25, 25, 25);
    }
    if (randoms[whichRandoms] == 6) {
      fill(255, 255, 0);
      ellipse(xAxis+25, yAxis+25, 25, 25);
    }

 
  }
  
  void chooseRandoms()
  {
   for(int i = 0; i < 8; i++)
   {
     randoms[i] = int(random(1, 7));
   }
  }
}