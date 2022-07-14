//Prüfungsabgabe lk185
//Vier-Takt-Motor

// loadig libaries
import processing.sound.*;
import controlP5.*;

//Variable für Library für Textboxen
ControlP5 controlp5;

//
Textfield question2;
Textfield question3;
// current Page
int currentPage = 1;

// variables test
PFont fontHeading; // heading
PFont fontHeadingSmall;
PFont fontText; // normal text
PFont fontNav; // text in navigation bar
PFont fontTextField;
PFont fontTextSmall;

//pixelDensity(displayDensity()); //???

// colors
color white = color (255);
color dGrey  = color (45, 41, 42);
color yellow  = color (223, 184, 67);
color bGrey  = color (246, 245, 240);
color black  = color (0);
color red = color (255, 90, 0);
color green = color (0, 255, 0);

// images
PImage iconFlag; // icon flags
PImage icon2; 
PImage grafik1;
PImage pfeilStart; // Button Startseite 
PImage timerIcon;
PImage soundIcon;
PImage soundIcon2;
PImage playIcon;
PImage tactBasic;
PImage iconExplosion;
PImage iconSpark;
PImage iconArrowUp;
PImage iconArrowDown;
PImage iconArrowLeft;
PImage iconArrowRight;

PImage motorBase;
PImage motorUp1;
PImage motorUp2;
PImage motorUp3;
PImage motorBase2;
PImage motorDown1;
PImage motorDown2;
PImage motorDown3;
PImage ventilLeft;
PImage ventilRight;

ArrayList<PImage> takt1Animation = new ArrayList();
ArrayList<PImage> takt2Animation = new ArrayList();
ArrayList<PImage> takt3Animation = new ArrayList();
ArrayList<PImage> takt4Animation = new ArrayList();


// varables 
// text
String nav1 = "START";
String nav2 = "INFOGRAFIK";
String nav3 = "QUIZ";
String los = "Los Geht's";

// buttons coordinates
int navY = 69;
int navWidth = 186;
int navHeight = 46;
int nav1X = 87;
int nav2X = 302;
int nav3X = 517;

int startPfeilButtonX = 800;
int startPfeilButtonY = 450;

// booleans buttons
boolean overNav1, overNav2, overNav3;

// audio
SoundFile audioFile1;
SoundFile audioFile2;
SoundFile audioFile3;
SoundFile audioFile4;

// audio volume settings
Sound volumeAudioFiles; //Volumen-Objekt
float amplitude=0.6; //Lautstärke zu Beginn aus
int soundDuration = 0; //für Ermitteln der Dauer der Audios // ok 

// Setup
void setup () {
  size(1300, 800);
  pixelDensity(displayDensity());
  background(white);

  // loading audio files 
  volumeAudioFiles= new Sound (this);
  audioFile1 = new SoundFile(this, "audio/tact1.mp3");
  audioFile2 = new SoundFile(this, "audio/tact2.mp3");
  audioFile3 = new SoundFile(this, "audio/tact3.mp3");
  audioFile4 = new SoundFile(this, "audio/tact4.mp3");

  audioFile1.amp(0.5);
  audioFile2.amp(0.5);
  audioFile3.amp(0.5);
  audioFile4.amp(0.5);


  //audioFile1.play();
  //file.loop();

  // fonts
  fontText=createFont("fonts/Dongle-Light.ttf", 80);
  fontTextSmall=createFont("fonts/Dongle-Light.ttf", 36);
  fontTextField=createFont("fonts/Dongle-Light.ttf", 25);
  fontNav=createFont("fonts/Dongle-Light.ttf", 55);//S font and textsize
  fontHeading=createFont("fonts/NeueMachina-Ultrabold.otf", 80);
  fontHeadingSmall=createFont("fonts/NeueMachina-Ultrabold.otf", 50);

  // loading images
  iconFlag=loadImage("media/twoFlags.png");
  pfeilStart=loadImage("media/pfeilStart.png");
  timerIcon=loadImage("media/timer.png");
  soundIcon=loadImage("media/sound.png");
  soundIcon2=loadImage("media/sound2.png");
  playIcon=loadImage("media/play.png");
  tactBasic=loadImage("media/platzhalter_kolben.png");
  iconExplosion=loadImage("media/explosion.png");
  iconSpark=loadImage("media/spark.png");
  iconArrowUp=loadImage("media/arrowUp.png");
  iconArrowDown=loadImage("media/arrowDown.png");
  iconArrowRight=loadImage("media/arrow_right.png");
  iconArrowLeft=loadImage("media/arrow_left.png");

  motorBase = loadImage("media/motor_base.png");
  motorUp1 = loadImage("media/motor_up1.png");
  motorUp2 = loadImage("media/motor_up2.png");
  motorUp3= loadImage("media/motor_up3.png");
  motorBase2= loadImage("media/motor_base_2.png");
  motorDown1= loadImage("media/motor_down1.png");
  motorDown2 = loadImage("media/motor_down2.png");
  motorDown3= loadImage("media/motor_down3.png");
  ventilLeft= loadImage("media/ventilLeft.png");
  ventilRight= loadImage("media/ventilRight.png");

  //setzen von Einzelbildern für die erste Animation
  takt1Animation.add(motorBase);
  takt1Animation.add(motorDown1);
  takt1Animation.add(motorDown2);
  takt1Animation.add(motorDown3);
  takt1Animation.add(motorBase2);

  takt2Animation.add(motorBase2);
  takt2Animation.add(motorUp1);
  takt2Animation.add(motorUp2);
  takt2Animation.add(motorUp3);
  takt2Animation.add(motorBase);

  takt3Animation.add(motorBase);
  takt3Animation.add(motorDown1);
  takt3Animation.add(motorDown2);
  takt3Animation.add(motorDown3);
  takt3Animation.add(motorBase2);

  takt4Animation.add(motorBase2);
  takt4Animation.add(motorUp1);
  takt4Animation.add(motorUp2);
  takt4Animation.add(motorUp3);
  takt4Animation.add(motorBase);



  // textfields quiz
  //Library Eingabefelder auf Quizseite
  controlp5 = new ControlP5(this);
  //Eingabefeld 1
  controlp5.addTextfield("question2").hide().setPosition(885, 439)
    .setSize(135, 32)
    .setFont(fontTextField)
    .setFocus(true)
    .setColor(black)
    .setColorCursor(black)
    .setColorBackground(white)
    .setColorActive(dGrey)
    .setCaptionLabel("")
    .setColorForeground(bGrey);

  question2 = controlp5.get(Textfield.class, "question2");

  //Eingabefeld 2
  controlp5.addTextfield("question3").hide().setPosition(927, 507)
    .setSize(135, 32)
    .setFont(fontTextField)
    .setFocus(true)
    .setColor(black)
    .setColorCursor(black)
    .setColorBackground(white)
    .setColorActive(dGrey)
    .setCaptionLabel("")
    .setColorForeground(bGrey);

  question3 = controlp5.get(Textfield.class, "question3");
}



// here starts the fun___________________________________________

void draw() {
  background(white);
  update(); // checks mouse position and sets the booleans true overNav1 etc.

  // Switch case; which page is currentPage 
  // if currentPage = 1. calling start() function
  switch(currentPage) {
  case 1: 
    startPage();  
    break;
  case 2: 
    infografikStartPage(); 
    break;
  case 3: 
    quizStartPage(); 
    break;
  default:             // default executes if the case name is different and nothing happpens
    break;
  }

  //gelbe Navigation
  stroke(yellow);
  strokeWeight(6);
  line(0, 118, 750, 118);


  // Navigationsmenü
  //Wenn Maus über Nav Button oder entsprechende Seite ausgewählt -> fill Rect bGrey 
  // sonst fill white
  noStroke();
  //rectMode(CENTER);

  //nav1 
  if (overNav1 || currentPage == 1) {
    fill(bGrey);
    rect(nav1X, navY, navWidth, navHeight);
    fill(white);
  }

  //nav2
  if (overNav2 || currentPage == 2) {
    fill(bGrey);
    rect(nav2X, navY, navWidth, navHeight);
    fill(white);
  }

  //nav3
  if (overNav3 || currentPage == 3) {
    fill(bGrey);
    rect(nav3X, navY, navWidth, navHeight);
    fill(white);
  }

  //Text
  textFont(fontNav);
  textAlign(CENTER);
  fill(dGrey);
  text(nav1, 180, 101);
  text(nav2, 375+20, 101);
  text(nav3, 570+40, 101);
  textAlign(CORNER);
}
