String textZiel = "Ziel erreicht!";
String textMotivation = "Ich bin stolz auf dich";
String textPunktestand = "Dein Punktestand";
String textPunktestand2 = "lautet ";

int punkte = 0;


void quiz3Page (){
  punkte = 0; //Muss neu gesetzt werden, damit keine Addition in jeder draw stattfindet

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
  textSize(60);
  textAlign(CENTER);
  fill(dGrey);
  text(textZiel, width/2, height/2-60);
  
  textFont(fontNav);
  fill(dGrey);
  text(textMotivation, width/2, height/2); 
  
  textFont(fontNav);
  fill(dGrey);
  text(textPunktestand, width/2, height/2+50);
  
  String antwort1 = question2.getText();
  String antwort2 = question3.getText();
  
  if (antwort1.equals("Hallo")){
    punkte = punkte +1;
  }
  
  if (antwort2.equals("Hallo")){
    punkte = punkte +1;
  }
  
  if(selectedA) {
    punkte = punkte + 1;
  }
 
  
  String punkteTextAnzeige = textPunktestand2 + str(punkte);
  // checkbox right and wrong
  // textfield right and wrong
  
  
  textFont(fontNav);
  fill(dGrey);
  text(punkteTextAnzeige, width/2, height/2+90); 
  
  
  // Bild Flaggen
  image(iconFlag, 770, 483);
  iconFlag.resize(432,246);

  
  
   question2.hide();
   question3.hide();
  
}
