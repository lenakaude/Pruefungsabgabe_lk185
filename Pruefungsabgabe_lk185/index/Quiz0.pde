
// ToDos here

///Quiz start - Zeit läuft, Punkte werden berechnet und angezeigt
// Rückmeldung zu richitgen und falschen Antworten geben
// Strafzeiten oder Punktabzug bei falschen Antworten
// Wenn die Zeit abgelaufen ist, wird das angezeigt
// Am Ende motivierenden Sceen, der Ergebnis anzeugt und eine motivierende Einschätzung gibt
// Quiz kann von vorne gestartet werden....


//Text Lückentext

boolean overQuizStart;
int currentSubPageQuiz = 0;
String quiz1Heading ="Lust auf ein\nkleines Quiz?";

// Pfeil Button auf Quiz Page
int pfeilButtonX2 = 530;
int pfeilButtonY2 = 430;


void quizStartPage () {
  
  // Elemente die auf allen Quizpages zu finden sind
  // footer yellow
  rectMode(CORNER);
  fill(yellow);
  rect(0,800-73,1300,73);
  

 // Swtichcase für die unterschiedlichen Quiz Pages
 //positionsQuiz(); // brauche ich doch nicht, weil das switch case in der Allgemeinen Quiz Start Page Funktion drin ist...
 // function that calls and displays the subPages (tact 1- tact4)

  switch(currentSubPageQuiz) {
  case 0:
    quiz1Page();
    break;
  case 1: 
    quiz2Page();
    break;
  case 2: 
    quiz3Page(); 
    break;
  default:             // default executes if the case name is different and nothing happpens
    break;
  }
}





  


 
