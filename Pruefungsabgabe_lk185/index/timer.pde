int countdownSeconds = 25;
int curTimer = countdownSeconds; //Muss am Anfang gleich sein für Visu usw

//timer
  //Countdown - curTimer speichert aktuelle Sekunden, gerundet auf ganze Zahl für Visualisierung
  void timer(){
    
    if(curTimer > 0)
    curTimer = countdownSeconds - int(millis()/1000);
  fill(yellow);
  textAlign(CENTER);
  text(curTimer, 210, 330);
  fill(255);
  //if(curTimer == 0) {
    //finishGame();
  //}
  
  }
