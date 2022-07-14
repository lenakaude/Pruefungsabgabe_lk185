String takt3Heading ="Arbeiten";
String taktText3 ="Beide Ventile sind geschlossen.\nIm Moment der größten\nVerdichtung wird das\nBenzin-Luft-Gemisch durch\ndie Zündkerze gezündet\nDurch die explosionsartige\nVerbrennung wird der Kolben\nnach unten gedrückt.\nEs wird an ihm Arbeit verrichtet.";
//String textTakt3 = "Beide Ventile sind geschlossen.Im Moment der größten Verdichtung\n wird das Benzin-Luft-Gemisch durch die Zündkerze gezündet.\n Durch die explosionsartige Verbrennung wird der Kolben nach unten gedrückt, es wird an ihm Arbeit verrichtet.";

void tact3Page (){
  

  
  textFont(fontHeadingSmall);
  fill(dGrey);
  text("3. TAKT", 93, 207);
  
  textFont(fontHeadingSmall);
  textSize(30);
  fill(dGrey);
  text(takt3Heading, 895, 265);
  
  textFont(fontTextSmall);
  textLeading(32);
  fill(dGrey);
  text(taktText3, 895, 315); 
  
      // icon arrow yellow
  image(iconArrowDown, 550, 450);
  iconArrowDown.resize(25, 60);
  
  //image(iconArrowLeft, 410, 660);
  
    // ventils closed
  image(ventilLeft, 392,320);
  image(ventilRight, 473,320);
 
  
  PImage currentImage = takt1Animation.get(currentAnimationStep);
  //modulo = Eingabewert A / Eingabewert B ==> Rest -- 24%5 = 4
  image(currentImage, 375, 315);

  //Checkt, ob seit der letzten Änderung des Bildes in der Animation 1 Sekunde 
  //vergangen ist, wenn ja: neues Bild im nächsten Frame
  if (animationRunning) {
    int curMillis = millis();
    if (curMillis - lastMillisAnimChange > 1000) {
      lastMillisAnimChange = curMillis;
      currentAnimationStep++;
    }
  }

  // Stoppt Animation, wenn wir alle Frames abgearbeitet haben
  if (currentAnimationStep >= takt1Animation.size() - 1) {
    animationRunning = false;
  }
  
  // icon explosion and spark
  image(iconExplosion, 430, 360);
  //iconExplosion.resize(25, 60);
  
  image(iconSpark, 450, 360);
  iconSpark.resize(8, 25);

}
