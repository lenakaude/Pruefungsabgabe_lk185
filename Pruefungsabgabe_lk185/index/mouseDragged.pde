boolean canDragVolSlider;

void mouseDragged(){
  //checken, ob wir auf dem Regler sind
  if(canDragVolSlider) {
    volSliderX = constrain(mouseX, 970, 1050);
    float newAmp = map(volSliderX, 970.0, 1050.0, 0.0, 1.0);
    audioFile1.amp(newAmp);
    audioFile2.amp(newAmp);
    audioFile3.amp(newAmp);
    audioFile4.amp(newAmp);
  }
}
