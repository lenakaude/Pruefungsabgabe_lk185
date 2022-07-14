int countdownSeconds = 25;
int curTimer = countdownSeconds; //Muss am Anfang gleich sein für Visu usw
int lastTimer = countdownSeconds;

//timer
//Countdown - curTimer speichert aktuelle Sekunden, gerundet auf ganze Zahl für Visualisierung
void timer() {
  if (currentPage == 3 && currentSubPageQuiz == 2) {
    if (curTimer > 0)
      curTimer = lastTimer - int(millis()/1000);

    fill(yellow);
    textAlign(CENTER);
    text(curTimer, 210, 330);
    fill(255);
  } else {
    resetTimer();
  }
}

void resetTimer() {
  print("RESET TIMER");
  lastTimer = countdownSeconds + int(millis()/1000);
}
