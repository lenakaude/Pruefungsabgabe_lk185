//Funktion die checkt, ob Mouse über Checkboxen ist
//frägt für jeden Button ab
//If Mouse in Rectangle = true, dann wird zB. Boolean buttonUp auch auf true gesetzt.
void update () {
  checkRectangles();
  checkCircles();
}

// Funktion die schaut ob Mausanzeiger im Bereich des spezifischen Rechtseck ist
// Und falls dies der Fall ist wird das entsprechende Boolean auf true gesetzt.
void checkRectangles() {
  if (checkIfMouseInRect(nav1X, navY, navWidth, navHeight)) {
    overNav1 = true;
    overNav2 = overNav3 = false;
  } else if (checkIfMouseInRect(nav2X, navY, navWidth, navHeight) || 
    checkIfMouseInRect(pfeilButtonX, pfeilButtonY, pfeilStart.width, pfeilStart.height)) { //Button Pfeil auf Startseite, soll auch klickbar sein
    overNav2 = true;
    overNav1 = overNav3 = false;
  } else if (checkIfMouseInRect(nav3X, navY, navWidth, navHeight)) {
    overNav3 = true;
    overNav1 = overNav2 = false;
  } else if (checkIfMouseInRect(pfeilButtonX2, pfeilButtonY2, pfeilStart.width, pfeilStart.height)) { // hier fehlt noch was !!!
    overQuizStart = true;
    overNav1 = overNav2 = overNav3 = false;
  } else if (checkIfMouseInRect(checkXA, checkY, checkboxSize, checkboxSize)) { // checkboxen
    mouseOverA = true;
    mouseOverB = false;
  } else if (checkIfMouseInRect(checkXB, checkY, checkboxSize, checkboxSize)) { // checkboxen
    mouseOverA = false;
    mouseOverB = true;
  } else if (checkIfMouseInRect(93, 270, 80, 80)) { //Play Button bei Takten
    mouseOverPlayButton = true; 
    mouseOverSoundButton = false;
  } else if (checkIfMouseInRect(895, 593, 80, 80)) {
    mouseOverSoundButton = true;
    mouseOverPlayButton = false;
  } else {
    overNav1 = overNav2 = overNav3 = overQuizStart = false;
    mouseOverA = mouseOverB = false;
    mouseOverSoundButton = mouseOverPlayButton = false;
  }
}

// Funktion die schaut ob Mausanzeiger im Bereich des spezifischen Kreis ist
// Und falls dies der Fall ist wird das entsprechende Boolean auf true gesetzt.
void checkCircles() {
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
  } else if (checkIfMouseInCircle(circlePruefenX, circlePruefenY, circleSizeButton)) {
    overButtonPruefen = true;
    overButtonNochmal = false;
  } else if (checkIfMouseInCircle(circleNochmalX, circleNochmalY, circleSizeButton)) {
    overButtonPruefen = false;
    overButtonNochmal = true;
  } else if(checkIfMouseInCircle(volSliderX, volSliderY, volRadius)){
    canDragVolSlider = true;
} else {
  overCircle1 = overCircle2 = overCircle3 = overCircle4 = false;
  canDragVolSlider = false;
}
}

// wenn audioslider bewegt wird, dann funktioniert Animation nicht mehr
