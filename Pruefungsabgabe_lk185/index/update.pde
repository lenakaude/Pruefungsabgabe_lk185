//Funktion die checkt, ob Mouse über Checkboxen ist
//frägt für jeden Button ab
//If Mouse in Rectangle = true, dann wird zB. Boolean buttonUp auch auf true gesetzt.
void update () {
  checkRectangles();
  checkCircles();
}

void checkRectangles(){
  if (checkIfMouseInRect(nav1X, navY, navWidth, navHeight)) {
    overNav1 = true;
    overNav2 = overNav3 = false;
  } else if (checkIfMouseInRect(nav2X, navY, navWidth, navHeight) || 
    checkIfMouseInRect(pfeilButtonX, pfeilButtonY, pfeilStart.width, pfeilStart.height)) { //Button Pfeil 
    overNav2 = true;
    overNav1 = overNav3 = false;
  } else if (checkIfMouseInRect(nav3X, navY, navWidth, navHeight)) {
    overNav3 = true;
    overNav1 = overNav2 = false;
  } else {
    overNav1 = overNav2 = overNav3 = false;
  }
}

void checkCircles(){
  if(checkIfMouseInCircle(circleX1, circleY, circleSizeSmall)){
    overCircle1 = true;
    overCircle2 = overCircle3 = overCircle4 = false;
  } else if(checkIfMouseInCircle(circleX2, circleY, circleSizeSmall)){
    overCircle2 = true;
    overCircle1 = overCircle3 = overCircle4 = false;
  } else if(checkIfMouseInCircle(circleX3, circleY, circleSizeSmall)){
    overCircle3 = true;
    overCircle1 = overCircle2 = overCircle4 = false;
  } else if(checkIfMouseInCircle(circleX4, circleY, circleSizeSmall)){
    overCircle4 = true;
    overCircle1 = overCircle2 = overCircle3 = false;
  } else {
    overCircle1 = overCircle2 = overCircle3 = overCircle4 = false;
  }
}
