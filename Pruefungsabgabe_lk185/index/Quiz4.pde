
String quiz4Heading ="Punktestand";

void quiz4Page (){
  
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
  fill(dGrey);
  text(quiz4Heading, 93, 280); 
  
}
