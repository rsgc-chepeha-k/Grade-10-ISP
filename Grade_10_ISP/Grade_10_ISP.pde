6  //giving all of the classes variable names, so they can be drawn later on in this draw loop
RGBY_Dice cDice = new RGBY_Dice();
restriction_dice rDice = new restriction_dice();
operation_dice oDice = new operation_dice ();
number_dice nDice = new number_dice ();
color_cards cCard = new color_cards ();

//setting up the canvas
void setup() { 
  frameRate(10);
    
    //drawing the canvas
  size(1200, 700);
  noLoop();
}


//drawing the background, game board and dice
void draw() {
  background(125, 0, 24);
 
  //drawing the game board
  fill(255, 200, 0);
  noStroke();
  rect(5, 5, 948, 348);
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
  cDice.xyCoordinates(975, 25);
  cDice.xyCoordinates(1050, 25);
  cDice.xyCoordinates(1125, 25);
  cDice.xyCoordinates(975, 100);
  cDice.xyCoordinates(1050, 100);
  cDice.xyCoordinates(1125, 100);
  cDice.xyCoordinates(975, 175);
  cDice.xyCoordinates(1050, 175);
  rDice.xyCoordinates(1125, 175);
  rDice.xyCoordinates(975, 250);
  rDice.xyCoordinates(1050, 250);
  oDice.xyCoordinates(1125, 250);
  oDice.xyCoordinates(975, 325);
  oDice.xyCoordinates(1050, 325);
  oDice.xyCoordinates(1125, 325);
  nDice.xyCoordinates(975, 400);
  nDice.xyCoordinates(1050, 400);
  nDice.xyCoordinates(1125, 400);
  cCard.xyCoordinates(1,475);
}


// making mouse reset so it can be clicked again after it has been clicked
void mousePressed() {
  loop();
}