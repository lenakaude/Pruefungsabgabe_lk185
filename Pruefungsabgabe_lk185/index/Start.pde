//String textStartseite = "Aufbau und Funktionsweise eines Viertakt-Ottomotors\n mit einem Zylinder";
//String textStartseite2= "Jede einzelne Hub- oder Senkbewegung des Kolbens wird als\n Takt bezeichnet.Im Viertakt-Ottomotor finden also vier solche\n Bewegungen statt, bevor die Prozesse sich wiederholen.";


void startPage (){
  
   // Text
  textFont(fontHeading);
  fill(dGrey);
  text("4 TAKT MOTOR", 93, 280);

  textFont(fontText);
  fill(yellow);
  text("FUNKTIONSWEISE", 93, 360);
  
  // Startseite Footer - schwarzgelbe Rechtecke
  rectMode(CORNER);
  fill(dGrey);
  rect(0, 800-120, 1300, 120);
  // schwarzgelb
  fill(yellow);
  rect(0, 800-120, (width/5), 120);
  rect(520, 800-120, (width/5), 120);
  rect(1040, 800-120, (width/5), 120);

  //image(iconFlag, 225, 205);
  image(pfeilStart, 800, 450);
  textSize(60);
  textAlign(CORNER);
  fill(white);
  text(los, 830, 515);

  // footer
  fill(white);
  textFont(fontNav);
  textSize(20);
  textAlign(LEFT);
  text ("LENA KAUDERER\nINTERAKTIVE LEHRMEDIEN SS22\nProf. Ralph Tille", 800, 710);
  

  
  // Linie Navigation
  //stroke(yellow);
  //strokeWeight(4);
  //line(0,118, 750,118);
  

 
}
