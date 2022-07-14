// Infografik Start Page

//int pagePosition = 1; //?
int currentSubPage = 1; 

int circleX1 = 650 - 75; // needed in checkIfMouseInCircle
int circleX2 = 650 - 25;
int circleX3 = 650 + 25;
int circleX4 = 650 + 75;
int circleY = 800 - 40;  // position of circle button
int circleSizeSmall = 27;   // diameter of circle small
int circleSizeBig = 37; // diameter circle big

boolean overCircle1, overCircle2, overCircle3, overCircle4, mouseOverPlayButton, mouseOverSoundButton;
boolean mouseOverVolumeSlider;
int volSliderX = 1010; //Mitte des Balkens
int volSliderY = 623;
int volRadius = 20;

String caption1 = "Zündkerze";
String caption2 = "Einlassventil";
String caption3 = "Auslassventil";
String caption4 = "Brennraum";
String caption5 = "Kolben";
String caption6 = "Pleuelstange";
String caption7 = "Kurbelwelle";



// function displays page Infografik // includes elements that are on all pages tact 1-4
void infografikStartPage () {
  
  question2.hide();
  question3.hide();

  // footer yellow
  rectMode(CORNER);
  fill(yellow);
  rect(0,800-73,1300,73);
  
  // schwarze Linie
  stroke(black);
  strokeWeight(5);
  line(0,220,1301,220);
  noStroke();
  
  rectMode(CORNER);
  fill(bGrey);
  rect(847,190,950,500);
  
  stroke(white);
  noFill();
  rect(867, 210, 910, 460);
  rectMode(CORNER);
  
  
  //subtitles
  // Linien platzieren!!
  stroke(black);
  strokeWeight(1);
  fill(black);
  line(410, 295, 452, 315); // zünd
  line(370, 320, 390, 320); // ein links
  line(520, 320, 542, 320); // aus rechts
  line(365, 380, 405, 380); // brennraum
  line(500, 430, 530, 430); // kolben
  line(355, 455, 450, 480); // Pleuel
  line(500, 605, 545, 615); // Kurbel  
  
  textFont(fontTextSmall);
  textSize(30);
  textAlign(CENTER);
  text(caption1, 455, 290); // zünd
  text(caption2, 310, 330); // ein
  text(caption3, 600, 330); // aus
  text(caption4, 310, 380); // 
  text(caption5, 565, 440);
  text(caption6, 290, 455);
  text(caption7, 590, 630);
  textAlign(CORNER);
  
  // icons
  image(soundIcon, 895, 593);
  soundIcon.resize(60,55);
  
  //Lautstärkeregler
  fill(black);
  stroke(white);
  line(970, 623, 1050, 623);
  ellipse(volSliderX, volSliderY, volRadius, volRadius); //TODO: Flex Coords
  
  stroke(white);
  noFill();

  
  //image(soundIcon2,895, 520);
  //iconFlag.resize(360,205);
  
  image(playIcon, 93, 270);
  playIcon.resize(80,80);
  

  
  //siehe weiter unten
  drawCircleButtons(); // call function that draws circles in footer
  
  // switch case für die subpages tact 1-4
  switch(currentSubPage) {  // switchcase, for defining, which function is called and therefore which page is displayed
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

} // draw function end

void drawCircleButtons(){ // function that draws circles in footer (small and white)
  fill(white);
  ellipse(circleX1, circleY, circleSizeSmall, circleSizeSmall);
  ellipse(circleX2, circleY, circleSizeSmall, circleSizeSmall);
  ellipse(circleX3, circleY, circleSizeSmall, circleSizeSmall);
  ellipse(circleX4, circleY, circleSizeSmall, circleSizeSmall);
  
  fill(dGrey);
  // the circle on currentSubPage is bigger and grey
  switch(currentSubPage){
    case 1:
      ellipse(circleX1, circleY, circleSizeBig, circleSizeBig); // changing parameters for the bigger circle
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


// wozu haben wir das hier?
// page positions
/*void positions() { // function that calls and displays the subPages (tact 1- tact4)

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
  default:             // default executes if the case name is different and nothing happpens
    break;
  }
}*/
