//Prüfungsabgabe lk185
//Vier-Takt-Motor


//Library laden
import processing.sound.*;
import controlP5.*;

//Variablen für Schriften
PFont fontHeading;//Fließtext
PFont fontText;
PFont fontNav;
//pixelDensity(displayDensity()); //???

//Colors
color white = color (255);// weiss
color dGrey  = color (45, 41, 42);// dunkelgrau
color yellow  = color (223, 184, 67);// gelb
color bGrey  = color (246, 245, 240);// hellgrau
color black  = color (0);// schwarz

// Bilder
PImage foto; //Foto für Startbildschirm
PImage iconFlag; //Lautsprecher-Icon für Infobildschirm
PImage icon2; //Mute- Icon für Infobildschirm
PImage grafik1;
PImage pfeilStart; // Pfeil Startseite

//Aktuelle Seite
int currentPage = 1;

//Variablen
String nav1 = "START";
String nav2 = "INFOGRAFIK";
String nav3 = "QUIZ";
String los = "Los Geht's";

//Buttons Koordinaten
int navY = 70;
int navWidth = 186;
int navHeight = 46;
int nav1X = 87;
int nav2X = 302;
int nav3X = 517;

int pfeilButtonX = 800;
int pfeilButtonY = 450;

//Booleans Buttons
boolean overNav1, overNav2, overNav3;

// Setup
void setup () {
  size(1300, 800);
  background(white);



  // Schriftwarten einbinen
  fontText=createFont("fonts/Dongle-Light.ttf", 80);
  fontNav=createFont("fonts/Dongle-Light.ttf", 55);//Schriftfont und Größe zuordnen
  fontHeading=createFont("fonts/NeueMachina-Ultrabold.otf", 80);
  //fontHeading=createFont("Orbitron-VariableFont_wght.ttf", 80);

  //Bilder
  iconFlag=loadImage("media/twoFlags.png");
  pfeilStart=loadImage("media/pfeilStart.png");
}

//Audios einbinden

// Hier gehts los___________________________________________
void draw() {
  background(white);
  update(); //Checkt die Mausposition und setzt die Booleans overNav1 etc

  // Switch case; welche Zahl ist currentPage 
  // if currentPage = 1. dann wird start() aufgerufen
  switch(currentPage) {
  case 1: 
    startPage();  
    break;
  case 2: 
    infografik(); 
    break;
  case 3: 
    quiz1(); 
    break;
  default:             // Default executes if the case names different and nothing happpens
    break;
  }



  // Linie Navigation
  stroke(yellow);
  strokeWeight(4);
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
