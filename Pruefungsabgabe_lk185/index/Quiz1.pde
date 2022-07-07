
//int pagePositionQuiz = 2;

void quiz1Page(){
  
question2.hide();
question3.hide();

  // schwarze Linie
  stroke(black);
  strokeWeight(5);
  line(0,220,1301,220);
  noStroke();

  rectMode(CENTER);
  fill(bGrey);
  rect(width/2,height/2, 650, 400);
  rectMode(CORNER);
  
  rectMode(CENTER);
  stroke(white);
  noFill();
  rect(width/2, height/2, 610, 360);
  rectMode(CORNER);

  textFont(fontHeading);
  textAlign(LEFT);
  textSize(50);
  fill(dGrey);
  text(quiz1Heading, width/2-200, height/2-60); 
  
   // media 
  textAlign(CENTER); // text Pfeil Button
  textFont(fontText);
  image(pfeilStart, pfeilButtonX2, pfeilButtonY2); // Pfeil Button
  textSize(50);
  
  fill(white);
  text(los, 650, 495);
  
  
  // booleans luecke
  // wenn eine Eingabe getätigt wird, dann wird entsprechender booleand auf true gesetzt.
  
 
}
