String takt1Heading ="Gemisch Ansaugen";
String taktText1 ="Ansaugen, des Benzin-Luft-\ngemisches des Vergasers,\ndurch das Einlassventil\nbei geschlossenem Auslass-\nventil. Der Kolben bewegt\nsich nach unten";


int currentAnimationStep = 0;
int lastMillisAnimChange = 0;
boolean animationRunning;

void tact1Page () {
  //frameRate(1);


  textFont(fontHeadingSmall);
  fill(dGrey);
  text("1. TAKT", 93, 207); 

  textFont(fontHeadingSmall);
  textSize(30);
  fill(dGrey);
  text(takt1Heading, 895, 265);

  textFont(fontTextSmall);
  textLeading(32);
  fill(dGrey);
  text(taktText1, 895, 315); 
  
    // icon arrow yellow
  image(iconArrowDown, 550, 450);
  iconArrowDown.resize(25, 60);
  
  //image(iconArrowLeft, 410, 660);

  PImage currentImage = takt1Animation.get(currentAnimationStep);
  //modulo = Eingabewert A / Eingabewert B ==> Rest -- 24%5 = 4
  
  // ventils closed
  image(ventilLeft, 399,331);
  image(ventilRight, 473,320);
  
  // 
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


  
}
