// Quelle https://processing.org/examples/button.html
// Funktion die berechnet, ob sich die Maus innerhalb des Kreises bewegt, also innerhalb der Kreise für den Seitenwechsel
boolean checkIfMouseInCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
