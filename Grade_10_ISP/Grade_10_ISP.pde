//giving all of the classes variable names, so they can be drawn later on in this draw loop
RGBY_Dice cDice = new RGBY_Dice();
restriction_dice rDice = new restriction_dice();
operation_dice oDice = new operation_dice ();
number_dice nDice = new number_dice ();
//giving all of the classes variable names, so they can be drawn later on in this draw loop, aswell as selecting the number of cards to be crawn
color_cards cCard = new color_cards (12);
//to check if the mouse is carrying the dice
boolean hasCard = false;
//to possition the dice initially for start of game
int c1x = 975;
int c1y = 25;
int c2x = 1050;
int c2y = 25;
int c3x = 1125;
int c3y = 25;
int c4x = 975;
int c4y = 100;
int c5x = 1050;
int c5y = 100;
int c6x = 1125;
int c6y = 100;
int c7x = 975;
int c7y = 175;
int c8x = 1050;
int c8y = 175;

int r1x = 1125;
int r1y = 175;
int r2x = 975;
int r2y = 250;
int r3x = 1050;
int r3y = 250;

int o1x = 1125;
int o1y = 250;
int o2x = 975;
int o2y = 325;
int o3x = 1050;
int o3y = 325;
int o4x = 1125;
int o4y = 325;

int n1x = 975;
int n1y = 400;
int n2x = 1050;
int n2y = 400;
int n3x = 1125;
int n3y = 400;
//Used to know which card has been clicked
boolean c1, c2, c3, c4, c5, c6, c7, c8, r1, r2, r3, o1, o2, o3, o4, n1, n2, n3;
//setting up the canvas
void setup() { 
  frameRate(10);
  //to set up the random card
  cCard.chooseRandom();

  //drawing the canvas
  size(1200, 700);

  //to set up the dice to be random
  nDice.chooseRandom();
  oDice.randomize();
  cDice.chooseRandoms();
  rDice.chooseRandoms();
}


//drawing the background, game board and dice
void draw() {
  background(125, 0, 24);


  //drawing the game board

  fill(255, 200, 0);
  noStroke();
  rect(5, 5, 948, 348);
  fill(125, 0, 24);
  rect(5, 348, 948, 447);
  stroke(255);
  strokeWeight(12);
  noFill();
  rect(5, 5, 950, 450);
  line(0, 350, 950, 350);
  line(317, 0, 317, 348);
  line(633, 0, 633, 348);
  strokeWeight(6);
  line(620, 447, 950, 447);
  fill(255);
  textSize(24);
  text("Forbidden", 100, 35);
  text("Permitted", 417, 35);
  text("Required", 733, 35);
  textSize(50);
  text("GOAL:", 470, 448);

  //drawing the dice
  cDice.xyCoordinates(c1x, c1y, 0);
  cDice.xyCoordinates(c2x, c2y, 1);
  cDice.xyCoordinates(c3x, c3y, 2);
  cDice.xyCoordinates(c4x, c4y, 3);
  cDice.xyCoordinates(c5x, c5y, 4);
  cDice.xyCoordinates(c6x, c6y, 5);
  cDice.xyCoordinates(c7x, c7y, 6);
  cDice.xyCoordinates(c8x, c8y, 7);
  rDice.xyCoordinates(r1x, r1y, 0);
  rDice.xyCoordinates(r2x, r2y, 1);
  rDice.xyCoordinates(r3x, r3y, 2);
  oDice.xyCoordinates(o1x, o1y, 0);
  oDice.xyCoordinates(o2x, o2y, 1);
  oDice.xyCoordinates(o3x, o3y, 2);
  oDice.xyCoordinates(o4x, o4y, 3);
  nDice.xyCoordinates(n1x, n1y, 0);
  nDice.xyCoordinates(n2x, n2y, 1);
  nDice.xyCoordinates(n3x, n3y, 1);
  //Calling the function to draw each card
  for (int i = 0; i < cCard._numberOfCards; i++)
  {
    //drawing each card
    cCard.xyCoordinates(i * 50, 475, i);
  }
  //checking if the boolean is true then follow mousex, mousey
  if (c1)
  {
    c1x = mouseX;
    c1y = mouseY;
  } else if (c2)
  {
    c2x = mouseX;
    c2y = mouseY;
  } else if (c3)
  {
    c3x = mouseX;
    c3y = mouseY;
  } else if (c4)
  {
    c4x = mouseX;
    c4y = mouseY;
  } else if (c5)
  {
    c5x = mouseX;
    c5y = mouseY;
  } else if (c6)
  {
    c6x = mouseX;
    c6y = mouseY;
  } else if (c7)
  {
    c7x = mouseX;
    c7y = mouseY;
  } else if (c8)
  {
    c8x = mouseX;
    c8y = mouseY;
  } else if (r1)
  {
    r1x = mouseX;
    r1y = mouseY;
  } else if (r2)
  {
    r2x = mouseX;
    r2y = mouseY;
  } else if (r3)
  {
    r3x = mouseX;
    r3y = mouseY;
  } else if (o1)
  {
    o1x = mouseX;
    o1y = mouseY;
  } else if (o2)
  {
    o2x = mouseX;
    o2y = mouseY;
  } else if (o3)
  {
    o3x = mouseX;
    o3y = mouseY;
  } else if (o4)
  {
    o4x = mouseX;
    o4y = mouseY;
  } else if (n1)
  {
    n1x = mouseX;
    n1y = mouseY;
  } else if (n2)
  {
    n2x = mouseX;
    n2y = mouseY;
  } else if (n3)
  {
    n3x = mouseX;
    n3y = mouseY;
  }
}


// making mouse reset so it can be clicked again after it has been clicked
void mousePressed() 
{//checking where the mouse is and if it is in between the correct cordinates when the mouse is pressed then it will move with mouse y and mouse x as aformentioned.
  if (!hasCard)
  {
    hasCard = true;
    if (mouseY > 25 && mouseY < 50)
    {
      if (mouseX > 975 && mouseX < 1000)c1 = true;
      else if (mouseX > 1050 && mouseX < 1075)c2 = true;
      else if (mouseX > 1125 && mouseX < 1150)c3 = true;
    } else if (mouseY > 100 && mouseY < 125)
    {
      if (mouseX > 975 && mouseX < 1000)c4 = true;
      else if (mouseX > 1050 && mouseX < 1075)c5 = true;
      else if (mouseX > 1125 && mouseX < 1150)c6 = true;
    } else if (mouseY > 175 && mouseY < 200)
    {
      if (mouseX > 975 && mouseX < 1000)c7 = true;
      else if (mouseX > 1050 && mouseX < 1075)c8 = true;
      else if (mouseX > 1125 && mouseX < 1150)r1 = true;
    } else if (mouseY > 250 && mouseY < 275)
    {
      if (mouseX > 975 && mouseX < 1000)r2 = true;
      else if (mouseX > 1050 && mouseX < 1075)r3 = true;
      else if (mouseX > 1125 && mouseX < 1150)o1 = true;
    } else if (mouseY > 325 && mouseY < 350)
    {
      if (mouseX > 975 && mouseX < 1000)o2 = true;
      else if (mouseX > 1050 && mouseX < 1075)o3 = true;
      else if (mouseX > 1125 && mouseX < 1150)o4 = true;
    } else if (mouseY > 400 && mouseY < 425)
    {
      if (mouseX > 975 && mouseX < 1000)n1 = true;
      else if (mouseX > 1050 && mouseX < 1075)n2 = true;
      else if (mouseX > 1125 && mouseX < 1150)n3 = true;
    }
  } 
  //making it so that if the particular dice has not been clicked on then it will not move
  else if (hasCard)
  {
    hasCard = false;
    c1 = false;
    c2 = false;
    c3 = false;
    c4 = false;
    c5 = false;
    c6 = false;
    c7 = false;
    c8 = false;

    r1 = false;
    r2 = false;
    r3 = false;

    o1 = false;
    o2 = false;
    o3 = false;
    o4 = false;

    n1 = false;
    n2 = false;
    n3 = false;
  }
}