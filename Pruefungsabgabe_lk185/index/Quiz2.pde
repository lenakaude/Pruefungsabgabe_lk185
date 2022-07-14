//String textGlueckwunsch = "Glückwunsch";
//String textMotivation = "Alles Richtig! Weiter so :)";
String quiz2Heading ="Quiz";

String textLuecke1und2 = "Die Verbindung von Pleuelstange und Kurbelwelle liegt nicht      mittig      oben\nauf der Drehachse der Kurbelwelle\nsondern _____ .";
String textLuecke3 = "Dies führt dazu, dass die Kurbelwelle ______ wird\nwenn der Kolben nach unten gedrückt wird.";
String buttonPruefen = "Prüfen";
String buttonNochmal = "Nochmal";

// luecke 1 = nicht mittig 
String luecke2 = "versetzt";
String luecke3 = "gedreht";

boolean overButtonPruefen;
boolean overButtonNochmal;
boolean selectedButtonP;
boolean selectedButtonN;

int circlePruefenX =93+25;
int circleNochmalX =93+25;
int circlePruefenY =530;
int circleNochmalY =630;
int circleSizeButton = 50;




void quiz2Page () {

  // schwarze Linie
  stroke(black);
  strokeWeight(5);
  line(0, 220, 1301, 220);
  noStroke();

  rectMode(CORNER);
  fill(bGrey);
  rect(370, 190, 950, 500);

  stroke(white);
  noFill();
  rect(390, 210, 910, 460);
  rectMode(CORNER);

  textFont(fontHeadingSmall);
  textAlign(LEFT);
  fill(dGrey);
  text(quiz2Heading, 93, 207);

  textAlign(CORNER);
  textFont(fontText);
  textSize(55);
  textLeading(33);
  text(textLuecke1und2, 745, 255, 500, 300);
  text(textLuecke3, 745, 455, 500, 300);

  // timer
  //fill(black);
  //rect(170,340,80,80);
  image(timerIcon, 170, 340);


  //Button Kreis 
  //Button Prüfen
  noStroke();
  fill(black);
  ellipse(circlePruefenX, circlePruefenY, circleSizeButton, circleSizeButton);
  //Button Nochmal
  ellipse(circleNochmalX, circleNochmalY, circleSizeButton, circleSizeButton);

  fill(black);
  text(buttonPruefen, circlePruefenX+50, circlePruefenY+10);
  text(buttonNochmal, circleNochmalX+50, circleNochmalY+10);


  // CHECKBOXeN
  timer();
  checkbox();

  question2.show();
  question3.show();

  if (selectedButtonP) {
    pruefen();
  }

  if (selectedButtonN) {
    nochmal();
  }
}

void pruefen() {
  resetTimer();
  print("PRUEFEN");
  currentSubPageQuiz = 3;
}

void nochmal() {
  resetTimer();
  selectedButtonP = false;
  selectedButtonN = false;
  selectedButtonN2 = false;
  currentSubPageQuiz = 2;
  question2.clear();
  question3.clear();
  question2.show();
  question3.show();
  selectedA = selectedB = false;
}

// wenn Zeit abgelaufen ist zu Screen Quiz 3 oder Quiz 4 wechseln
//wenn Zeit abgelaufen, Wechsel zu Screen=11
/*if (leftTime<0) {
 screen=11;
 }*/
