//Funktion die checkt, ob Mouse über Checkboxen ist
//frägt für jeden Button ab
//If Mouse in Rectangle = true, dann wird zB. Boolean buttonUp auch auf true gesetzt.
void update () {
  setAllButtonsToFalse();
  //TODO: 
  // Check currentPage: 1 = Start, 2 = Info, 3 = Quiz
  // Info: currentSubPage -> 1 - 4  Quiz: currentSubPageQuiz -> 1 - 3
  checkRectangles();
  checkCircles();
}

void setAllButtonsToFalse() { //Für Beginn von Frames, damit nicht versehentlich ein Status übernommen wird
  overNav1 = overNav2 = overNav3 = false;
  mouseOverSoundButton = mouseOverPlayButton = false;
  overQuizStart = false;
  mouseOverA = mouseOverB = false;
  mouseOverSoundButton = mouseOverPlayButton = false;

  overCircle1 = overCircle2 = overCircle3 = overCircle4 = false;
  canDragVolSlider = false;

  overButtonPruefen = false;
  overButtonNochmal = false;
  overButtonNochmal2 = false;
}

// Funktion die schaut ob Mausanzeiger im Bereich des spezifischen Rechtseck ist
// Und falls dies der Fall ist wird das entsprechende Boolean auf true gesetzt.
void checkRectangles() {
  //nav1, nav2, nav3 existieren immer
  //pfeilButton nur auf Start
  if (checkIfMouseInRect(nav1X, navY, navWidth, navHeight)) {
    overNav1 = true;
    overNav2 = overNav3 = false;
  } else if (checkIfMouseInRect(nav3X, navY, navWidth, navHeight)) {
    overNav3 = true;
    overNav1 = overNav2 = false;
  } else if (checkIfMouseInRect(nav2X, navY, navWidth, navHeight)) { 
    overNav2 = true;
    overNav1 = overNav3 = false;
  } else {
    overNav1 = overNav2 = overNav3 = false;
  }

  //Nur auf Start
  if (currentPage == 1) {
    if (checkIfMouseInRect(startPfeilButtonX, startPfeilButtonY, pfeilStart.width, pfeilStart.height)) {
      //Button Pfeil auf Startseite, soll auch klickbar sein, Verhalten wie bei Nav2
      overNav2 = true;
      overNav1 = overNav3 = false;
    }
  } else if (currentPage == 2) {
    if (checkIfMouseInRect(93, 270, 80, 80)) { //Play Button bei Takten
      mouseOverPlayButton = true; 
      mouseOverSoundButton = false;
    } else if (checkIfMouseInRect(895, 593, 80, 80)) {
      mouseOverSoundButton = true;
      mouseOverPlayButton = false;
    } else {
      mouseOverSoundButton = mouseOverPlayButton = false;
    }
  } else if (currentPage == 3) {
    if (currentSubPageQuiz == 1) {
      if (checkIfMouseInRect(pfeilButtonX2, pfeilButtonY2, pfeilStart.width, pfeilStart.height)) { // hier fehlt noch was !!!
        overQuizStart = true;
      } else {
        overQuizStart = false;
      }
    } else if (currentSubPageQuiz == 2) {
      if (checkIfMouseInRect(checkXA, checkY, checkboxSize, checkboxSize)) { // checkboxen
        mouseOverA = true;
        mouseOverB = false;
      } else if (checkIfMouseInRect(checkXB, checkY, checkboxSize, checkboxSize)) { // checkboxen
        mouseOverA = false;
        mouseOverB = true;
      } else {
        mouseOverA = mouseOverB = false;
      }
    } else if (currentSubPageQuiz == 3) {
      //nur runde Buttons
    }
    //Auf allen Quiz-Subpages
    if (checkIfMouseInRect(93, 270, 80, 80)) { //Play Button bei Takten
      mouseOverPlayButton = true; 
      mouseOverSoundButton = false;
    } else if (checkIfMouseInRect(895, 593, 80, 80)) {
      mouseOverSoundButton = true;
      mouseOverPlayButton = false;
    } else {
      mouseOverSoundButton = mouseOverPlayButton = false;
    }
  }
}

// Funktion die schaut ob Mausanzeiger im Bereich des spezifischen Kreis ist
// Und falls dies der Fall ist wird das entsprechende Boolean auf true gesetzt.
void checkCircles() {
  if (currentPage == 2) {
    if (checkIfMouseInCircle(circleX1, circleY, circleSizeSmall)) {
      overCircle1 = true;
      overCircle2 = overCircle3 = overCircle4 = false;
    } else if (checkIfMouseInCircle(circleX2, circleY, circleSizeSmall)) {
      overCircle2 = true;
      overCircle1 = overCircle3 = overCircle4 = false;
    } else if (checkIfMouseInCircle(circleX3, circleY, circleSizeSmall)) {
      overCircle3 = true;
      overCircle1 = overCircle2 = overCircle4 = false;
    } else if (checkIfMouseInCircle(circleX4, circleY, circleSizeSmall)) {
      overCircle4 = true;
      overCircle1 = overCircle2 = overCircle3 = false;
    } else if (checkIfMouseInCircle(volSliderX, volSliderY, volRadius)) {
      canDragVolSlider = true;
    } else {
      overCircle1 = overCircle2 = overCircle3 = overCircle4 = false;
      canDragVolSlider = false;
    }
  } else if (currentPage == 3) { //Quiz
    //Alle Buttons auf False setzen, die hier nicht auftreten? Wegen Überlagerungen

    if (currentSubPageQuiz == 2) {
      if (checkIfMouseInCircle(circlePruefenX, circlePruefenY, circleSizeButton)) {
        print(" SET PRUEFEN TO TRUE");
        overButtonPruefen = true;
        overButtonNochmal = false;
      } else if (checkIfMouseInCircle(circleNochmalX, circleNochmalY, circleSizeButton)) {
        overButtonPruefen = false;
        overButtonNochmal = true;
      } else {
        overButtonPruefen = false;
        overButtonNochmal = false;
      }
    } else if (currentSubPageQuiz == 3) {
      if (checkIfMouseInCircle(circleNochmalX2, circleNochmalY2, circleSizeButton2)) {
        overButtonNochmal2 = true;
      } else {
        overButtonNochmal2 = false;
      }
    }
  }
}
// wenn audioslider bewegt wird, dann funktioniert Animation nicht mehr
