class color_cards {
  //holds the number cards 
  int _numberOfCards;
  //this holds all of the cards I have randomly selected
  int chosenCards[];
  color_cards(int numberOfCards)
  {
  //setting the size of the aray
  chosenCards = new int[numberOfCards];
  
 _numberOfCards = numberOfCards;
  }

  //drawing colored card
  void xyCoordinates(int xAxis, int yAxis, int whichCard) {
    //drawing the ractangular part of the dice
    noStroke();
    fill(245, 241, 222);
    rect(xAxis, yAxis, 50, 100, 10);

    //Coloured Circles on the cards
    if (chosenCards[whichCard] == 1 || chosenCards[whichCard] == 2 || chosenCards[whichCard] == 3 || chosenCards[whichCard] == 4  || chosenCards[whichCard] == 5  || chosenCards[whichCard] == 6  || chosenCards[whichCard] == 7  || chosenCards[whichCard] == 8) {
      fill(0, 0, 255);
      ellipse(xAxis+25, yAxis+12, 20, 20);
    }
    if (chosenCards[whichCard] == 2  || chosenCards[whichCard] == 3  || chosenCards[whichCard] == 4   || chosenCards[whichCard] == 5 || chosenCards[whichCard] == 9 || chosenCards[whichCard] == 10  || chosenCards[whichCard] == 11  || chosenCards[whichCard] == 12 ) {
      fill(255, 0, 0);
      ellipse(xAxis+25, yAxis+37, 20, 20);
    }
    if (chosenCards[whichCard] == 13 || chosenCards[whichCard] == 14 || chosenCards[whichCard] == 6 || chosenCards[whichCard] == 7 || chosenCards[whichCard] == 2|| chosenCards[whichCard] == 10 || chosenCards[whichCard] == 11 || chosenCards[whichCard] == 3 ) {
      fill(0, 255, 0);
      ellipse(xAxis+25, yAxis+62, 20, 20);
    }
    if (chosenCards[whichCard] == 15 || chosenCards[whichCard] == 14 || chosenCards[whichCard] == 3|| chosenCards[whichCard] == 12|| chosenCards[whichCard] == 8 || chosenCards[whichCard] == 10 || chosenCards[whichCard] == 7|| chosenCards[whichCard] == 5) {
      fill(255, 255, 0);
      ellipse(xAxis+25, yAxis+87, 20, 20);
    }

    //roll
    if (mousePressed && mouseButton == LEFT)
      noLoop();
  }
  //This is looping through every value in the aray aswell as making sure no integers are repeatedly being Selected
  void chooseRandom()
  {
    
    for(int i = 0; i < _numberOfCards; i++)
    {
      println(i);
      chosenCards[i] = int(random(0, 16));
      
      
      for(int j = 0; j < i; j++)
      {
         while(chosenCards[i] == chosenCards[j])chosenCards[i] = int(random(0, 16));
      }
    }
  }
}