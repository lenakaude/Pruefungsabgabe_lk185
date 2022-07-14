String takt4Heading ="Abgase Ausstoßen";
String taktText4 ="Das Auslassventil wird geöffnet\nund die verbrannten Abgase\nwerden durch den sich\nnach oben bewegenden Kolben\nausgestoßen.";
//String textTakt4 = "Das Auslassventil wird geöffnet und die verbrannten Abgase\nwerden durch den sich nach oben bewegenden Kolben ausgestoßen.";

void tact4Page (){
  
  textFont(fontHeadingSmall);
  fill(dGrey);
  text("4. TAKT", 93, 207); 
  
  
  textFont(fontHeadingSmall);
  textSize(30);
  fill(dGrey);
  text(takt4Heading, 895, 265);
  
  textFont(fontTextSmall);
  textLeading(32);
  fill(dGrey);
  text(taktText4, 895, 315);
  
        // icon arrow yellow
  image(iconArrowUp, 550, 450);
  iconArrowUp.resize(25, 60);
  
  
 // arrow Right
  //image(iconArrowRight, 410, 660);
  
    // ventils closed
  image(ventilLeft, 392,320);
  image(ventilRight, 464,331);

  
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

}
