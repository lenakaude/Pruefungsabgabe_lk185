String takt2Heading ="Gemisch Verdichten";
String taktText2 ="Der sich nach oben bewegende\nKolben verdichtet bei\ngeschlossenen Ventilen den\nBrennstoff und\nerwärmt ihn hierbei.";
//String textTakt2 = "Der sich nach oben bewegende Kolben verdichtet bei\n geschlossenen Ventilen den Brennstoff und erwärmt ihn hierbei";

void tact2Page () {

  textFont(fontHeadingSmall);
  fill(dGrey);
  text("2. TAKT", 93, 207);

  textFont(fontHeadingSmall);
  textSize(30);
  fill(dGrey);
  text(takt2Heading, 895, 265);

  textFont(fontTextSmall);
  textLeading(32);
  fill(dGrey);
  text(taktText2, 895, 315);
  
      // icon arrow yellow
  image(iconArrowUp, 550, 450);
  iconArrowUp.resize(25, 60);
  
  //image(iconArrowRight, 410, 660);
  
  
    // ventils closed
  image(ventilLeft, 392,320);
  image(ventilRight, 473,320);


  PImage currentImage = takt2Animation.get(currentAnimationStep);
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
  if (currentAnimationStep >= takt2Animation.size() - 1) {
    animationRunning = false;
  }

  // Animation image basic
  //image(motorBase, 375, 315);
}
