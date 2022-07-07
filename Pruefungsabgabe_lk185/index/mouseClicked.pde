//Processing Funktion nachdem mittels Mausklick ein Button gedrückt und wieder "losgelassen" wurde
//currentPage 
// Wenn die Booleans aus den Update Funktionen aus true gesetzt sind
// Dann wird ein Integer namens currentPafe ein Zahlenwert zugewiesen (1,2,3,4)
// Das benötige ich später für ein switch case


void mouseClicked() {
  //TODO: Speichern, ob wir gerade auf Quiz, Infografik o.ä. sind, damit überlappende Buttons
  // Nicht das if triggern, bevor wir es wollen
  if (overNav1) { // page start
    currentPage = 1;
  } else if (overNav2) { // page Infografik
    currentPage = 2;
  } else if (overNav3) { // page quiz 1
    currentPage = 3;
  } else if (overQuizStart) { // page quiz 1
    currentSubPageQuiz = 1;
    //quiz1Page();
  } else if (mouseOverA) { // checkbox 1
    selectedA = true;
    selectedB = false;
  } else if (mouseOverB) {
    selectedA = false;// checkbox 2
    selectedB = true;
  } else if (overCircle1) { // subpage tact 1
    currentSubPage = 1;
    currentAnimationStep = 0;
    animationRunning = false;
    stopAllAudioFiles();
  } else if (overCircle2) { // subpage tact 2
    currentSubPage = 2;
    currentAnimationStep = 0;
    animationRunning = false;
    stopAllAudioFiles();
  } else if (overCircle3) { // subpage tact 3
    currentSubPage = 3; 
    currentAnimationStep = 0;
    animationRunning = false;
    stopAllAudioFiles();
  } else if (overCircle4) { // subpage tact 4
    currentSubPage = 4;
    currentAnimationStep = 0;
    animationRunning = false;
    stopAllAudioFiles();
  } else if (overButtonPruefen) { // prüfen button
    selectedButtonP = true;
    selectedButtonN = false;
  } else if (overButtonNochmal) { // nochmal button
    selectedButtonN = true;
    selectedButtonP = false;
  } else if (mouseOverPlayButton) {
    currentAnimationStep = 0;
    lastMillisAnimChange = millis();
    animationRunning = true;
  } else if (mouseOverSoundButton) {
    switch(currentSubPage) {
    case 1:
      if (audioFile1.isPlaying()) {
        audioFile1.pause();
      } else {
        audioFile1.play();
        print("PLAY AUDIO FILE 1");
      }
      break;
    case 2:
      if (audioFile2.isPlaying()) {
        audioFile2.pause();
      } else {
        audioFile2.play();
      }
      break;
    case 3:
      if (audioFile3.isPlaying()) {
        audioFile3.pause();
      } else {
        audioFile3.play();
      }
      break;
    case 4:
      if (audioFile4.isPlaying()) {
        audioFile4.pause();
      } else {
        audioFile4.play();
      }
      break;
    default:
      break;
    }
  }
}
