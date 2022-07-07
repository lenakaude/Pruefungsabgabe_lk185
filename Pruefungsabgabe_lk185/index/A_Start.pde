//String textStartseite = "Aufbau und Funktionsweise eines Viertakt-Ottomotors\n mit einem Zylinder";
//String textStartseite2= "Jede einzelne Hub- oder Senkbewegung des Kolbens wird als\n Takt bezeichnet.Im Viertakt-Ottomotor finden also vier solche\n Bewegungen statt, bevor die Prozesse sich wiederholen.";
String taktTextStart ="Der Viertakt-Motor mit einem Zylinder: Jede einzelne Hub- oder\nSenk-bewegung des Kolbens wird als Takt bezeichnet.\nIm Viertakt-Ottomotor finden also vier solcher Bewegungen statt,\nbevor sich die Prozesse wiederholen.";

void startPage (){ // function is displayed, if currentPage = 1
  
  // to not display lueckentext
  question2.hide();
  question3.hide();
   // text headings
  textFont(fontHeading);
  fill(dGrey);
  text("4 TAKT MOTOR", 93, 280);

  textFont(fontText);
  fill(yellow);
  text("AUFBAU & FUNKTIONSWEISE", 93, 338);
  
  // startPage footer
  rectMode(CORNER);  // footer darkgrey
  fill(dGrey);
  rect(0, 800-120, 1300, 120);
  
  // rects black yellow
  fill(yellow);
  rect(0, 800-120, (width/5), 120);
  rect(520, 800-120, (width/5), 120);
  rect(1040, 800-120, (width/5), 120);
  
  
  rectMode(CORNER);
  fill(bGrey);
  rect(0,410,1200,200);
  
  stroke(white);
  strokeWeight(5);
  noFill();
  rectMode(CORNER);
  rect(0,430,1180,160);
  
  textFont(fontTextSmall);
  textLeading(31);
  fill(dGrey);
  text(taktTextStart, 93,470); 
  
  
  // media
  // image(iconFlag, 225, 205);
  image(pfeilStart, 860, 450); // Pfeil Button
  textSize(60);
  textAlign(CORNER); // text Pfeil Button
  fill(white);
  text(los, 890, 515);

  // text footer
  fill(white);
 
  textFont(fontTextSmall);
  textSize(28);
  textLeading(25);
  textAlign(LEFT);
  text ("LENA KAUDERER\nINTERAKTIVE\nLEHRMEDIEN SS22\nProf. Ralph Tille", 800, 710);
   

 
}
