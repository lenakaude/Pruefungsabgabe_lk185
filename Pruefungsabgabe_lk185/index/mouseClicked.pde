//Processing Funktion nachdem mittels Mausklick ein Button gedrückt und wieder "losgelassen" wurde

// currentPage 
void mouseClicked() {
  if(overNav1){
    currentPage = 1;
  } else if(overNav2){
    currentPage = 2;
  } else if(overNav3){
    currentPage = 3;
  } else if(overCircle1){
   currentSubPage = 1; 
  } else if(overCircle2){
   currentSubPage = 2; 
  } else if(overCircle3){
   currentSubPage = 3; 
  } else if(overCircle4){
   currentSubPage = 4; 
  }
 
}
