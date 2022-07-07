
boolean mouseOverA;
boolean mouseOverB;
boolean selectedA;
boolean selectedB;
boolean selectedButton;

int checkboxSize  = 20;
int checkXA = 930;
int checkY = 347;
int checkXB = 1085;



void checkbox(){
  
  
  if (mouseOverA || selectedA && !selectedB) {
    stroke(black);
    fill(dGrey);
  } else {
    noFill();
  }
  
  //rect(checkXA, checkY, checkboxSize, checkboxSize);
  
  // Draw  checkbox 1
  stroke(black);
  //noFill();
  rect(checkXA, checkY, checkboxSize, checkboxSize);

  //Checkbox 2 / B
  if (mouseOverB || selectedB && !selectedA) {
    stroke(black);
    fill(dGrey);
  } else {
    noFill();
  }
  //rect(checkXB, checkY, checkboxSize, checkboxSize);

  
  // Draw  checkbox 2
  stroke(black);
  //noFill();
  rect(checkXB, checkY, checkboxSize, checkboxSize);
  
// Texte richtig oder falsch // für später...
  /*if (selectedButton) {
    // Wenn A die richtige Antwort ist --> Button wurde angeklickt und A selektiert -> richtig, sonst falsch
    if (selectedA) {
      fill(0, 255, 0);
      rect(checkXA, checkY, checkboxSize, checkboxSize);
      noFill();
    } else if (selectedB) {
      fill(255, 0, 0);
      rect(checkXA, checkY, checkboxSize, checkboxSize);
      noFill();
    } else {
      selectedButton = false;
    }
  }*/
  
  }
