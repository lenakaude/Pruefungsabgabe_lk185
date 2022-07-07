String takt1Heading ="Gemisch Ansaugen";
String taktText1 ="Ansaugen, des Benzin-Luft-\ngemisches des Vergasers,\ndurch das Einlassventil\nbei geschlossenem Auslass-\nventil. Der Kolben bewegt\nsich nach unten";
String caption1 = "Zündkerze";
String caption2 = "Einlassventil";
String caption3 = "Auslassventil";
String caption4 = "Brennraum";
String caption5 = "Kolben";
String caption6 = "Pleuelstange";
String caption7 = "Kurbelwelle";

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


  //subtitles
  line(50, 50, 50, 50);
  line(50, 50, 50, 50);
  line(50, 50, 50, 50);
  line(50, 50, 50, 50);
  line(50, 50, 50, 50);
  line(50, 50, 50, 50);
  line(50, 50, 50, 50);

  textAlign(CENTER);
  text(caption1, 455, 290);
  text(caption2, 315, 330);
  text(caption3, 595, 330);
  text(caption4, 330, 530);
  text(caption5, 570, 550);
  text(caption6, 300, 590);
  text(caption7, 590, 630);
}
