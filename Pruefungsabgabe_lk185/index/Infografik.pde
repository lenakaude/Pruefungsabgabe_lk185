int pagePosition = 1;

int circleX1 = 650 - 36;
int circleX2 = 650 - 12;
int circleX3 = 650 + 12;
int circleX4 = 650 + 36;
int circleY = 800 - 36;  // Position of circle button
int circleSizeSmall = 20;   // Diameter of circle
int circleSizeBig = 25;

boolean overCircle1, overCircle2, overCircle3, overCircle4;

int currentSubPage = 1;

void infografik () {
  fill(yellow);
  text(takt1Heading, 50, 50);
  text(textTakt1, 50, 50);
  
  //Balken Footer
  rectMode(CORNER);
  fill(yellow);
  rect(0,800-73,1300,73);
  
  drawCircleButtons();
  
  switch(currentSubPage) {
   case 1:
     tact1Page();
     break;
   case 2:
     tact2Page();
     break;
   case 3:
     tact3Page();
     break;
   case 4:
     tact4Page();
     break;
   default:
     break;
  }

  //textFont(fontHeading);
  //fill(dGrey);
  //text("1. TAKT", 93, 280);

  //rect ();
}

void drawCircleButtons(){
  fill(255);
  ellipse(circleX1, circleY, circleSizeSmall, circleSizeSmall);
  ellipse(circleX2, circleY, circleSizeSmall, circleSizeSmall);
  ellipse(circleX3, circleY, circleSizeSmall, circleSizeSmall);
  ellipse(circleX4, circleY, circleSizeSmall, circleSizeSmall);
  
  fill(0);
  //Großer Kreis für aktuelle Seite
  switch(currentSubPage){
    case 1:
      ellipse(circleX1, circleY, circleSizeBig, circleSizeBig);
      break;
    case 2:
      ellipse(circleX2, circleY, circleSizeBig, circleSizeBig);
      break;
    case 3:
      ellipse(circleX3, circleY, circleSizeBig, circleSizeBig);
      break;
    case 4:
      ellipse(circleX4, circleY, circleSizeBig, circleSizeBig);
      break;
    default:
     break;
  }
}

// Seitenposition
void positions() {

  switch(pagePosition) {
  case 1: 
    tact1Page();  
    break;
  case 2: 
    tact2Page();  
    break;
  case 3: 
    tact3Page(); 
    break;
  case 4: 
    tact4Page(); 
    break;
  default:             // Default executes if the case names different and nothing happpens
    break;
  }
}
